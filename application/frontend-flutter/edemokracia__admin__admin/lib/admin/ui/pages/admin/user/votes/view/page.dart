//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.user.votes.view;

class AdminUserVotesViewPageStore extends _AdminUserVotesViewPageStore with _$AdminUserVotesViewPageStore {}

abstract class _AdminUserVotesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminUserVotesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminUserVotesViewConfig pageConfig) {}

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

class AdminUserVotesViewPage extends StatefulWidget {
  static const String title = 'Create / View Vote';

  final AdminSimpleVoteStore targetStore;
  final AdminUserStore ownerStore;

  const AdminUserVotesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminUserVotesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminUserVotesViewPageState extends State<AdminUserVotesViewPage> {
  AdminSimpleVoteStore targetStore;
  final AdminUserStore ownerStore;

  final tableService = locator<TableService>();
  final AdminUserVotesViewPageStore pageStore = AdminUserVotesViewPageStore();
  final AdminUserVotesViewConfig pageConfig = AdminUserVotesViewConfig();
  AdminUserVotesViewPageActions pageActions;

  _AdminUserVotesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminUserVotesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshSimpleVote(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminUserVotesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminUserVotesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminUserVotesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminUserVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminUserVotesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
