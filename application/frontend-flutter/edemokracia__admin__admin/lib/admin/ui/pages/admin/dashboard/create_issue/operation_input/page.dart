//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.dashboard.create_issue.operation_input;

class AdminDashboardCreateIssueOperationInputPageStore extends _AdminDashboardCreateIssueOperationInputPageStore
    with _$AdminDashboardCreateIssueOperationInputPageStore {}

abstract class _AdminDashboardCreateIssueOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;

  _AdminDashboardCreateIssueOperationInputPageStore() {
    okButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  Function operationCall;

  @observable
  AdminCreateIssueInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'description': ValidationError(),
    'title': ValidationError(),
  };

  @action
  Future<AdminCreateIssueInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminCreateIssueInputDefault();
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

class AdminDashboardCreateIssueOperationInputPage extends StatefulWidget {
  static const String title = 'Create issue';

  final Function operationCall;

  const AdminDashboardCreateIssueOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminDashboardCreateIssueOperationInputPageState createState() => _AdminDashboardCreateIssueOperationInputPageState(operationCall: operationCall);
}

class _AdminDashboardCreateIssueOperationInputPageState extends State<AdminDashboardCreateIssueOperationInputPage> {
  final AdminCreateIssueInputStore targetStore = AdminCreateIssueInputStore();

  final tableService = locator<TableService>();
  final AdminDashboardCreateIssueOperationInputPageStore pageStore = AdminDashboardCreateIssueOperationInputPageStore();
  final AdminDashboardCreateIssueOperationInputConfig pageConfig = AdminDashboardCreateIssueOperationInputConfig();
  AdminDashboardCreateIssueOperationInputPageActions pageActions;

  final Function operationCall;

  Future<AdminCreateIssueInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminDashboardCreateIssueOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminDashboardCreateIssueOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDashboardCreateIssueOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDashboardCreateIssueOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDashboardCreateIssueOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDashboardCreateIssueOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminDashboardCreateIssueOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminCreateIssueInputStore>(
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
