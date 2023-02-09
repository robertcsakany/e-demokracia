//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.con.votes.view;

class ConVotesViewPageStore extends _ConVotesViewPageStore with _$ConVotesViewPageStore {}

abstract class _ConVotesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _ConVotesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, ConVotesViewConfig pageConfig) {}

  @observable
  SimpleVoteStore targetStore;

  @action
  Future<void> refreshSimpleVote(SimpleVoteStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaSimpleVoteGetByIdentifier(
      targetStore,
      mask: '{created}',
    ));

    targetStore.user = await _actorRepository.edemokraciaSimpleVoteUserGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class ConVotesViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final SimpleVoteStore targetStore;
  final ConStore ownerStore;

  const ConVotesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConVotesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _ConVotesViewPageState extends State<ConVotesViewPage> {
  SimpleVoteStore targetStore;
  final ConStore ownerStore;

  final tableService = locator<TableService>();
  final ConVotesViewPageStore pageStore = ConVotesViewPageStore();
  final ConVotesViewConfig pageConfig = ConVotesViewConfig();
  ConVotesViewPageActions pageActions;

  _ConVotesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = ConVotesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshSimpleVote(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, ConVotesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getConVotesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getConVotesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getConVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getConVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
