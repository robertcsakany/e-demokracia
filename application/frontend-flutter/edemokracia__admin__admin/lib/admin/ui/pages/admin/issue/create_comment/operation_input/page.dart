//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.create_comment.operation_input;

class AdminIssueCreateCommentOperationInputPageStore extends _AdminIssueCreateCommentOperationInputPageStore
    with _$AdminIssueCreateCommentOperationInputPageStore {}

abstract class _AdminIssueCreateCommentOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState okButtonLoadingState;
  LoadingState cancelButtonLoadingState;

  _AdminIssueCreateCommentOperationInputPageStore() {
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

class AdminIssueCreateCommentOperationInputPage extends StatefulWidget {
  static const String title = 'Add comment';

  final Function operationCall;

  const AdminIssueCreateCommentOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminIssueCreateCommentOperationInputPageState createState() => _AdminIssueCreateCommentOperationInputPageState(operationCall: operationCall);
}

class _AdminIssueCreateCommentOperationInputPageState extends State<AdminIssueCreateCommentOperationInputPage> {
  final CreateCommentInputStore targetStore = CreateCommentInputStore();

  final tableService = locator<TableService>();
  final AdminIssueCreateCommentOperationInputPageStore pageStore = AdminIssueCreateCommentOperationInputPageStore();
  final AdminIssueCreateCommentOperationInputConfig pageConfig = AdminIssueCreateCommentOperationInputConfig();
  AdminIssueCreateCommentOperationInputPageActions pageActions;

  final Function operationCall;

  Future<CreateCommentInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminIssueCreateCommentOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminIssueCreateCommentOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueCreateCommentOperationInputPage.title));
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
        return getAdminIssueCreateCommentOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueCreateCommentOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueCreateCommentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminIssueCreateCommentOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
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
