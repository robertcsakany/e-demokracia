//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.counties.table;

class AdminAdminCountiesTablePageStore extends _AdminAdminCountiesTablePageStore with _$AdminAdminCountiesTablePageStore {}

abstract class _AdminAdminCountiesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;
  LoadingState createActionLoadingState;

  _AdminAdminCountiesTablePageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    createActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminCountyStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'name', attributeLabel: 'Name', filterType: FilterType.string),
  ];

  final String mask = '{name}';

  bool filtersHorizontalOrientation = true;

  void setFiltersHorizontalOrientation(bool horizontal) {
    filtersHorizontalOrientation = horizontal;
  }

  @observable
  int pageMaxCol = 12;

  @action
  void setPageMaxCol(int maxCol) {
    pageMaxCol = maxCol;
  }

  @computed
  int get getPlusRowSize {
    if (availableFilterList.isEmpty) {
      return 0;
    }

    if (!filtersHorizontalOrientation) {
      return availableFilterList.length;
    }

    if (availableFilterList.length % (pageMaxCol / 4) == 0) {
      return (availableFilterList.length / (pageMaxCol / 4)).round();
    } else {
      return (availableFilterList.length / (pageMaxCol / 4)).truncate() + 1;
    }
  }

  @observable
  ObservableList<FilterStore> availableFilterList = <FilterStore>[].asObservable();

  @action
  void addNewFilter(FilterStore newFilterStore) => availableFilterList.add(FilterStore.clone(newFilterStore));

  int countiesQueryLimit = (12.0 - 2).round();

  @observable
  List<AdminCountyStore> countiesStoreList = ObservableList<AdminCountyStore>();

  @observable
  bool nextButtonEnable = false;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * countiesQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int countiesSortColumnIndex;

  @observable
  String countiesSortColumnName;

  @observable
  bool countiesSortAsc;

  @action
  void countiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (countiesSortColumnIndex != sortColumnIndex) {
      countiesSortAsc = true;
    } else {
      countiesSortAsc = !countiesSortAsc;
    }

    countiesSortColumnIndex = sortColumnIndex;
    countiesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminAdminCountiesTableCounties',
      sortColumnIndex: countiesSortColumnIndex,
      sortColumnName: countiesSortColumnName,
      sortAsc: countiesSortAsc,
    );
    getCounties();
  }

  @observable
  ObservableFuture adminCountiesStoreFuture;

  @action
  Future<List<AdminCountyStore>> getCounties({int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? countiesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    adminCountiesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminCountiesList(
      sortColumn: countiesSortColumnName,
      sortAscending: countiesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? countiesStoreList.last : countiesStoreList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminCountyStore> nextItemsList = await adminCountiesStoreFuture;
    nextButtonEnable = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnable && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounter++;
      } else {
        nextPageCounter--;
      }
    }

    countiesStoreList.clear();
    countiesStoreList.addAll(nextItemsList);

    return countiesStoreList;
  }

  // Counties range actions

  @action
  Future<void> deleteCounty(AdminCountyStore targetStore) async {
    await _actorRepository.edemokraciaAdminCountyDelete(targetStore);
    getCounties();
  }

  @action
  Future<void> updateCounty(AdminCountyStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminCountyUpdate(newTargetStore);
    await getCounties();
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminAdminCountiesTablePage extends StatefulWidget {
  static const String title = 'Counties';

  @override
  State<StatefulWidget> createState() => _AdminAdminCountiesTablePageState();
}

class _AdminAdminCountiesTablePageState extends State<AdminAdminCountiesTablePage> {
  final tableService = locator<TableService>();
  final AdminAdminCountiesTablePageStore pageStore = AdminAdminCountiesTablePageStore();
  final AdminAdminCountiesTableConfig pageConfig = AdminAdminCountiesTableConfig();
  AdminAdminCountiesTablePageActions pageActions;

  _AdminAdminCountiesTablePageState() {
    if (pageConfig.countiesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.countiesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.countiesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.countiesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminAdminCountiesTableCounties', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.countiesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings countiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminCountiesTableCounties',
      sortColumnIndex: pageConfig.countiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.countiesTableConfig.sortColumnName,
      sortAsc: pageConfig.countiesTableConfig.sortAsc,
    );

    pageStore.countiesSortColumnIndex = countiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.countiesSortColumnName = countiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.countiesSortAsc = countiesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminCountiesTablePageActions(navigation, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminCountiesTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getCounties();
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminAdminCountiesTableMobilePage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminAdminCountiesTableTabletPage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminAdminCountiesTableDesktopPage(context, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminAdminCountiesTableDesktopPage(context, pageStore, pageConfig);
    });

    return layout;
  }
}
