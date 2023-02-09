//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.comment.votes.view;

class AdminCommentVotesViewPageStore extends _AdminCommentVotesViewPageStore with _$AdminCommentVotesViewPageStore {}

abstract class _AdminCommentVotesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState deleteActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminCommentVotesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    deleteActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminCommentVotesViewConfig pageConfig) {}

  @observable
  AdminSimpleVoteStore targetStore;

  @action
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminSimpleVoteGetByIdentifier(
      targetStore,
      mask: '{created,type}',
    ));
  }

  @action
  Future<void> updateSimpleVote(AdminSimpleVoteStore newTargetStore, AdminSimpleVoteStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminSimpleVoteUpdate(newTargetStore);
    await refreshSimpleVote(oldTargetStore);
  }

  @action
  Future<void> deleteSimpleVote(AdminSimpleVoteStore targetStore) async {
    await _actorRepository.edemokraciaAdminSimpleVoteDelete(targetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // User embedded table order

  // User aggregation actions

  @observable
  ObservableFuture simpleVoteUserStoreFuture;

  //OPERATIONS

}

class AdminCommentVotesViewPage extends StatefulWidget {
  static const String title = 'Create / View Vote';

  final AdminSimpleVoteStore targetStore;
  final AdminCommentStore ownerStore;

  const AdminCommentVotesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminCommentVotesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminCommentVotesViewPageState extends State<AdminCommentVotesViewPage> {
  AdminSimpleVoteStore targetStore;
  final AdminCommentStore ownerStore;

  final tableService = locator<TableService>();
  final AdminCommentVotesViewPageStore pageStore = AdminCommentVotesViewPageStore();
  final AdminCommentVotesViewConfig pageConfig = AdminCommentVotesViewConfig();
  AdminCommentVotesViewPageActions pageActions;

  _AdminCommentVotesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminCommentVotesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshSimpleVote(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminCommentVotesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminCommentVotesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCommentVotesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCommentVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminCommentVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
