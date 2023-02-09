//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.con.votes.view;

class AdminConVotesViewPageStore extends _AdminConVotesViewPageStore with _$AdminConVotesViewPageStore {}

abstract class _AdminConVotesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminConVotesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminConVotesViewConfig pageConfig) {}

  @observable
  AdminSimpleVoteStore targetStore;

  @action
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminSimpleVoteGetByIdentifier(
      targetStore,
      mask: '{created,type}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // User embedded table order

  // User aggregation actions

  @observable
  ObservableFuture simpleVoteUserStoreFuture;

  //OPERATIONS

}

class AdminConVotesViewPage extends StatefulWidget {
  static const String title = 'Create / View Vote';

  final AdminSimpleVoteStore targetStore;
  final AdminConStore ownerStore;

  const AdminConVotesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminConVotesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminConVotesViewPageState extends State<AdminConVotesViewPage> {
  AdminSimpleVoteStore targetStore;
  final AdminConStore ownerStore;

  final tableService = locator<TableService>();
  final AdminConVotesViewPageStore pageStore = AdminConVotesViewPageStore();
  final AdminConVotesViewConfig pageConfig = AdminConVotesViewConfig();
  AdminConVotesViewPageActions pageActions;

  _AdminConVotesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminConVotesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshSimpleVote(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminConVotesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminConVotesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminConVotesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminConVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminConVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
