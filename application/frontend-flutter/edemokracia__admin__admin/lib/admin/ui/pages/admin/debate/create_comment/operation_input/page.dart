//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.debate.create_comment.operation_input;

class AdminDebateCreateCommentOperationInputPageStore extends _AdminDebateCreateCommentOperationInputPageStore
    with _$AdminDebateCreateCommentOperationInputPageStore {}

abstract class _AdminDebateCreateCommentOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;
  LoadingState cancelButtonLoadingState;

  _AdminDebateCreateCommentOperationInputPageStore() {
    okButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    cancelButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  Function operationCall;

  @observable
  CreateCommentInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'comment': ValidationError(),
  };

  @action
  Future<CreateCommentInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaCreateCommentInputDefault();
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
}

class AdminDebateCreateCommentOperationInputPage extends StatefulWidget {
  static const String title = 'Add comment';

  final Function operationCall;

  const AdminDebateCreateCommentOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminDebateCreateCommentOperationInputPageState createState() => _AdminDebateCreateCommentOperationInputPageState(operationCall: operationCall);
}

class _AdminDebateCreateCommentOperationInputPageState extends State<AdminDebateCreateCommentOperationInputPage> {
  final CreateCommentInputStore targetStore = CreateCommentInputStore();

  final tableService = locator<TableService>();
  final AdminDebateCreateCommentOperationInputPageStore pageStore = AdminDebateCreateCommentOperationInputPageStore();
  final AdminDebateCreateCommentOperationInputConfig pageConfig = AdminDebateCreateCommentOperationInputConfig();
  AdminDebateCreateCommentOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CreateCommentInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminDebateCreateCommentOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminDebateCreateCommentOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDebateCreateCommentOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'comment': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDebateCreateCommentOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDebateCreateCommentOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDebateCreateCommentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminDebateCreateCommentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<CreateCommentInputStore>(
      future: futureTemplate,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // have to use postFrameCallback here, because mobx trying change state during build
          SchedulerBinding.instance.addPostFrameCallback((_) {
            locator<MessageHandler>().handleApiException(context, snapshot.error, 'Page loading');
          });
          return Text('');
        } else if (snapshot.hasData) {
          /// workaround for operation input pages constantly calling build() when user resizes the screen
          if (!initialized) {
            targetStore.initWithDefaults(snapshot.data);
            initialized = true;
          }
          return layout;
        }
        return Column(children: [JudoLoadingProgress()]);
      },
    );
  }
}
