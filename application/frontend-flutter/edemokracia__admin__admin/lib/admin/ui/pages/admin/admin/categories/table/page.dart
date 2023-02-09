//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.categories.table;

class AdminAdminCategoriesTablePageStore extends _AdminAdminCategoriesTablePageStore with _$AdminAdminCategoriesTablePageStore {}

abstract class _AdminAdminCategoriesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;
  LoadingState createActionLoadingState;

  _AdminAdminCategoriesTablePageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    createActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminIssueCategoryStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
  ];

  final String mask = '{title,description}';

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

  int categoriesQueryLimit = (12.0 - 2).round();

  @observable
  List<AdminIssueCategoryStore> categoriesStoreList = ObservableList<AdminIssueCategoryStore>();

  @observable
  bool nextButtonEnable = false;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * categoriesQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int categoriesSortColumnIndex;

  @observable
  String categoriesSortColumnName;

  @observable
  bool categoriesSortAsc;

  @action
  void categoriesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (categoriesSortColumnIndex != sortColumnIndex) {
      categoriesSortAsc = true;
    } else {
      categoriesSortAsc = !categoriesSortAsc;
    }

    categoriesSortColumnIndex = sortColumnIndex;
    categoriesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminAdminCategoriesTableCategories',
      sortColumnIndex: categoriesSortColumnIndex,
      sortColumnName: categoriesSortColumnName,
      sortAsc: categoriesSortAsc,
    );
    getCategories();
  }

  @observable
  ObservableFuture adminCategoriesStoreFuture;

  @action
  Future<List<AdminIssueCategoryStore>> getCategories({int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? categoriesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    adminCategoriesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminCategoriesList(
      sortColumn: categoriesSortColumnName,
      sortAscending: categoriesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? categoriesStoreList.last : categoriesStoreList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminIssueCategoryStore> nextItemsList = await adminCategoriesStoreFuture;
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

    categoriesStoreList.clear();
    categoriesStoreList.addAll(nextItemsList);

    return categoriesStoreList;
  }

  // Categories range actions

  @action
  Future<void> deleteIssueCategory(AdminIssueCategoryStore targetStore) async {
    await _actorRepository.edemokraciaAdminIssueCategoryDelete(targetStore);
    getCategories();
  }

  @action
  Future<void> updateIssueCategory(AdminIssueCategoryStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminIssueCategoryUpdate(newTargetStore);
    await getCategories();
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminAdminCategoriesTablePage extends StatefulWidget {
  static const String title = 'Categories';

  @override
  State<StatefulWidget> createState() => _AdminAdminCategoriesTablePageState();
}

class _AdminAdminCategoriesTablePageState extends State<AdminAdminCategoriesTablePage> {
  final tableService = locator<TableService>();
  final AdminAdminCategoriesTablePageStore pageStore = AdminAdminCategoriesTablePageStore();
  final AdminAdminCategoriesTableConfig pageConfig = AdminAdminCategoriesTableConfig();
  AdminAdminCategoriesTablePageActions pageActions;

  _AdminAdminCategoriesTablePageState() {
    if (pageConfig.categoriesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.categoriesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.categoriesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.categoriesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminAdminCategoriesTableCategories', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.categoriesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings categoriesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminCategoriesTableCategories',
      sortColumnIndex: pageConfig.categoriesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.categoriesTableConfig.sortColumnName,
      sortAsc: pageConfig.categoriesTableConfig.sortAsc,
    );

    pageStore.categoriesSortColumnIndex = categoriesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.categoriesSortColumnName = categoriesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.categoriesSortAsc = categoriesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminCategoriesTablePageActions(navigation, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminCategoriesTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminAdminCategoriesTableMobilePage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminAdminCategoriesTableTabletPage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminAdminCategoriesTableDesktopPage(context, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminAdminCategoriesTableDesktopPage(context, pageStore, pageConfig);
    });

    return layout;
  }
}
