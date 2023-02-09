//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.vote_entry.vote_definition.view;

class VoteEntryVoteDefinitionViewPageStore extends _VoteEntryVoteDefinitionViewPageStore with _$VoteEntryVoteDefinitionViewPageStore {}

abstract class _VoteEntryVoteDefinitionViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _VoteEntryVoteDefinitionViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, VoteEntryVoteDefinitionViewConfig pageConfig) {}

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

class VoteEntryVoteDefinitionViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final VoteDefinitionStore targetStore;
  final VoteEntryStore ownerStore;

  const VoteEntryVoteDefinitionViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VoteEntryVoteDefinitionViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _VoteEntryVoteDefinitionViewPageState extends State<VoteEntryVoteDefinitionViewPage> {
  VoteDefinitionStore targetStore;
  final VoteEntryStore ownerStore;

  final tableService = locator<TableService>();
  final VoteEntryVoteDefinitionViewPageStore pageStore = VoteEntryVoteDefinitionViewPageStore();
  final VoteEntryVoteDefinitionViewConfig pageConfig = VoteEntryVoteDefinitionViewConfig();
  VoteEntryVoteDefinitionViewPageActions pageActions;

  _VoteEntryVoteDefinitionViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = VoteEntryVoteDefinitionViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshVoteDefinition(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, VoteEntryVoteDefinitionViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getVoteEntryVoteDefinitionViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getVoteEntryVoteDefinitionViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getVoteEntryVoteDefinitionViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getVoteEntryVoteDefinitionViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
