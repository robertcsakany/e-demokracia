//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.vote_definition.vote_yes_no_abstain.operation_input;

class AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore extends _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore
    with _$AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore {}

abstract class _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore() {}

  Function operationCall;

  @observable
  YesNoAbstainVoteInputStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'value': ValidationError(),
  };

  @action
  Future<YesNoAbstainVoteInputStore> getDefaults() async {
    return await _actorRepository.edemokraciaYesNoAbstainVoteInputDefault();
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

class AdminVoteDefinitionVoteYesNoAbstainOperationInputPage extends StatefulWidget {
  static const String title = 'TransferObject Form';

  final Function operationCall;

  const AdminVoteDefinitionVoteYesNoAbstainOperationInputPage({Key key, @required this.operationCall}) : super(key: key);

  @override
  _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageState createState() =>
      _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageState(operationCall: operationCall);
}

class _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageState extends State<AdminVoteDefinitionVoteYesNoAbstainOperationInputPage> {
  final YesNoAbstainVoteInputStore targetStore = YesNoAbstainVoteInputStore();

  final tableService = locator<TableService>();
  final AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore pageStore = AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore();
  final AdminVoteDefinitionVoteYesNoAbstainOperationInputConfig pageConfig = AdminVoteDefinitionVoteYesNoAbstainOperationInputConfig();
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageActions pageActions;

  final Function operationCall;

  Future<YesNoAbstainVoteInputStore> futureTemplate;
  bool initialized;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
    initialized = false;
  }

  _AdminVoteDefinitionVoteYesNoAbstainOperationInputPageState({@required this.operationCall}) {
    pageStore.targetStore = targetStore;
    pageStore.operationCall = operationCall;

    final navigation = locator<NavigationState>();
    pageActions = AdminVoteDefinitionVoteYesNoAbstainOperationInputPageActions(navigation, targetStore, pageStore, pageConfig);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminVoteDefinitionVoteYesNoAbstainOperationInputPage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {};

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminVoteDefinitionVoteYesNoAbstainOperationInputMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminVoteDefinitionVoteYesNoAbstainOperationInputTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminVoteDefinitionVoteYesNoAbstainOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminVoteDefinitionVoteYesNoAbstainOperationInputDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<YesNoAbstainVoteInputStore>(
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
