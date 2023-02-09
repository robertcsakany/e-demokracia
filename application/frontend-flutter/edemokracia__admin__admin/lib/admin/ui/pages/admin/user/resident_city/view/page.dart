//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.user.resident_city.view;

class AdminUserResidentCityViewPageStore extends _AdminUserResidentCityViewPageStore with _$AdminUserResidentCityViewPageStore {}

abstract class _AdminUserResidentCityViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminUserResidentCityViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminUserResidentCityViewConfig pageConfig) {
    if (targetStore.districts != null) {
      var dataInfo = EdemokraciaAdminUserResidentCityViewDistrictsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.districts.sort(TableUtility.getSortComparator(districtsSortColumnIndex, districtsSortAsc, dataInfo));
    }
  }

  @observable
  AdminCityStore targetStore;

  @action
  Future<void> refreshCity(AdminCityStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminCityGetByIdentifier(
      targetStore,
      mask: '{name,representation,districts{name}}',
    ));
  }

  @action
  Future<void> updateCity(AdminCityStore newTargetStore, AdminCityStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminCityUpdate(newTargetStore);
    await refreshCity(oldTargetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int districtsQueryLimit = (6.0 - 2).round();

  // Districts embedded table paging

  @computed
  int get districtsTableItemsRangeStart => districtsTablePageNumber * districtsQueryLimit + 1;

  @computed
  int get districtsTableItemsRangeEnd => districtsTableItemsRangeStart - 1 + districtsTablePagingList.length;

  @observable
  int districtsTablePageNumber = 0;

  @computed
  bool get districtsTablePreviousEnable => districtsTablePageNumber > 0;

  @computed
  bool get districtsTableNextEnable => (districtsTablePageNumber * districtsQueryLimit + districtsQueryLimit) < targetStore.districts.length;

  @action
  void districtsTableNextPage() {
    if (districtsTableNextEnable) {
      districtsTablePageNumber++;
    }
  }

  @action
  void districtsTablePreviousPage() {
    if (districtsTablePreviousEnable) {
      districtsTablePageNumber--;
    }
  }

  @computed
  List<AdminDistrictStore> get districtsTablePagingList {
    int subListStart = districtsTablePageNumber * districtsQueryLimit;
    int subListEnd;
    if (districtsTableNextEnable) {
      subListEnd = subListStart + districtsQueryLimit;
    } else {
      subListEnd = targetStore.districts.length;
    }
    return targetStore.districts.sublist(subListStart, subListEnd);
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
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminCityStore store) {
    if (districtsSortColumnIndex != sortColumnIndex) {
      districtsSortAsc = true;
    } else {
      districtsSortAsc = !districtsSortAsc;
    }
    districtsSortColumnIndex = sortColumnIndex;
    districtsSortColumnName = sortColumnName;
    districtsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminUserResidentCityViewDistricts',
      sortColumnIndex: districtsSortColumnIndex,
      sortColumnName: districtsSortColumnName,
      sortAsc: districtsSortAsc,
    );

    store.districts.sort(sortCompare);
  }

  // Districts aggregation actions

  @observable
  ObservableFuture cityDistrictsStoreFuture;

  @action
  Future<void> createDistricts(AdminCityStore ownerStore, AdminDistrictStore targetStore) async {
    await _actorRepository.edemokraciaAdminCityDistrictsCreate(ownerStore, targetStore);
    refreshCity(ownerStore);
  }

  @action
  Future<void> deleteDistrictsDistrict(AdminDistrictStore targetStore, AdminCityStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDistrictDelete(targetStore);
    refreshCity(ownerStore);
  }

  @action
  Future<void> updateDistrictsDistrict(AdminDistrictStore targetStore, AdminCityStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDistrictUpdate(targetStore);
    await refreshCity(ownerStore);
  }

  //OPERATIONS

}

class AdminUserResidentCityViewPage extends StatefulWidget {
  static const String title = 'City';

  final AdminCityStore targetStore;
  final AdminUserStore ownerStore;

  const AdminUserResidentCityViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminUserResidentCityViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminUserResidentCityViewPageState extends State<AdminUserResidentCityViewPage> {
  AdminCityStore targetStore;
  final AdminUserStore ownerStore;

  final tableService = locator<TableService>();
  final AdminUserResidentCityViewPageStore pageStore = AdminUserResidentCityViewPageStore();
  final AdminUserResidentCityViewConfig pageConfig = AdminUserResidentCityViewConfig();
  AdminUserResidentCityViewPageActions pageActions;

  _AdminUserResidentCityViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings districtsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminUserResidentCityViewDistricts',
      sortColumnIndex: pageConfig.districtsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.districtsTableConfig.sortColumnName,
      sortAsc: pageConfig.districtsTableConfig.sortAsc,
    );

    pageStore.districtsSortColumnIndex = districtsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.districtsSortColumnName = districtsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.districtsSortAsc = districtsSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminUserResidentCityViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshCity(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : (targetStore?.representation != null ? targetStore?.representation.toString() : ''));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminUserResidentCityViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminUserResidentCityViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminUserResidentCityViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminUserResidentCityViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
