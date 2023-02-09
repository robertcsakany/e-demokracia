//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.debate.debate_vote.view;

class DebateDebateVoteViewPageStore extends _DebateDebateVoteViewPageStore with _$DebateDebateVoteViewPageStore {}

abstract class _DebateDebateVoteViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _DebateDebateVoteViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, DebateDebateVoteViewConfig pageConfig) {}

  @observable
  VoteDefinitionStore targetStore;

  @action
  Future<void> refreshVoteDefinition(VoteDefinitionStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaVoteDefinitionGetByIdentifier(
      targetStore,
      mask: '{title}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class DebateDebateVoteViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final VoteDefinitionStore targetStore;
  final DebateStore ownerStore;

  const DebateDebateVoteViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DebateDebateVoteViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _DebateDebateVoteViewPageState extends State<DebateDebateVoteViewPage> {
  VoteDefinitionStore targetStore;
  final DebateStore ownerStore;

  final tableService = locator<TableService>();
  final DebateDebateVoteViewPageStore pageStore = DebateDebateVoteViewPageStore();
  final DebateDebateVoteViewConfig pageConfig = DebateDebateVoteViewConfig();
  DebateDebateVoteViewPageActions pageActions;

  _DebateDebateVoteViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = DebateDebateVoteViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshVoteDefinition(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, DebateDebateVoteViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getDebateDebateVoteViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getDebateDebateVoteViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getDebateDebateVoteViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getDebateDebateVoteViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
