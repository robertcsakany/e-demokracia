//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.vote_definitions.table;

class AdminAdminVoteDefinitionsTablePageStore extends _AdminAdminVoteDefinitionsTablePageStore with _$AdminAdminVoteDefinitionsTablePageStore {}

abstract class _AdminAdminVoteDefinitionsTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;

  _AdminAdminVoteDefinitionsTablePageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminVoteDefinitionStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
    FilterStore(attributeName: 'created', attributeLabel: 'Created', filterType: FilterType.dateTime),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
    FilterStore(attributeName: 'status', attributeLabel: 'Status', filterType: FilterType.enumeration, enumValues: EdemokraciaVoteStatus.values),
    FilterStore(attributeName: 'closeAt', attributeLabel: 'CloseAt', filterType: FilterType.dateTime),
    FilterStore(attributeName: 'isRatingType', attributeLabel: 'IsRatingType', filterType: FilterType.trinaryLogic),
    FilterStore(attributeName: 'isSelectAnswerType', attributeLabel: 'IsSelectAnswerType', filterType: FilterType.trinaryLogic),
    FilterStore(attributeName: 'isYesNoAbstainType', attributeLabel: 'IsYesNoAbstainType', filterType: FilterType.trinaryLogic),
    FilterStore(attributeName: 'isYesNoType', attributeLabel: 'IsYesNoType', filterType: FilterType.trinaryLogic),
  ];

  final String mask = '{title,created,description,status,closeAt,isRatingType,isSelectAnswerType,isYesNoAbstainType,isYesNoType}';

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

  int voteDefinitionsQueryLimit = (12.0 - 2).round();

  @observable
  List<AdminVoteDefinitionStore> voteDefinitionsStoreList = ObservableList<AdminVoteDefinitionStore>();

  @observable
  bool nextButtonEnable = false;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * voteDefinitionsQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int voteDefinitionsSortColumnIndex;

  @observable
  String voteDefinitionsSortColumnName;

  @observable
  bool voteDefinitionsSortAsc;

  @action
  void voteDefinitionsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (voteDefinitionsSortColumnIndex != sortColumnIndex) {
      voteDefinitionsSortAsc = true;
    } else {
      voteDefinitionsSortAsc = !voteDefinitionsSortAsc;
    }

    voteDefinitionsSortColumnIndex = sortColumnIndex;
    voteDefinitionsSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminAdminVoteDefinitionsTableVoteDefinitions',
      sortColumnIndex: voteDefinitionsSortColumnIndex,
      sortColumnName: voteDefinitionsSortColumnName,
      sortAsc: voteDefinitionsSortAsc,
    );
    getVoteDefinitions();
  }

  @observable
  ObservableFuture adminVoteDefinitionsStoreFuture;

  @action
  Future<List<AdminVoteDefinitionStore>> getVoteDefinitions({int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? voteDefinitionsQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    adminVoteDefinitionsStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminVoteDefinitionsList(
      sortColumn: voteDefinitionsSortColumnName,
      sortAscending: voteDefinitionsSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? voteDefinitionsStoreList.last : voteDefinitionsStoreList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminVoteDefinitionStore> nextItemsList = await adminVoteDefinitionsStoreFuture;
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

    voteDefinitionsStoreList.clear();
    voteDefinitionsStoreList.addAll(nextItemsList);

    return voteDefinitionsStoreList;
  }

  // VoteDefinitions range actions

  @action
  Future<void> deleteVoteDefinition(AdminVoteDefinitionStore targetStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionDelete(targetStore);
    getVoteDefinitions();
  }

  @action
  Future<void> updateVoteDefinition(AdminVoteDefinitionStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionUpdate(newTargetStore);
    await getVoteDefinitions();
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteYesNo(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteYesNoAbstain(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteSelectAnswer(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteRating(RatingVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteRating(targetStore, ownerStore);
  }

  int voteSelectAnswerQueryLimit = (2.0 - 2).round();

  // VoteSelectAnswer embedded table paging

  // Input range actions

  @observable
  ObservableFuture voteDefinitionVoteSelectAnswerStoreRangeFuture;

  @observable
  int voteSelectAnswerSortColumnIndexRange;

  @observable
  String voteSelectAnswerSortColumnNameRange;

  @observable
  bool voteSelectAnswerSortAscRange;

  @observable
  List<SelectAnswerVoteSelectionStore> voteSelectAnswerStoreRangeList = ObservableList<SelectAnswerVoteSelectionStore>();

  @computed
  int get voteSelectAnswerTableForRangeItemsRangeStart => nextPageCounterForVoteSelectAnswerRange * voteSelectAnswerQueryLimit + 1;

  @computed
  int get voteSelectAnswerTableForRangeItemsRangeEnd => voteSelectAnswerTableForRangeItemsRangeStart - 1 + voteSelectAnswerStoreRangeList.length;

  @observable
  bool nextButtonEnableForVoteSelectAnswerRange = false;

  @observable
  int nextPageCounterForVoteSelectAnswerRange = 0;

  @computed
  bool get previousButtonEnableForVoteSelectAnswerRange => nextPageCounterForVoteSelectAnswerRange > 0;

  @action
  void voteSelectAnswerSetSortRange(AdminVoteDefinitionStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (voteSelectAnswerSortColumnIndexRange != sortColumnIndex) {
      voteSelectAnswerSortAscRange = true;
    } else {
      voteSelectAnswerSortAscRange = !voteSelectAnswerSortAscRange;
    }

    voteSelectAnswerSortColumnIndexRange = sortColumnIndex;
    voteSelectAnswerSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminVoteDefinitionsTableVoteSelectAnswerRange',
      sortColumnIndex: voteSelectAnswerSortColumnIndexRange,
      sortColumnName: voteSelectAnswerSortColumnNameRange,
      sortAsc: voteSelectAnswerSortAscRange,
    );

    getRangeForVoteSelectAnswer(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<SelectAnswerVoteSelectionStore>> getRangeForVoteSelectAnswer(AdminVoteDefinitionStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? voteSelectAnswerQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForVoteSelectAnswerRange = 0;
    }

    voteDefinitionVoteSelectAnswerStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminVoteDefinitionRangeOfVoteSelectAnswer(
      ownerStore,
      sortColumn: voteSelectAnswerSortColumnNameRange,
      sortAscending: voteSelectAnswerSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? voteSelectAnswerStoreRangeList.last : voteSelectAnswerStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<SelectAnswerVoteSelectionStore> nextItemsList = await voteDefinitionVoteSelectAnswerStoreRangeFuture;
    nextButtonEnableForVoteSelectAnswerRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForVoteSelectAnswerRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForVoteSelectAnswerRange++;
      } else {
        nextPageCounterForVoteSelectAnswerRange--;
      }
    }

    voteSelectAnswerStoreRangeList.clear();
    voteSelectAnswerStoreRangeList.addAll(nextItemsList);
    return voteSelectAnswerStoreRangeList;
  }
}

class AdminAdminVoteDefinitionsTablePage extends StatefulWidget {
  static const String title = 'TransferObject Table';

  @override
  State<StatefulWidget> createState() => _AdminAdminVoteDefinitionsTablePageState();
}

class _AdminAdminVoteDefinitionsTablePageState extends State<AdminAdminVoteDefinitionsTablePage> {
  final tableService = locator<TableService>();
  final AdminAdminVoteDefinitionsTablePageStore pageStore = AdminAdminVoteDefinitionsTablePageStore();
  final AdminAdminVoteDefinitionsTableConfig pageConfig = AdminAdminVoteDefinitionsTableConfig();
  AdminAdminVoteDefinitionsTablePageActions pageActions;

  _AdminAdminVoteDefinitionsTablePageState() {
    if (pageConfig.voteDefinitionsTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.voteDefinitionsTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.voteDefinitionsTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.voteDefinitionsTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminAdminVoteDefinitionsTableVoteDefinitions', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.voteDefinitionsTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings voteDefinitionsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminVoteDefinitionsTableVoteDefinitions',
      sortColumnIndex: pageConfig.voteDefinitionsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.voteDefinitionsTableConfig.sortColumnName,
      sortAsc: pageConfig.voteDefinitionsTableConfig.sortAsc,
    );

    pageStore.voteDefinitionsSortColumnIndex = voteDefinitionsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.voteDefinitionsSortColumnName = voteDefinitionsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.voteDefinitionsSortAsc = voteDefinitionsSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminVoteDefinitionsTablePageActions(navigation, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminVoteDefinitionsTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getVoteDefinitions();
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminAdminVoteDefinitionsTableMobilePage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminAdminVoteDefinitionsTableTabletPage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminAdminVoteDefinitionsTableDesktopPage(context, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminAdminVoteDefinitionsTableDesktopPage(context, pageStore, pageConfig);
    });

    return layout;
  }
}
