//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.create_comment.operation_input;

class AdminProCreateCommentOperationInputPageStore extends _AdminProCreateCommentOperationInputPageStore with _$AdminProCreateCommentOperationInputPageStore {}

abstract class _AdminProCreateCommentOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;
  LoadingState cancelButtonLoadingState;

  _AdminProCreateCommentOperationInputPageStore() {
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

class AdminProCreateCommentOperationInputPage extends StatefulWidget {
  static const String title = 'Add comment';

  final Function operationCall;

  const AdminProCreateCommentOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminProCreateCommentOperationInputPageState createState() => _AdminProCreateCommentOperationInputPageState(operationCall: operationCall);
}

class _AdminProCreateCommentOperationInputPageState extends State<AdminProCreateCommentOperationInputPage> {
  final CreateCommentInputStore targetStore = CreateCommentInputStore();

  final tableService = locator<TableService>();
  final AdminProCreateCommentOperationInputPageStore pageStore = AdminProCreateCommentOperationInputPageStore();
  final AdminProCreateCommentOperationInputConfig pageConfig = AdminProCreateCommentOperationInputConfig();
  AdminProCreateCommentOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CreateCommentInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminProCreateCommentOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminProCreateCommentOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProCreateCommentOperationInputPage.title));
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
        return getAdminProCreateCommentOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminProCreateCommentOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminProCreateCommentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminProCreateCommentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
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
