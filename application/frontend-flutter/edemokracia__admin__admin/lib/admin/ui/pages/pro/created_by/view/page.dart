//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.pro.created_by.view;

class ProCreatedByViewPageStore extends _ProCreatedByViewPageStore with _$ProCreatedByViewPageStore {}

abstract class _ProCreatedByViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _ProCreatedByViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, ProCreatedByViewConfig pageConfig) {}

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

class ProCreatedByViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final UserStore targetStore;
  final ProStore ownerStore;

  const ProCreatedByViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProCreatedByViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _ProCreatedByViewPageState extends State<ProCreatedByViewPage> {
  UserStore targetStore;
  final ProStore ownerStore;

  final tableService = locator<TableService>();
  final ProCreatedByViewPageStore pageStore = ProCreatedByViewPageStore();
  final ProCreatedByViewConfig pageConfig = ProCreatedByViewConfig();
  ProCreatedByViewPageActions pageActions;

  _ProCreatedByViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = ProCreatedByViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshUser(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, ProCreatedByViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getProCreatedByViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getProCreatedByViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getProCreatedByViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getProCreatedByViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
