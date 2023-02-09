//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.create_sub_argument.operation_input;

class AdminProCreateSubArgumentOperationInputPageStore extends _AdminProCreateSubArgumentOperationInputPageStore
    with _$AdminProCreateSubArgumentOperationInputPageStore {}

abstract class _AdminProCreateSubArgumentOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;

  _AdminProCreateSubArgumentOperationInputPageStore() {
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

class AdminProCreateSubArgumentOperationInputPage extends StatefulWidget {
  static const String title = 'Add argument';

  final Function operationCall;

  const AdminProCreateSubArgumentOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminProCreateSubArgumentOperationInputPageState createState() => _AdminProCreateSubArgumentOperationInputPageState(operationCall: operationCall);
}

class _AdminProCreateSubArgumentOperationInputPageState extends State<AdminProCreateSubArgumentOperationInputPage> {
  final CreateArgumentInputStore targetStore = CreateArgumentInputStore();

  final tableService = locator<TableService>();
  final AdminProCreateSubArgumentOperationInputPageStore pageStore = AdminProCreateSubArgumentOperationInputPageStore();
  final AdminProCreateSubArgumentOperationInputConfig pageConfig = AdminProCreateSubArgumentOperationInputConfig();
  AdminProCreateSubArgumentOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CreateArgumentInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminProCreateSubArgumentOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminProCreateSubArgumentOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProCreateSubArgumentOperationInputPage.title));
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
        return getAdminProCreateSubArgumentOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminProCreateSubArgumentOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminProCreateSubArgumentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminProCreateSubArgumentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
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
