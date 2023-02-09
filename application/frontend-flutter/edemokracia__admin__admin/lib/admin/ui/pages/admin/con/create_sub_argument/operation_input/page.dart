//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.con.create_sub_argument.operation_input;

class AdminConCreateSubArgumentOperationInputPageStore extends _AdminConCreateSubArgumentOperationInputPageStore
    with _$AdminConCreateSubArgumentOperationInputPageStore {}

abstract class _AdminConCreateSubArgumentOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;

  _AdminConCreateSubArgumentOperationInputPageStore() {
    okButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  Function operationCall;

  @observable
  CreateArgumentInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'description': ValidationError(),
    'title': ValidationError(),
    'type': ValidationError(),
  };

  @action
  Future<CreateArgumentInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaCreateArgumentInputDefault();
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

class AdminConCreateSubArgumentOperationInputPage extends StatefulWidget {
  static const String title = 'Add argument';

  final Function operationCall;

  const AdminConCreateSubArgumentOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminConCreateSubArgumentOperationInputPageState createState() => _AdminConCreateSubArgumentOperationInputPageState(operationCall: operationCall);
}

class _AdminConCreateSubArgumentOperationInputPageState extends State<AdminConCreateSubArgumentOperationInputPage> {
  final CreateArgumentInputStore targetStore = CreateArgumentInputStore();

  final tableService = locator<TableService>();
  final AdminConCreateSubArgumentOperationInputPageStore pageStore = AdminConCreateSubArgumentOperationInputPageStore();
  final AdminConCreateSubArgumentOperationInputConfig pageConfig = AdminConCreateSubArgumentOperationInputConfig();
  AdminConCreateSubArgumentOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CreateArgumentInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminConCreateSubArgumentOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminConCreateSubArgumentOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminConCreateSubArgumentOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'type': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminConCreateSubArgumentOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminConCreateSubArgumentOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminConCreateSubArgumentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminConCreateSubArgumentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<CreateArgumentInputStore>(
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
