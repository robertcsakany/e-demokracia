//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.vote_definition.vote_entries.view;

class VoteDefinitionVoteEntriesViewPageStore extends _VoteDefinitionVoteEntriesViewPageStore with _$VoteDefinitionVoteEntriesViewPageStore {}

abstract class _VoteDefinitionVoteEntriesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _VoteDefinitionVoteEntriesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, VoteDefinitionVoteEntriesViewConfig pageConfig) {}

  @observable
  VoteEntryStore targetStore;

  @action
  Future<void> refreshVoteEntry(VoteEntryStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaVoteEntryGetByIdentifier(
      targetStore,
      mask: '{created}',
    ));

    targetStore.user = await _actorRepository.edemokraciaVoteEntryUserGet(targetStore, mask: '{}');
    targetStore.voteDefinition = await _actorRepository.edemokraciaVoteEntryVoteDefinitionGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class VoteDefinitionVoteEntriesViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final VoteEntryStore targetStore;
  final VoteDefinitionStore ownerStore;

  const VoteDefinitionVoteEntriesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VoteDefinitionVoteEntriesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _VoteDefinitionVoteEntriesViewPageState extends State<VoteDefinitionVoteEntriesViewPage> {
  VoteEntryStore targetStore;
  final VoteDefinitionStore ownerStore;

  final tableService = locator<TableService>();
  final VoteDefinitionVoteEntriesViewPageStore pageStore = VoteDefinitionVoteEntriesViewPageStore();
  final VoteDefinitionVoteEntriesViewConfig pageConfig = VoteDefinitionVoteEntriesViewConfig();
  VoteDefinitionVoteEntriesViewPageActions pageActions;

  _VoteDefinitionVoteEntriesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = VoteDefinitionVoteEntriesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshVoteEntry(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, VoteDefinitionVoteEntriesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getVoteDefinitionVoteEntriesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getVoteDefinitionVoteEntriesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getVoteDefinitionVoteEntriesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getVoteDefinitionVoteEntriesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
