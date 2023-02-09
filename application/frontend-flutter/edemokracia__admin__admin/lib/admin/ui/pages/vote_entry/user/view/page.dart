//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.vote_entry.user.view;

class VoteEntryUserViewPageStore extends _VoteEntryUserViewPageStore with _$VoteEntryUserViewPageStore {}

abstract class _VoteEntryUserViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _VoteEntryUserViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, VoteEntryUserViewConfig pageConfig) {}

  @observable
  UserStore targetStore;

  @action
  Future<void> refreshUser(UserStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaUserGetByIdentifier(
      targetStore,
      mask: '{userName}',
    ));

    targetStore.residentCity = await _actorRepository.edemokraciaUserResidentCityGet(targetStore, mask: '{}');
    targetStore.residentCounty = await _actorRepository.edemokraciaUserResidentCountyGet(targetStore, mask: '{}');
    targetStore.residentDistrict = await _actorRepository.edemokraciaUserResidentDistrictGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class VoteEntryUserViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final UserStore targetStore;
  final VoteEntryStore ownerStore;

  const VoteEntryUserViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VoteEntryUserViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _VoteEntryUserViewPageState extends State<VoteEntryUserViewPage> {
  UserStore targetStore;
  final VoteEntryStore ownerStore;

  final tableService = locator<TableService>();
  final VoteEntryUserViewPageStore pageStore = VoteEntryUserViewPageStore();
  final VoteEntryUserViewConfig pageConfig = VoteEntryUserViewConfig();
  VoteEntryUserViewPageActions pageActions;

  _VoteEntryUserViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = VoteEntryUserViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshUser(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, VoteEntryUserViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getVoteEntryUserViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getVoteEntryUserViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getVoteEntryUserViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getVoteEntryUserViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
