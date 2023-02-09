//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.dashboard.create_user.operation_input;

class AdminDashboardCreateUserOperationInputPageStore extends _AdminDashboardCreateUserOperationInputPageStore
    with _$AdminDashboardCreateUserOperationInputPageStore {}

abstract class _AdminDashboardCreateUserOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;
  LoadingState cancelButtonLoadingState;

  _AdminDashboardCreateUserOperationInputPageStore() {
    okButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    cancelButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  Function operationCall;

  @observable
  AdminCreateUserInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'email': ValidationError(),
    'firstName': ValidationError(),
    'hasAdminAccess': ValidationError(),
    'lastName': ValidationError(),
    'phone': ValidationError(),
    'userName': ValidationError(),
  };

  @action
  Future<AdminCreateUserInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminCreateUserInputDefault();
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

class AdminDashboardCreateUserOperationInputPage extends StatefulWidget {
  static const String title = 'TransferObject Form';

  final Function operationCall;

  const AdminDashboardCreateUserOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminDashboardCreateUserOperationInputPageState createState() => _AdminDashboardCreateUserOperationInputPageState(operationCall: operationCall);
}

class _AdminDashboardCreateUserOperationInputPageState extends State<AdminDashboardCreateUserOperationInputPage> {
  final AdminCreateUserInputStore targetStore = AdminCreateUserInputStore();

  final tableService = locator<TableService>();
  final AdminDashboardCreateUserOperationInputPageStore pageStore = AdminDashboardCreateUserOperationInputPageStore();
  final AdminDashboardCreateUserOperationInputConfig pageConfig = AdminDashboardCreateUserOperationInputConfig();
  AdminDashboardCreateUserOperationInputPageActions pageActions;

  final Function operationCall;

  Future<AdminCreateUserInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminDashboardCreateUserOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminDashboardCreateUserOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDashboardCreateUserOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'userName': GlobalKey(),
    'hasAdminAccess': GlobalKey(),
    'firstName': GlobalKey(),
    'lastName': GlobalKey(),
    'email': GlobalKey(),
    'phone': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDashboardCreateUserOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDashboardCreateUserOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDashboardCreateUserOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminDashboardCreateUserOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminCreateUserInputStore>(
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
