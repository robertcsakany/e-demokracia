//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.create_debate.operation_output;

class AdminIssueCreateDebateOperationOutputPageStore extends _AdminIssueCreateDebateOperationOutputPageStore
    with _$AdminIssueCreateDebateOperationOutputPageStore {}

abstract class _AdminIssueCreateDebateOperationOutputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState backActionLoadingState;

  _AdminIssueCreateDebateOperationOutputPageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminIssueCreateDebateOperationOutputConfig pageConfig) {}

  @observable
  DebateStore targetStore;

  @action
  Future<void> refreshDebate(DebateStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaDebateGetByIdentifier(
      targetStore,
      mask: '{}',
    ));

    targetStore.createdBy = await _actorRepository.edemokraciaDebateCreatedByGet(targetStore, mask: '{}');
    targetStore.issue = await _actorRepository.edemokraciaDebateIssueGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // Comments embedded table order

  @observable
  int commentsSortColumnIndex;

  @observable
  String commentsSortColumnName;

  @observable
  bool commentsSortAsc;

  @observable
  Comparator commentsSortCompare;

  @action
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, DebateStore store) {
    if (commentsSortColumnIndex != sortColumnIndex) {
      commentsSortAsc = true;
    } else {
      commentsSortAsc = !commentsSortAsc;
    }
    commentsSortColumnIndex = sortColumnIndex;
    commentsSortColumnName = sortColumnName;
    commentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminIssueCreateDebateOutputComments',
      sortColumnIndex: commentsSortColumnIndex,
      sortColumnName: commentsSortColumnName,
      sortAsc: commentsSortAsc,
    );

    store.comments.sort(sortCompare);
  }

  // Comments aggregation actions

  @observable
  ObservableFuture debateCommentsStoreFuture;

  // Cons embedded table order

  @observable
  int consSortColumnIndex;

  @observable
  String consSortColumnName;

  @observable
  bool consSortAsc;

  @observable
  Comparator consSortCompare;

  @action
  void consSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, DebateStore store) {
    if (consSortColumnIndex != sortColumnIndex) {
      consSortAsc = true;
    } else {
      consSortAsc = !consSortAsc;
    }
    consSortColumnIndex = sortColumnIndex;
    consSortColumnName = sortColumnName;
    consSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminIssueCreateDebateOutputCons',
      sortColumnIndex: consSortColumnIndex,
      sortColumnName: consSortColumnName,
      sortAsc: consSortAsc,
    );

    store.cons.sort(sortCompare);
  }

  // Cons aggregation actions

  @observable
  ObservableFuture debateConsStoreFuture;

  // DebateVote embedded table order

  // DebateVote aggregation actions

  @observable
  ObservableFuture debateDebateVoteStoreFuture;

  // Pros embedded table order

  @observable
  int prosSortColumnIndex;

  @observable
  String prosSortColumnName;

  @observable
  bool prosSortAsc;

  @observable
  Comparator prosSortCompare;

  @action
  void prosSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, DebateStore store) {
    if (prosSortColumnIndex != sortColumnIndex) {
      prosSortAsc = true;
    } else {
      prosSortAsc = !prosSortAsc;
    }
    prosSortColumnIndex = sortColumnIndex;
    prosSortColumnName = sortColumnName;
    prosSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminIssueCreateDebateOutputPros',
      sortColumnIndex: prosSortColumnIndex,
      sortColumnName: prosSortColumnName,
      sortAsc: prosSortAsc,
    );

    store.pros.sort(sortCompare);
  }

  // Pros aggregation actions

  @observable
  ObservableFuture debateProsStoreFuture;

  //OPERATIONS
}

class AdminIssueCreateDebateOperationOutputPage extends StatefulWidget {
  static const String title = 'Entity View';

  final DebateStore targetStore;

  const AdminIssueCreateDebateOperationOutputPage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminIssueCreateDebateOperationOutputPageState(targetStore: targetStore);
}

class _AdminIssueCreateDebateOperationOutputPageState extends State<AdminIssueCreateDebateOperationOutputPage> {
  DebateStore targetStore;

  final tableService = locator<TableService>();
  final AdminIssueCreateDebateOperationOutputPageStore pageStore = AdminIssueCreateDebateOperationOutputPageStore();
  final AdminIssueCreateDebateOperationOutputConfig pageConfig = AdminIssueCreateDebateOperationOutputConfig();
  AdminIssueCreateDebateOperationOutputPageActions pageActions;

  _AdminIssueCreateDebateOperationOutputPageState({@required this.targetStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminIssueCreateDebateOperationOutputPageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshDebate(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueCreateDebateOperationOutputPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueCreateDebateOperationOutputMobilePage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueCreateDebateOperationOutputTabletPage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueCreateDebateOperationOutputDesktopPage(context, targetStore, pageStore, pageConfig);
      }
      return getAdminIssueCreateDebateOperationOutputDesktopPage(context, targetStore, pageStore, pageConfig);
    });

    return layout;
  }
}
