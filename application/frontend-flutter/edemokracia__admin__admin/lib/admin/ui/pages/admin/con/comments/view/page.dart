//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.con.comments.view;

class AdminConCommentsViewPageStore extends _AdminConCommentsViewPageStore with _$AdminConCommentsViewPageStore {}

abstract class _AdminConCommentsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteUpButtonLoadingState;
  LoadingState voteDownButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminConCommentsViewPageStore() {
    voteUpButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteDownButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminConCommentsViewConfig pageConfig) {}

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

class AdminConCommentsViewPage extends StatefulWidget {
  static const String title = 'View / Edit Comment';

  final AdminCommentStore targetStore;
  final AdminConStore ownerStore;

  const AdminConCommentsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminConCommentsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminConCommentsViewPageState extends State<AdminConCommentsViewPage> {
  AdminCommentStore targetStore;
  final AdminConStore ownerStore;

  final tableService = locator<TableService>();
  final AdminConCommentsViewPageStore pageStore = AdminConCommentsViewPageStore();
  final AdminConCommentsViewConfig pageConfig = AdminConCommentsViewConfig();
  AdminConCommentsViewPageActions pageActions;

  _AdminConCommentsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminConCommentsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshComment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminConCommentsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminConCommentsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminConCommentsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminConCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminConCommentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
