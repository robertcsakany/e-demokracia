//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.dashboardhome.view;

class AdminAdminDashboardhomeViewPageStore extends _AdminAdminDashboardhomeViewPageStore with _$AdminAdminDashboardhomeViewPageStore {}

abstract class _AdminAdminDashboardhomeViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState createIssueButtonLoadingState;
  LoadingState createUserButtonLoadingState;

  LoadingState refreshActionLoadingState;

  _AdminAdminDashboardhomeViewPageStore() {
    createIssueButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    createUserButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminDashboardhomeViewConfig pageConfig) {
    if (targetStore.debates != null) {
      var dataInfo = EdemokraciaAdminAdminDashboardhomeViewDebatesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.debates.sort(TableUtility.getSortComparator(debatesSortColumnIndex, debatesSortAsc, dataInfo));
    }
    if (targetStore.issues != null) {
      var dataInfo = EdemokraciaAdminAdminDashboardhomeViewIssuesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.issues.sort(TableUtility.getSortComparator(issuesSortColumnIndex, issuesSortAsc, dataInfo));
    }
  }

  @observable
  AdminDashboardStore targetStore;

  @action
  Future<void> refreshDashboard(AdminDashboardStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminDashboardGetByIdentifier(
      targetStore,
      mask: '{welcome,issues{title,created,status},debates{title,closeAt,status}}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int debatesQueryLimit = (6.0 - 2).round();

  // Debates embedded table paging

  @computed
  int get debatesTableItemsRangeStart => debatesTablePageNumber * debatesQueryLimit + 1;

  @computed
  int get debatesTableItemsRangeEnd => debatesTableItemsRangeStart - 1 + debatesTablePagingList.length;

  @observable
  int debatesTablePageNumber = 0;

  @computed
  bool get debatesTablePreviousEnable => debatesTablePageNumber > 0;

  @computed
  bool get debatesTableNextEnable => (debatesTablePageNumber * debatesQueryLimit + debatesQueryLimit) < targetStore.debates.length;

  @action
  void debatesTableNextPage() {
    if (debatesTableNextEnable) {
      debatesTablePageNumber++;
    }
  }

  @action
  void debatesTablePreviousPage() {
    if (debatesTablePreviousEnable) {
      debatesTablePageNumber--;
    }
  }

  @computed
  List<AdminDebateStore> get debatesTablePagingList {
    int subListStart = debatesTablePageNumber * debatesQueryLimit;
    int subListEnd;
    if (debatesTableNextEnable) {
      subListEnd = subListStart + debatesQueryLimit;
    } else {
      subListEnd = targetStore.debates.length;
    }
    return targetStore.debates.sublist(subListStart, subListEnd);
  }

  int issuesQueryLimit = (6.0 - 2).round();

  // Issues embedded table paging

  @computed
  int get issuesTableItemsRangeStart => issuesTablePageNumber * issuesQueryLimit + 1;

  @computed
  int get issuesTableItemsRangeEnd => issuesTableItemsRangeStart - 1 + issuesTablePagingList.length;

  @observable
  int issuesTablePageNumber = 0;

  @computed
  bool get issuesTablePreviousEnable => issuesTablePageNumber > 0;

  @computed
  bool get issuesTableNextEnable => (issuesTablePageNumber * issuesQueryLimit + issuesQueryLimit) < targetStore.issues.length;

  @action
  void issuesTableNextPage() {
    if (issuesTableNextEnable) {
      issuesTablePageNumber++;
    }
  }

  @action
  void issuesTablePreviousPage() {
    if (issuesTablePreviousEnable) {
      issuesTablePageNumber--;
    }
  }

  @computed
  List<AdminIssueStore> get issuesTablePagingList {
    int subListStart = issuesTablePageNumber * issuesQueryLimit;
    int subListEnd;
    if (issuesTableNextEnable) {
      subListEnd = subListStart + issuesQueryLimit;
    } else {
      subListEnd = targetStore.issues.length;
    }
    return targetStore.issues.sublist(subListStart, subListEnd);
  }

  // Debates embedded table order

  @observable
  int debatesSortColumnIndex;

  @observable
  String debatesSortColumnName;

  @observable
  bool debatesSortAsc;

  @observable
  Comparator debatesSortCompare;

  @action
  void debatesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminDashboardStore store) {
    if (debatesSortColumnIndex != sortColumnIndex) {
      debatesSortAsc = true;
    } else {
      debatesSortAsc = !debatesSortAsc;
    }
    debatesSortColumnIndex = sortColumnIndex;
    debatesSortColumnName = sortColumnName;
    debatesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminDashboardhomeViewDebates',
      sortColumnIndex: debatesSortColumnIndex,
      sortColumnName: debatesSortColumnName,
      sortAsc: debatesSortAsc,
    );

    store.debates.sort(sortCompare);
  }

  // Debates aggregation actions

  @observable
  ObservableFuture dashboardDebatesStoreFuture;

  // Issues embedded table order

  @observable
  int issuesSortColumnIndex;

  @observable
  String issuesSortColumnName;

  @observable
  bool issuesSortAsc;

  @observable
  Comparator issuesSortCompare;

  @action
  void issuesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminDashboardStore store) {
    if (issuesSortColumnIndex != sortColumnIndex) {
      issuesSortAsc = true;
    } else {
      issuesSortAsc = !issuesSortAsc;
    }
    issuesSortColumnIndex = sortColumnIndex;
    issuesSortColumnName = sortColumnName;
    issuesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminDashboardhomeViewIssues',
      sortColumnIndex: issuesSortColumnIndex,
      sortColumnName: issuesSortColumnName,
      sortAsc: issuesSortAsc,
    );

    store.issues.sort(sortCompare);
  }

  // Issues aggregation actions

  @observable
  ObservableFuture dashboardIssuesStoreFuture;

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDebateCreateComment(targetStore, ownerStore);
  }

  @action
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) async {
    return await _actorRepository.edemokraciaAdminIssueCreateDebate(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore);
  }

  @action
  Future<AdminUserStore> edemokraciaAdminDashboardCreateUser(
    AdminCreateUserInputStore targetStore,
  ) async {
    return await _actorRepository.edemokraciaAdminDashboardCreateUser(
      targetStore,
    );
  }

  @action
  Future<AdminIssueStore> edemokraciaAdminDashboardCreateIssue(
    AdminCreateIssueInputStore targetStore,
  ) async {
    return await _actorRepository.edemokraciaAdminDashboardCreateIssue(
      targetStore,
    );
  }

  @action
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueCreateComment(targetStore, ownerStore);
  }

  @action
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) async {
    return await _actorRepository.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore);
  }
}

