//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.pro.comments.view;

class ProCommentsViewPageStore extends _ProCommentsViewPageStore with _$ProCommentsViewPageStore {}

abstract class _ProCommentsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _ProCommentsViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, ProCommentsViewConfig pageConfig) {}

  @observable
  CommentStore targetStore;

  @action
  Future<void> refreshComment(CommentStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaCommentGetByIdentifier(
      targetStore,
      mask: '{comment}',
    ));

    targetStore.createdBy = await _actorRepository.edemokraciaCommentCreatedByGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

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
  void votesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, CommentStore store) {
    if (votesSortColumnIndex != sortColumnIndex) {
      votesSortAsc = true;
    } else {
      votesSortAsc = !votesSortAsc;
    }
    votesSortColumnIndex = sortColumnIndex;
    votesSortColumnName = sortColumnName;
    votesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaProCommentsViewVotes',
      sortColumnIndex: votesSortColumnIndex,
      sortColumnName: votesSortColumnName,
      sortAsc: votesSortAsc,
    );

    store.votes.sort(sortCompare);
  }

  // Votes aggregation actions

  @observable
  ObservableFuture commentVotesStoreFuture;

  //OPERATIONS

}

class ProCommentsViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final CommentStore targetStore;
  final ProStore ownerStore;

  const ProCommentsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProCommentsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _ProCommentsViewPageState extends State<ProCommentsViewPage> {
  CommentStore targetStore;
  final ProStore ownerStore;

  final tableService = locator<TableService>();
  final ProCommentsViewPageStore pageStore = ProCommentsViewPageStore();
  final ProCommentsViewConfig pageConfig = ProCommentsViewConfig();
  ProCommentsViewPageActions pageActions;

  _ProCommentsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = ProCommentsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshComment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, ProCommentsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getProCommentsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getProCommentsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getProCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getProCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
