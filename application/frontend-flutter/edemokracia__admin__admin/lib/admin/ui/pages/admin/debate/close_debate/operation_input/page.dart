//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.debate.close_debate.operation_input;

class AdminDebateCloseDebateOperationInputPageStore extends _AdminDebateCloseDebateOperationInputPageStore
    with _$AdminDebateCloseDebateOperationInputPageStore {}

abstract class _AdminDebateCloseDebateOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;

  _AdminDebateCloseDebateOperationInputPageStore() {
    okButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  Function operationCall;

  @observable
  CloseDebateInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'closeAt': ValidationError(),
    'description': ValidationError(),
    'title': ValidationError(),
    'voteType': ValidationError(),
  };

  @action
  Future<CloseDebateInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaCloseDebateInputDefault();
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

class AdminDebateCloseDebateOperationInputPage extends StatefulWidget {
  static const String title = 'TransferObject Form';

  final Function operationCall;

  const AdminDebateCloseDebateOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminDebateCloseDebateOperationInputPageState createState() => _AdminDebateCloseDebateOperationInputPageState(operationCall: operationCall);
}

class _AdminDebateCloseDebateOperationInputPageState extends State<AdminDebateCloseDebateOperationInputPage> {
  final CloseDebateInputStore targetStore = CloseDebateInputStore();

  final tableService = locator<TableService>();
  final AdminDebateCloseDebateOperationInputPageStore pageStore = AdminDebateCloseDebateOperationInputPageStore();
  final AdminDebateCloseDebateOperationInputConfig pageConfig = AdminDebateCloseDebateOperationInputConfig();
  AdminDebateCloseDebateOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CloseDebateInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminDebateCloseDebateOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminDebateCloseDebateOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDebateCloseDebateOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'voteType': GlobalKey(),
    'closeAt': GlobalKey(),
    'title': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDebateCloseDebateOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDebateCloseDebateOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDebateCloseDebateOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminDebateCloseDebateOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<CloseDebateInputStore>(
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
