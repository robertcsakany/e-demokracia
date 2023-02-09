//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.issues.table;

class AdminAdminIssuesTablePageStore extends _AdminAdminIssuesTablePageStore with _$AdminAdminIssuesTablePageStore {}

abstract class _AdminAdminIssuesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;

  _AdminAdminIssuesTablePageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminIssueStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
    FilterStore(attributeName: 'status', attributeLabel: 'Status', filterType: FilterType.enumeration, enumValues: EdemokraciaIssueStatus.values),
    FilterStore(attributeName: 'created', attributeLabel: 'Created', filterType: FilterType.dateTime),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
    FilterStore(attributeName: 'representation', attributeLabel: 'Representation', filterType: FilterType.string),
  ];

  final String mask = '{title,status,created,description,representation}';

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

  int issuesQueryLimit = (12.0 - 2).round();

  @observable
  List<AdminIssueStore> issuesStoreList = ObservableList<AdminIssueStore>();

  @observable
  bool nextButtonEnable = false;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * issuesQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int issuesSortColumnIndex;

  @observable
  String issuesSortColumnName;

  @observable
  bool issuesSortAsc;

  @action
  void issuesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (issuesSortColumnIndex != sortColumnIndex) {
      issuesSortAsc = true;
    } else {
      issuesSortAsc = !issuesSortAsc;
    }

    issuesSortColumnIndex = sortColumnIndex;
    issuesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesTableIssues',
      sortColumnIndex: issuesSortColumnIndex,
      sortColumnName: issuesSortColumnName,
      sortAsc: issuesSortAsc,
    );
    getIssues();
  }

  @observable
  ObservableFuture adminIssuesStoreFuture;

  @action
  Future<List<AdminIssueStore>> getIssues({int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? issuesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    adminIssuesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminIssuesList(
      sortColumn: issuesSortColumnName,
      sortAscending: issuesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? issuesStoreList.last : issuesStoreList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminIssueStore> nextItemsList = await adminIssuesStoreFuture;
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

    issuesStoreList.clear();
    issuesStoreList.addAll(nextItemsList);

    return issuesStoreList;
  }

  // Issues range actions

  @action
  Future<void> deleteIssue(AdminIssueStore targetStore) async {
    await _actorRepository.edemokraciaAdminIssueDelete(targetStore);
    getIssues();
  }

  @action
  Future<void> updateIssue(AdminIssueStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminIssueUpdate(newTargetStore);
    await getIssues();
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS
  @action
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) async {
    return await _actorRepository.edemokraciaAdminIssueCreateDebate(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueCreateComment(targetStore, ownerStore);
  }
}

class AdminAdminIssuesTablePage extends StatefulWidget {
  static const String title = 'Issues';

  @override
  State<StatefulWidget> createState() => _AdminAdminIssuesTablePageState();
}

class _AdminAdminIssuesTablePageState extends State<AdminAdminIssuesTablePage> {
  final tableService = locator<TableService>();
  final AdminAdminIssuesTablePageStore pageStore = AdminAdminIssuesTablePageStore();
  final AdminAdminIssuesTableConfig pageConfig = AdminAdminIssuesTableConfig();
  AdminAdminIssuesTablePageActions pageActions;

  _AdminAdminIssuesTablePageState() {
    if (pageConfig.issuesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.issuesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.issuesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.issuesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminAdminIssuesTableIssues', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.issuesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings issuesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesTableIssues',
      sortColumnIndex: pageConfig.issuesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.issuesTableConfig.sortColumnName,
      sortAsc: pageConfig.issuesTableConfig.sortAsc,
    );

    pageStore.issuesSortColumnIndex = issuesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.issuesSortColumnName = issuesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.issuesSortAsc = issuesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminIssuesTablePageActions(navigation, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminIssuesTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getIssues();
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminAdminIssuesTableMobilePage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminAdminIssuesTableTabletPage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminAdminIssuesTableDesktopPage(context, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminAdminIssuesTableDesktopPage(context, pageStore, pageConfig);
    });

    return layout;
  }
}
