//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.debate.comments.update;

class AdminDebateCommentsUpdatePageStore extends _AdminDebateCommentsUpdatePageStore with _$AdminDebateCommentsUpdatePageStore {}

abstract class _AdminDebateCommentsUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteUpButtonLoadingState;
  LoadingState voteDownButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminDebateCommentsUpdatePageStore() {
    voteUpButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteDownButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminDebateCommentsUpdateConfig pageConfig) {}

  @observable
  AdminCommentStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'comment': ValidationError(),
    'created': ValidationError(),
    'createdByName': ValidationError(),
    'downVotes': ValidationError(),
    'upVotes': ValidationError(),
    'createdBy': ValidationError(),
    'votes': ValidationError(),
  };

  @action
  Future<void> refreshComment(AdminCommentStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminCommentGetByIdentifier(targetStore));
  }

  @action
  Future<AdminCommentStore> validate(AdminCommentStore targetStore) async {
    return await _actorRepository.edemokraciaAdminCommentValidateForUpdate(targetStore);
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

  int createdByQueryLimit = 5; // For judo link setter dialog

  // CreatedBy range actions

  // CreatedBy embedded table order

  // CreatedBy aggregation actions

  @observable
  ObservableFuture commentCreatedByStoreFuture;
}

class AdminDebateCommentsUpdatePage extends StatefulWidget {
  static const String title = 'View / Edit Comment';

  final AdminCommentStore targetStore;

  const AdminDebateCommentsUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminDebateCommentsUpdatePageState(targetStore: targetStore);
}

class _AdminDebateCommentsUpdatePageState extends State<AdminDebateCommentsUpdatePage> {
  final AdminCommentStore targetStore;

  final tableService = locator<TableService>();
  final AdminDebateCommentsUpdatePageStore pageStore = AdminDebateCommentsUpdatePageStore();
  final AdminDebateCommentsUpdateConfig pageConfig = AdminDebateCommentsUpdateConfig();
  AdminDebateCommentsUpdatePageActions pageActions;

  _AdminDebateCommentsUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminDebateCommentsUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshComment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDebateCommentsUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'comment': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDebateCommentsUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDebateCommentsUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDebateCommentsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminDebateCommentsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
