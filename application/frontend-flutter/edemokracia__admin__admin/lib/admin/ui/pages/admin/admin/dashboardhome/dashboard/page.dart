//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.dashboardhome.dashboard;

class AdminAdminDashboardhomeDashboardPageStore extends _AdminAdminDashboardhomeDashboardPageStore with _$AdminAdminDashboardhomeDashboardPageStore {}

abstract class _AdminAdminDashboardhomeDashboardPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState createIssueButtonLoadingState;
  LoadingState createUserButtonLoadingState;

  LoadingState refreshActionLoadingState;

  _AdminAdminDashboardhomeDashboardPageStore() {
    createIssueButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    createUserButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminDashboardhomeDashboardConfig pageConfig) {
    if (targetStore.debates != null) {
      var dataInfo = EdemokraciaAdminAdminDashboardhomeDashboardDebatesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.debates.sort(TableUtility.getSortComparator(debatesSortColumnIndex, debatesSortAsc, dataInfo));
    }
    if (targetStore.issues != null) {
      var dataInfo = EdemokraciaAdminAdminDashboardhomeDashboardIssuesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.issues.sort(TableUtility.getSortComparator(issuesSortColumnIndex, issuesSortAsc, dataInfo));
    }
  }

  @observable
  AdminDashboardStore targetStore;

  @observable
  ObservableFuture dashboardhomeStoreFuture;

  @observable
  FutureStatus getterStatus = FutureStatus.pending;

  @action
  void getterStatusSetFulfilled() {
    if (dashboardhomeStoreFuture.status == FutureStatus.fulfilled) {
      getterStatus = FutureStatus.fulfilled;
    }
  }

  @action
  void getterStatusSetRejected() {
    getterStatus = FutureStatus.rejected;
  }

  @action
  Future<AdminDashboardStore> getDashboardhome() async {
    dashboardhomeStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminDashboardhomeGet(
      mask: '{welcome,issues{title,created,status},debates{title,closeAt,status}}',
    ));
    return await dashboardhomeStoreFuture;
  }

  @action
  Future<void> getSingleAssociationsForDashboardView(AdminDashboardStore targetStore) async {}

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
      'EdemokraciaAdminAdminDashboardhomeDashboardDebates',
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
      'EdemokraciaAdminAdminDashboardhomeDashboardIssues',
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

class AdminAdminDashboardhomeDashboardPage extends StatefulWidget {
  static const String title = 'Dashboard';

  @override
  State<StatefulWidget> createState() => _AdminAdminDashboardhomeDashboardPageState();
}

class _AdminAdminDashboardhomeDashboardPageState extends State<AdminAdminDashboardhomeDashboardPage> {
  final tableService = locator<TableService>();
  final AdminAdminDashboardhomeDashboardPageStore pageStore = AdminAdminDashboardhomeDashboardPageStore();
  final AdminAdminDashboardhomeDashboardConfig pageConfig = AdminAdminDashboardhomeDashboardConfig();
  AdminAdminDashboardhomeDashboardPageActions pageActions;

  AdminDashboardStore targetStore;

  _AdminAdminDashboardhomeDashboardPageState() {
    pageStore.targetStore = targetStore;

    /// Aggregate table sorting variables init with default values
    SortSettings debatesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminDashboardhomeDashboardDebates',
      sortColumnIndex: pageConfig.debatesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.debatesTableConfig.sortColumnName,
      sortAsc: pageConfig.debatesTableConfig.sortAsc,
    );

    pageStore.debatesSortColumnIndex = debatesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.debatesSortColumnName = debatesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.debatesSortAsc = debatesSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings issuesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminDashboardhomeDashboardIssues',
      sortColumnIndex: pageConfig.issuesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.issuesTableConfig.sortColumnName,
      sortAsc: pageConfig.issuesTableConfig.sortAsc,
    );

    pageStore.issuesSortColumnIndex = issuesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.issuesSortColumnName = issuesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.issuesSortAsc = issuesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();
    final navigationRegistry = locator<NavigationRegistry>();
    pageStore.getDashboardhome().then((res) {
      if (res != null) {
        targetStore = res;
        pageStore.getSingleAssociationsForDashboardView(targetStore);
        pageStore.getterStatusSetFulfilled();
        pageActions = AdminAdminDashboardhomeDashboardPageActions(navigation, targetStore, pageStore, pageConfig);

        SchedulerBinding.instance.addPostFrameCallback((_) {
          navigation.setCurrentTitle(pageConfig.titleGenerator != null
              ? pageConfig.titleGenerator(context, pageStore)
              : AppLocalizations.of(context).lookUpValue(context, AdminAdminDashboardhomeDashboardPage.title));
          navigation.setCurrentPageActions(pageActions);
          pageStore.initSortAggregatedLists(context, pageConfig);
        });
      } else {
        var currentPageNavigation = navigationRegistry.getPageNavigationByRoute(Routes.adminAdminDashboardhomeDashboardPage);
        if (currentPageNavigation.createPage != null) {
          navigation.navigateTo(currentPageNavigation.createPage.route);
        } else {
          navigation.navigateTo(Routes.edemokraciaAdminAdminBlankPage);
        }
        pageStore.getterStatusSetRejected();
      }
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return Observer(builder: (_) {
      switch (pageStore.getterStatus) {
        case FutureStatus.pending:
          return CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  JudoLoadingProgress(),
                ],
              ),
            ),
          ]);
        case FutureStatus.rejected:
          return Container();
        case FutureStatus.fulfilled:
          return LayoutBuilder(builder: (context, constraints) {
            if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
              return getAdminAdminDashboardhomeDashboardMobilePage(context, targetStore, pageStore, pageConfig);
            }
            if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
              return getAdminAdminDashboardhomeDashboardTabletPage(context, targetStore, pageStore, pageConfig);
            }
            if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
              return getAdminAdminDashboardhomeDashboardDesktopPage(context, targetStore, pageStore, pageConfig);
            }
            return getAdminAdminDashboardhomeDashboardDesktopPage(context, targetStore, pageStore, pageConfig);
          });
      }
    });
  }
}
