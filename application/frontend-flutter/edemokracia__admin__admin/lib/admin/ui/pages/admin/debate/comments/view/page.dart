//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.debate.comments.view;

class AdminDebateCommentsViewPageStore extends _AdminDebateCommentsViewPageStore with _$AdminDebateCommentsViewPageStore {}

abstract class _AdminDebateCommentsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteUpButtonLoadingState;
  LoadingState voteDownButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState deleteActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminDebateCommentsViewPageStore() {
    voteUpButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteDownButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    deleteActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminDebateCommentsViewConfig pageConfig) {}

  @observable
  AdminCommentStore targetStore;

  @action
  Future<void> refreshComment(AdminCommentStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminCommentGetByIdentifier(
      targetStore,
      mask: '{created,comment,upVotes,downVotes,createdBy{representation}}',
    ));
  }

  @action
  Future<void> updateComment(AdminCommentStore newTargetStore, AdminCommentStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminCommentUpdate(newTargetStore);
    await refreshComment(oldTargetStore);
  }

  @action
  Future<void> deleteComment(AdminCommentStore targetStore) async {
    await _actorRepository.edemokraciaAdminCommentDelete(targetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // CreatedBy embedded table order

  // CreatedBy aggregation actions

  @observable
  ObservableFuture commentCreatedByStoreFuture;

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCommentVoteDown(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCommentVoteUp(ownerStore);
  }
}

class AdminDebateCommentsViewPage extends StatefulWidget {
  static const String title = 'View / Edit Comment';

  final AdminCommentStore targetStore;
  final AdminDebateStore ownerStore;

  const AdminDebateCommentsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminDebateCommentsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminDebateCommentsViewPageState extends State<AdminDebateCommentsViewPage> {
  AdminCommentStore targetStore;
  final AdminDebateStore ownerStore;

  final tableService = locator<TableService>();
  final AdminDebateCommentsViewPageStore pageStore = AdminDebateCommentsViewPageStore();
  final AdminDebateCommentsViewConfig pageConfig = AdminDebateCommentsViewConfig();
  AdminDebateCommentsViewPageActions pageActions;

  _AdminDebateCommentsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminDebateCommentsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshComment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDebateCommentsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDebateCommentsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDebateCommentsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDebateCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminDebateCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
