//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.user.resident_city.update;

class AdminUserResidentCityUpdatePageStore extends _AdminUserResidentCityUpdatePageStore with _$AdminUserResidentCityUpdatePageStore {}

abstract class _AdminUserResidentCityUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminUserResidentCityUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminUserResidentCityUpdateConfig pageConfig) {
    if (targetStore.districts != null) {
      var dataInfo = EdemokraciaAdminUserResidentCityEditDistrictsMobileTable(context, this, pageConfig, disabled: true);
      targetStore.districts.sort(TableUtility.getSortComparator(districtsSortColumnIndex, districtsSortAsc, dataInfo));
    }
  }

  @observable
  AdminCityStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'county': ValidationError(),
    'name': ValidationError(),
    'representation': ValidationError(),
    'districts': ValidationError(),
  };

  @action
  Future<void> refreshCity(AdminCityStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminCityGetByIdentifier(targetStore));
  }

  @action
  Future<AdminCityStore> validate(AdminCityStore targetStore) async {
    return await _actorRepository.edemokraciaAdminCityValidateForUpdate(targetStore);
  }

  @action
  Future<String> uploadFile(String attributePath, PlatformFile file) async {
    return await _actorRepository.uploadFile(attributePath, file);
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

  // Districts range actions

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
      'EdemokraciaAdminUserResidentCityEditDistricts',
      sortColumnIndex: districtsSortColumnIndex,
      sortColumnName: districtsSortColumnName,
      sortAsc: districtsSortAsc,
    );

    store.districts.sort(sortCompare);
  }

  // Districts aggregation actions

  @observable
  ObservableFuture cityDistrictsStoreFuture;
}

class AdminUserResidentCityUpdatePage extends StatefulWidget {
  static const String title = 'City';

  final AdminCityStore targetStore;

  const AdminUserResidentCityUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminUserResidentCityUpdatePageState(targetStore: targetStore);
}

class _AdminUserResidentCityUpdatePageState extends State<AdminUserResidentCityUpdatePage> {
  final AdminCityStore targetStore;

  final tableService = locator<TableService>();
  final AdminUserResidentCityUpdatePageStore pageStore = AdminUserResidentCityUpdatePageStore();
  final AdminUserResidentCityUpdateConfig pageConfig = AdminUserResidentCityUpdateConfig();
  AdminUserResidentCityUpdatePageActions pageActions;

  _AdminUserResidentCityUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    /// Aggregate table sorting variables init with default values
    SortSettings districtsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminUserResidentCityEditDistricts',
      sortColumnIndex: pageConfig.districtsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.districtsTableConfig.sortColumnName,
      sortAsc: pageConfig.districtsTableConfig.sortAsc,
    );

    pageStore.districtsSortColumnIndex = districtsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.districtsSortColumnName = districtsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.districtsSortAsc = districtsSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminUserResidentCityUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshCity(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : (targetStore?.representation != null ? targetStore?.representation.toString() : ''));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'name': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminUserResidentCityUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminUserResidentCityUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminUserResidentCityUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminUserResidentCityUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
