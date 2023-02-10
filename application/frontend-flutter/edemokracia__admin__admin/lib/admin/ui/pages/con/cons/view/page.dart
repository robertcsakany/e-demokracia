//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.con.cons.view;

class ConConsViewPageStore extends _ConConsViewPageStore with _$ConConsViewPageStore {}

abstract class _ConConsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _ConConsViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, ConConsViewConfig pageConfig) {}

  @observable
  ConStore targetStore;

  @action
  Future<void> refreshCon(ConStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaConGetByIdentifier(
      targetStore,
      mask: '{description}',
    ));

    targetStore.createdBy = await _actorRepository.edemokraciaConCreatedByGet(targetStore, mask: '{}');
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
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, ConStore store) {
    if (commentsSortColumnIndex != sortColumnIndex) {
      commentsSortAsc = true;
    } else {
      commentsSortAsc = !commentsSortAsc;
    }
    commentsSortColumnIndex = sortColumnIndex;
    commentsSortColumnName = sortColumnName;
    commentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaConConsViewComments',
      sortColumnIndex: commentsSortColumnIndex,
      sortColumnName: commentsSortColumnName,
      sortAsc: commentsSortAsc,
    );

    store.comments.sort(sortCompare);
  }

  // Comments aggregation actions

  @observable
  ObservableFuture conCommentsStoreFuture;

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
  void consSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, ConStore store) {
    if (consSortColumnIndex != sortColumnIndex) {
      consSortAsc = true;
    } else {
      consSortAsc = !consSortAsc;
    }
    consSortColumnIndex = sortColumnIndex;
    consSortColumnName = sortColumnName;
    consSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaConConsViewCons',
      sortColumnIndex: consSortColumnIndex,
      sortColumnName: consSortColumnName,
      sortAsc: consSortAsc,
    );

    store.cons.sort(sortCompare);
  }

  // Cons aggregation actions

  @observable
  ObservableFuture conConsStoreFuture;

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
  void prosSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, ConStore store) {
    if (prosSortColumnIndex != sortColumnIndex) {
      prosSortAsc = true;
    } else {
      prosSortAsc = !prosSortAsc;
    }
    prosSortColumnIndex = sortColumnIndex;
    prosSortColumnName = sortColumnName;
    prosSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaConConsViewPros',
      sortColumnIndex: prosSortColumnIndex,
      sortColumnName: prosSortColumnName,
      sortAsc: prosSortAsc,
    );

    store.pros.sort(sortCompare);
  }

  // Pros aggregation actions

  @observable
  ObservableFuture conProsStoreFuture;

  // Votes embedded table order

  @observable
  int votesSortColumnIndex;

  @observable
  String votesSortColumnName;

  @observable
  bool votesSortAsc;

  @observable
  Comparator votesSortCompare;

  @action
  void votesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, ConStore store) {
    if (votesSortColumnIndex != sortColumnIndex) {
      votesSortAsc = true;
    } else {
      votesSortAsc = !votesSortAsc;
    }
    votesSortColumnIndex = sortColumnIndex;
    votesSortColumnName = sortColumnName;
    votesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaConConsViewVotes',
      sortColumnIndex: votesSortColumnIndex,
      sortColumnName: votesSortColumnName,
      sortAsc: votesSortAsc,
    );

    store.votes.sort(sortCompare);
  }

  // Votes aggregation actions

  @observable
  ObservableFuture conVotesStoreFuture;

  //OPERATIONS

}

class ConConsViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final ConStore targetStore;
  final ConStore ownerStore;

  const ConConsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConConsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _ConConsViewPageState extends State<ConConsViewPage> {
  ConStore targetStore;
  final ConStore ownerStore;

  final tableService = locator<TableService>();
  final ConConsViewPageStore pageStore = ConConsViewPageStore();
  final ConConsViewConfig pageConfig = ConConsViewConfig();
  ConConsViewPageActions pageActions;

  _ConConsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = ConConsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshCon(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, ConConsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getConConsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getConConsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getConConsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getConConsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}