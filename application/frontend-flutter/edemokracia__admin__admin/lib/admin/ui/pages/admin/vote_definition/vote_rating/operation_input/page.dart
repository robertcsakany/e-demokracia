//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.vote_definition.vote_rating.operation_input;

class AdminVoteDefinitionVoteRatingOperationInputPageStore extends _AdminVoteDefinitionVoteRatingOperationInputPageStore
    with _$AdminVoteDefinitionVoteRatingOperationInputPageStore {}

abstract class _AdminVoteDefinitionVoteRatingOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  _AdminVoteDefinitionVoteRatingOperationInputPageStore() {}

  Function operationCall;

  @observable
  RatingVoteInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'value': ValidationError(),
  };

  @action
  Future<RatingVoteInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaRatingVoteInputDefault();
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

class AdminVoteDefinitionVoteRatingOperationInputPage extends StatefulWidget {
  static const String title = 'TransferObject Form';

  final Function operationCall;

  const AdminVoteDefinitionVoteRatingOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminVoteDefinitionVoteRatingOperationInputPageState createState() => _AdminVoteDefinitionVoteRatingOperationInputPageState(operationCall: operationCall);
}

class _AdminVoteDefinitionVoteRatingOperationInputPageState extends State<AdminVoteDefinitionVoteRatingOperationInputPage> {
  final RatingVoteInputStore targetStore = RatingVoteInputStore();

  final tableService = locator<TableService>();
  final AdminVoteDefinitionVoteRatingOperationInputPageStore pageStore = AdminVoteDefinitionVoteRatingOperationInputPageStore();
  final AdminVoteDefinitionVoteRatingOperationInputConfig pageConfig = AdminVoteDefinitionVoteRatingOperationInputConfig();
  AdminVoteDefinitionVoteRatingOperationInputPageActions pageActions;

  final Function operationCall;

  Future<RatingVoteInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminVoteDefinitionVoteRatingOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminVoteDefinitionVoteRatingOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminVoteDefinitionVoteRatingOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {};

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminVoteDefinitionVoteRatingOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminVoteDefinitionVoteRatingOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminVoteDefinitionVoteRatingOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminVoteDefinitionVoteRatingOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<RatingVoteInputStore>(
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
