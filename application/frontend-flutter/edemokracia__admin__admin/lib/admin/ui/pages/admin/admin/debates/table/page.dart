//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.debates.table;

class AdminAdminDebatesTablePageStore extends _AdminAdminDebatesTablePageStore with _$AdminAdminDebatesTablePageStore {}

abstract class _AdminAdminDebatesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;

  _AdminAdminDebatesTablePageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminDebateStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'closeAt', attributeLabel: 'CloseAt', filterType: FilterType.dateTime),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
    FilterStore(attributeName: 'status', attributeLabel: 'Status', filterType: FilterType.enumeration, enumValues: EdemokraciaDebateStatus.values),
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
  ];

  final String mask = '{closeAt,description,status,title}';

  bool filtersHorizontalOrientation = true;

  void setFiltersHorizontalOrientation(bool horizontal) {
    filtersHorizontalOrientation = horizontal;
  }

  @observable
  int pageMaxCol = 12;

  @action
  void setPageMaxCol(int maxCol) {
    pageMaxCol = maxCol;
  }

  @computed
  int get getPlusRowSize {
    if (availableFilterList.isEmpty) {
      return 0;
    }

    if (!filtersHorizontalOrientation) {
      return availableFilterList.length;
    }

    if (availableFilterList.length % (pageMaxCol / 4) == 0) {
      return (availableFilterList.length / (pageMaxCol / 4)).round();
    } else {
      return (availableFilterList.length / (pageMaxCol / 4)).truncate() + 1;
    }
  }

  @observable
  ObservableList<FilterStore> availableFilterList = <FilterStore>[].asObservable();

  @action
  void addNewFilter(FilterStore newFilterStore) => availableFilterList.add(FilterStore.clone(newFilterStore));

  int debatesQueryLimit = (12.0 - 2).round();

  @observable
  List<AdminDebateStore> debatesStoreList = ObservableList<AdminDebateStore>();

  @observable
  bool nextButtonEnable = false;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * debatesQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int debatesSortColumnIndex;

  @observable
  String debatesSortColumnName;

  @observable
  bool debatesSortAsc;

  @action
  void debatesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (debatesSortColumnIndex != sortColumnIndex) {
      debatesSortAsc = true;
    } else {
      debatesSortAsc = !debatesSortAsc;
    }

    debatesSortColumnIndex = sortColumnIndex;
    debatesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminAdminDebatesTableDebates',
      sortColumnIndex: debatesSortColumnIndex,
      sortColumnName: debatesSortColumnName,
      sortAsc: debatesSortAsc,
    );
    getDebates();
  }

  @observable
  ObservableFuture adminDebatesStoreFuture;

  @action
  Future<List<AdminDebateStore>> getDebates({int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? debatesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    adminDebatesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminDebatesList(
      sortColumn: debatesSortColumnName,
      sortAscending: debatesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? debatesStoreList.last : debatesStoreList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminDebateStore> nextItemsList = await adminDebatesStoreFuture;
    nextButtonEnable = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnable && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounter++;
      } else {
        nextPageCounter--;
      }
    }

    debatesStoreList.clear();
    debatesStoreList.addAll(nextItemsList);

    return debatesStoreList;
  }

  // Debates range actions

  @action
  Future<void> deleteDebate(AdminDebateStore targetStore) async {
    await _actorRepository.edemokraciaAdminDebateDelete(targetStore);
    getDebates();
  }

  @action
  Future<void> updateDebate(AdminDebateStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminDebateUpdate(newTargetStore);
    await getDebates();
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDebateCreateComment(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore);
  }

  @action
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) async {
    return await _actorRepository.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore);
  }
}

class AdminAdminDebatesTablePage extends StatefulWidget {
  static const String title = 'Debates';

  @override
  State<StatefulWidget> createState() => _AdminAdminDebatesTablePageState();
}

class _AdminAdminDebatesTablePageState extends State<AdminAdminDebatesTablePage> {
  final tableService = locator<TableService>();
  final AdminAdminDebatesTablePageStore pageStore = AdminAdminDebatesTablePageStore();
  final AdminAdminDebatesTableConfig pageConfig = AdminAdminDebatesTableConfig();
  AdminAdminDebatesTablePageActions pageActions;

  _AdminAdminDebatesTablePageState() {
    if (pageConfig.debatesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.debatesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.debatesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.debatesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminAdminDebatesTableDebates', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.debatesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings debatesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminDebatesTableDebates',
      sortColumnIndex: pageConfig.debatesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.debatesTableConfig.sortColumnName,
      sortAsc: pageConfig.debatesTableConfig.sortAsc,
    );

    pageStore.debatesSortColumnIndex = debatesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.debatesSortColumnName = debatesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.debatesSortAsc = debatesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminDebatesTablePageActions(navigation, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminDebatesTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getDebates();
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminAdminDebatesTableMobilePage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminAdminDebatesTableTabletPage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminAdminDebatesTableDesktopPage(context, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminAdminDebatesTableDesktopPage(context, pageStore, pageConfig);
    });

    return layout;
  }
}
