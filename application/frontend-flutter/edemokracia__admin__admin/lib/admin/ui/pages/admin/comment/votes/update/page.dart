//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.comment.votes.update;

class AdminCommentVotesUpdatePageStore extends _AdminCommentVotesUpdatePageStore with _$AdminCommentVotesUpdatePageStore {}

abstract class _AdminCommentVotesUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminCommentVotesUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminCommentVotesUpdateConfig pageConfig) {}

  @observable
  AdminSimpleVoteStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'created': ValidationError(),
    'type': ValidationError(),
    'user': ValidationError(),
  };

  @action
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminSimpleVoteGetByIdentifier(targetStore));
  }

  @action
  Future<AdminSimpleVoteStore> validate(AdminSimpleVoteStore targetStore) async {
    return await _actorRepository.edemokraciaAdminSimpleVoteValidateForUpdate(targetStore);
  }

  @action
  Future<String> uploadFile(String attributePath, PlatformFile file) async {
    return await _actorRepository.uploadFile(attributePath, file);
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

  @action
  Future<void> setUser(AdminSimpleVoteStore ownerStore, AdminUserStore selectedStore) async {
    ownerStore.setUser(selectedStore);
  }

  @action
  Future<void> unsetUser(AdminSimpleVoteStore ownerStore) async {
    ownerStore.setUser(null);
  }
}

class AdminCommentVotesUpdatePage extends StatefulWidget {
  static const String title = 'Create / View Vote';

  final AdminSimpleVoteStore targetStore;

  const AdminCommentVotesUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminCommentVotesUpdatePageState(targetStore: targetStore);
}

class _AdminCommentVotesUpdatePageState extends State<AdminCommentVotesUpdatePage> {
  final AdminSimpleVoteStore targetStore;

  final tableService = locator<TableService>();
  final AdminCommentVotesUpdatePageStore pageStore = AdminCommentVotesUpdatePageStore();
  final AdminCommentVotesUpdateConfig pageConfig = AdminCommentVotesUpdateConfig();
  AdminCommentVotesUpdatePageActions pageActions;

  _AdminCommentVotesUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminCommentVotesUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshSimpleVote(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminCommentVotesUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'created': GlobalKey(),
    'type': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminCommentVotesUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCommentVotesUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCommentVotesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminCommentVotesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
