//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.debate.close_debate.operation_output;

class AdminDebateCloseDebateOperationOutputPageStore extends _AdminDebateCloseDebateOperationOutputPageStore
    with _$AdminDebateCloseDebateOperationOutputPageStore {}

abstract class _AdminDebateCloseDebateOperationOutputPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState backActionLoadingState;

  _AdminDebateCloseDebateOperationOutputPageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminDebateCloseDebateOperationOutputConfig pageConfig) {}

  @observable
  VoteDefinitionStore targetStore;

  @action
  Future<void> refreshVoteDefinition(VoteDefinitionStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaVoteDefinitionGetByIdentifier(
      targetStore,
      mask: '{}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS
}

class AdminDebateCloseDebateOperationOutputPage extends StatefulWidget {
  static const String title = 'Entity View';

  final VoteDefinitionStore targetStore;

  const AdminDebateCloseDebateOperationOutputPage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminDebateCloseDebateOperationOutputPageState(targetStore: targetStore);
}

class _AdminDebateCloseDebateOperationOutputPageState extends State<AdminDebateCloseDebateOperationOutputPage> {
  VoteDefinitionStore targetStore;

  final tableService = locator<TableService>();
  final AdminDebateCloseDebateOperationOutputPageStore pageStore = AdminDebateCloseDebateOperationOutputPageStore();
  final AdminDebateCloseDebateOperationOutputConfig pageConfig = AdminDebateCloseDebateOperationOutputConfig();
  AdminDebateCloseDebateOperationOutputPageActions pageActions;

  _AdminDebateCloseDebateOperationOutputPageState({@required this.targetStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminDebateCloseDebateOperationOutputPageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshVoteDefinition(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDebateCloseDebateOperationOutputPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDebateCloseDebateOperationOutputMobilePage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDebateCloseDebateOperationOutputTabletPage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDebateCloseDebateOperationOutputDesktopPage(context, targetStore, pageStore, pageConfig);
      }
      return getAdminDebateCloseDebateOperationOutputDesktopPage(context, targetStore, pageStore, pageConfig);
    });

    return layout;
  }
}
