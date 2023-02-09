//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.user.activity_counties.view;

class AdminUserActivityCountiesViewPageStore extends _AdminUserActivityCountiesViewPageStore with _$AdminUserActivityCountiesViewPageStore {}

abstract class _AdminUserActivityCountiesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminUserActivityCountiesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminUserActivityCountiesViewConfig pageConfig) {
    if (targetStore.cities != null) {
      var dataInfo = EdemokraciaAdminUserActivityCountiesViewCitiesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.cities.sort(TableUtility.getSortComparator(citiesSortColumnIndex, citiesSortAsc, dataInfo));
    }
  }

  @observable
  AdminCountyStore targetStore;

  @action
  Future<void> refreshCounty(AdminCountyStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminCountyGetByIdentifier(
      targetStore,
      mask: '{name,representation,cities{name}}',
    ));
  }

  @action
  Future<void> updateCounty(AdminCountyStore newTargetStore, AdminCountyStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminCountyUpdate(newTargetStore);
    await refreshCounty(oldTargetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int citiesQueryLimit = (10.0 - 2).round();

  // Cities embedded table paging

  @computed
  int get citiesTableItemsRangeStart => citiesTablePageNumber * citiesQueryLimit + 1;

  @computed
  int get citiesTableItemsRangeEnd => citiesTableItemsRangeStart - 1 + citiesTablePagingList.length;

  @observable
  int citiesTablePageNumber = 0;

  @computed
  bool get citiesTablePreviousEnable => citiesTablePageNumber > 0;

  @computed
  bool get citiesTableNextEnable => (citiesTablePageNumber * citiesQueryLimit + citiesQueryLimit) < targetStore.cities.length;

  @action
  void citiesTableNextPage() {
    if (citiesTableNextEnable) {
      citiesTablePageNumber++;
    }
  }

  @action
  void citiesTablePreviousPage() {
    if (citiesTablePreviousEnable) {
      citiesTablePageNumber--;
    }
  }

  @computed
  List<AdminCityStore> get citiesTablePagingList {
    int subListStart = citiesTablePageNumber * citiesQueryLimit;
    int subListEnd;
    if (citiesTableNextEnable) {
      subListEnd = subListStart + citiesQueryLimit;
    } else {
      subListEnd = targetStore.cities.length;
    }
    return targetStore.cities.sublist(subListStart, subListEnd);
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
  void citiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminCountyStore store) {
    if (citiesSortColumnIndex != sortColumnIndex) {
      citiesSortAsc = true;
    } else {
      citiesSortAsc = !citiesSortAsc;
    }
    citiesSortColumnIndex = sortColumnIndex;
    citiesSortColumnName = sortColumnName;
    citiesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminUserActivityCountiesViewCities',
      sortColumnIndex: citiesSortColumnIndex,
      sortColumnName: citiesSortColumnName,
      sortAsc: citiesSortAsc,
    );

    store.cities.sort(sortCompare);
  }

  // Cities aggregation actions

  @observable
  ObservableFuture countyCitiesStoreFuture;

  @action
  Future<void> createCities(AdminCountyStore ownerStore, AdminCityStore targetStore) async {
    await _actorRepository.edemokraciaAdminCountyCitiesCreate(ownerStore, targetStore);
    refreshCounty(ownerStore);
  }

  @action
  Future<void> deleteCitiesCity(AdminCityStore targetStore, AdminCountyStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCityDelete(targetStore);
    refreshCounty(ownerStore);
  }

  @action
  Future<void> updateCitiesCity(AdminCityStore targetStore, AdminCountyStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCityUpdate(targetStore);
    await refreshCounty(ownerStore);
  }

  //OPERATIONS

}

class AdminUserActivityCountiesViewPage extends StatefulWidget {
  static const String title = 'County';

  final AdminCountyStore targetStore;
  final AdminUserStore ownerStore;

  const AdminUserActivityCountiesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminUserActivityCountiesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminUserActivityCountiesViewPageState extends State<AdminUserActivityCountiesViewPage> {
  AdminCountyStore targetStore;
  final AdminUserStore ownerStore;

  final tableService = locator<TableService>();
  final AdminUserActivityCountiesViewPageStore pageStore = AdminUserActivityCountiesViewPageStore();
  final AdminUserActivityCountiesViewConfig pageConfig = AdminUserActivityCountiesViewConfig();
  AdminUserActivityCountiesViewPageActions pageActions;

  _AdminUserActivityCountiesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings citiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminUserActivityCountiesViewCities',
      sortColumnIndex: pageConfig.citiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.citiesTableConfig.sortColumnName,
      sortAsc: pageConfig.citiesTableConfig.sortAsc,
    );

    pageStore.citiesSortColumnIndex = citiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.citiesSortColumnName = citiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.citiesSortAsc = citiesSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminUserActivityCountiesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshCounty(targetStore).then((_) {
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
        return getAdminUserActivityCountiesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminUserActivityCountiesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminUserActivityCountiesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminUserActivityCountiesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
