//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.create_debate.operation_input;

class AdminIssueCreateDebateOperationInputPageStore extends _AdminIssueCreateDebateOperationInputPageStore
    with _$AdminIssueCreateDebateOperationInputPageStore {}

abstract class _AdminIssueCreateDebateOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;

  _AdminIssueCreateDebateOperationInputPageStore() {
    okButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  Function operationCall;

  @observable
  CreateDebateInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'closeAt': ValidationError(),
    'description': ValidationError(),
    'title': ValidationError(),
  };

  @action
  Future<CreateDebateInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaCreateDebateInputDefault();
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

class AdminIssueCreateDebateOperationInputPage extends StatefulWidget {
  static const String title = 'Create debate';

  final Function operationCall;

  const AdminIssueCreateDebateOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminIssueCreateDebateOperationInputPageState createState() => _AdminIssueCreateDebateOperationInputPageState(operationCall: operationCall);
}

class _AdminIssueCreateDebateOperationInputPageState extends State<AdminIssueCreateDebateOperationInputPage> {
  final CreateDebateInputStore targetStore = CreateDebateInputStore();

  final tableService = locator<TableService>();
  final AdminIssueCreateDebateOperationInputPageStore pageStore = AdminIssueCreateDebateOperationInputPageStore();
  final AdminIssueCreateDebateOperationInputConfig pageConfig = AdminIssueCreateDebateOperationInputConfig();
  AdminIssueCreateDebateOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CreateDebateInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminIssueCreateDebateOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminIssueCreateDebateOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueCreateDebateOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'closeAt': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueCreateDebateOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueCreateDebateOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueCreateDebateOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminIssueCreateDebateOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<CreateDebateInputStore>(
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
