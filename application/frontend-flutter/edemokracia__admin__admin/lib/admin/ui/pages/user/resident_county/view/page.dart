//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.user.resident_county.view;

class UserResidentCountyViewPageStore extends _UserResidentCountyViewPageStore with _$UserResidentCountyViewPageStore {}

abstract class _UserResidentCountyViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _UserResidentCountyViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, UserResidentCountyViewConfig pageConfig) {}

  @observable
  CountyStore targetStore;

  @action
  Future<void> refreshCounty(CountyStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaCountyGetByIdentifier(
      targetStore,
      mask: '{name}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // Cities embedded table order

  @observable
  int citiesSortColumnIndex;

  @observable
  String citiesSortColumnName;

  @observable
  bool citiesSortAsc;

  @observable
  Comparator citiesSortCompare;

  @action
  void citiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, CountyStore store) {
    if (citiesSortColumnIndex != sortColumnIndex) {
      citiesSortAsc = true;
    } else {
      citiesSortAsc = !citiesSortAsc;
    }
    citiesSortColumnIndex = sortColumnIndex;
    citiesSortColumnName = sortColumnName;
    citiesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaUserResidentCountyViewCities',
      sortColumnIndex: citiesSortColumnIndex,
      sortColumnName: citiesSortColumnName,
      sortAsc: citiesSortAsc,
    );

    store.cities.sort(sortCompare);
  }

  // Cities aggregation actions

  @observable
  ObservableFuture countyCitiesStoreFuture;

  //OPERATIONS

}

class UserResidentCountyViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final CountyStore targetStore;
  final UserStore ownerStore;

  const UserResidentCountyViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserResidentCountyViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _UserResidentCountyViewPageState extends State<UserResidentCountyViewPage> {
  CountyStore targetStore;
  final UserStore ownerStore;

  final tableService = locator<TableService>();
  final UserResidentCountyViewPageStore pageStore = UserResidentCountyViewPageStore();
  final UserResidentCountyViewConfig pageConfig = UserResidentCountyViewConfig();
  UserResidentCountyViewPageActions pageActions;

  _UserResidentCountyViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = UserResidentCountyViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshCounty(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, UserResidentCountyViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getUserResidentCountyViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getUserResidentCountyViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getUserResidentCountyViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getUserResidentCountyViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