class AdminAdminDashboardhomeViewPage extends StatefulWidget {
  static const String title = 'Dashboard';

  final AdminDashboardStore targetStore;

  const AdminAdminDashboardhomeViewPage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminAdminDashboardhomeViewPageState(targetStore: targetStore);
}

class _AdminAdminDashboardhomeViewPageState extends State<AdminAdminDashboardhomeViewPage> {
  AdminDashboardStore targetStore;

  final tableService = locator<TableService>();
  final AdminAdminDashboardhomeViewPageStore pageStore = AdminAdminDashboardhomeViewPageStore();
  final AdminAdminDashboardhomeViewConfig pageConfig = AdminAdminDashboardhomeViewConfig();
  AdminAdminDashboardhomeViewPageActions pageActions;

  _AdminAdminDashboardhomeViewPageState({@required this.targetStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings debatesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminDashboardhomeViewDebates',
      sortColumnIndex: pageConfig.debatesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.debatesTableConfig.sortColumnName,
      sortAsc: pageConfig.debatesTableConfig.sortAsc,
    );

    pageStore.debatesSortColumnIndex = debatesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.debatesSortColumnName = debatesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.debatesSortAsc = debatesSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings issuesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminDashboardhomeViewIssues',
      sortColumnIndex: pageConfig.issuesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.issuesTableConfig.sortColumnName,
      sortAsc: pageConfig.issuesTableConfig.sortAsc,
    );

    pageStore.issuesSortColumnIndex = issuesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.issuesSortColumnName = issuesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.issuesSortAsc = issuesSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminAdminDashboardhomeViewPageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshDashboard(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminDashboardhomeViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminDashboardhomeViewMobilePage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminDashboardhomeViewTabletPage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminDashboardhomeViewDesktopPage(context, targetStore, pageStore, pageConfig);
      }
      return getAdminAdminDashboardhomeViewDesktopPage(context, targetStore, pageStore, pageConfig);
    });

    return layout;
  }
}
