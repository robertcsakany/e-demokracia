//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.comments.view;

class AdminProCommentsViewPageStore extends _AdminProCommentsViewPageStore with _$AdminProCommentsViewPageStore {}

abstract class _AdminProCommentsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteUpButtonLoadingState;
  LoadingState voteDownButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminProCommentsViewPageStore() {
    voteUpButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteDownButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminProCommentsViewConfig pageConfig) {}

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

class AdminProCommentsViewPage extends StatefulWidget {
  static const String title = 'View / Edit Comment';

  final AdminCommentStore targetStore;
  final AdminProStore ownerStore;

  const AdminProCommentsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminProCommentsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminProCommentsViewPageState extends State<AdminProCommentsViewPage> {
  AdminCommentStore targetStore;
  final AdminProStore ownerStore;

  final tableService = locator<TableService>();
  final AdminProCommentsViewPageStore pageStore = AdminProCommentsViewPageStore();
  final AdminProCommentsViewConfig pageConfig = AdminProCommentsViewConfig();
  AdminProCommentsViewPageActions pageActions;

  _AdminProCommentsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminProCommentsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshComment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProCommentsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminProCommentsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminProCommentsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminProCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminProCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
