//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.debates.view;

class AdminIssueDebatesViewPageStore extends _AdminIssueDebatesViewPageStore with _$AdminIssueDebatesViewPageStore {}

abstract class _AdminIssueDebatesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminIssueDebatesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminIssueDebatesViewConfig pageConfig) {}

  @observable
  AdminIssueDebateStore targetStore;

  @action
  Future<void> refreshIssueDebate(AdminIssueDebateStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueDebateGetByIdentifier(
      targetStore,
      mask: '{description}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminIssueDebatesViewPage extends StatefulWidget {
  static const String title = 'TransferObject View';

  final AdminIssueDebateStore targetStore;
  final AdminIssueStore ownerStore;

  const AdminIssueDebatesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminIssueDebatesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminIssueDebatesViewPageState extends State<AdminIssueDebatesViewPage> {
  AdminIssueDebateStore targetStore;
  final AdminIssueStore ownerStore;

  final tableService = locator<TableService>();
  final AdminIssueDebatesViewPageStore pageStore = AdminIssueDebatesViewPageStore();
  final AdminIssueDebatesViewConfig pageConfig = AdminIssueDebatesViewConfig();
  AdminIssueDebatesViewPageActions pageActions;

  _AdminIssueDebatesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminIssueDebatesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssueDebate(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueDebatesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueDebatesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueDebatesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueDebatesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminIssueDebatesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
