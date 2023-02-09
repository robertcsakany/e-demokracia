//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.user.resident_city.view;

class UserResidentCityViewPageStore extends _UserResidentCityViewPageStore with _$UserResidentCityViewPageStore {}

abstract class _UserResidentCityViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _UserResidentCityViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, UserResidentCityViewConfig pageConfig) {}

  @observable
  CityStore targetStore;

  @action
  Future<void> refreshCity(CityStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaCityGetByIdentifier(
      targetStore,
      mask: '{name}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // Districts embedded table order

  @observable
  int districtsSortColumnIndex;

  @observable
  String districtsSortColumnName;

  @observable
  bool districtsSortAsc;

  @observable
  Comparator districtsSortCompare;

  @action
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, CityStore store) {
    if (districtsSortColumnIndex != sortColumnIndex) {
      districtsSortAsc = true;
    } else {
      districtsSortAsc = !districtsSortAsc;
    }
    districtsSortColumnIndex = sortColumnIndex;
    districtsSortColumnName = sortColumnName;
    districtsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaUserResidentCityViewDistricts',
      sortColumnIndex: districtsSortColumnIndex,
      sortColumnName: districtsSortColumnName,
      sortAsc: districtsSortAsc,
    );

    store.districts.sort(sortCompare);
  }

  // Districts aggregation actions

  @observable
  ObservableFuture cityDistrictsStoreFuture;

  //OPERATIONS

}

class UserResidentCityViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final CityStore targetStore;
  final UserStore ownerStore;

  const UserResidentCityViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserResidentCityViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _UserResidentCityViewPageState extends State<UserResidentCityViewPage> {
  CityStore targetStore;
  final UserStore ownerStore;

  final tableService = locator<TableService>();
  final UserResidentCityViewPageStore pageStore = UserResidentCityViewPageStore();
  final UserResidentCityViewConfig pageConfig = UserResidentCityViewConfig();
  UserResidentCityViewPageActions pageActions;

  _UserResidentCityViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = UserResidentCityViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshCity(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, UserResidentCityViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getUserResidentCityViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getUserResidentCityViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getUserResidentCityViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getUserResidentCityViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
