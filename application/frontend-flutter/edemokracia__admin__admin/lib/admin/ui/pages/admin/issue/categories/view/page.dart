//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.categories.view;

class AdminIssueCategoriesViewPageStore extends _AdminIssueCategoriesViewPageStore with _$AdminIssueCategoriesViewPageStore {}

abstract class _AdminIssueCategoriesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminIssueCategoriesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminIssueCategoriesViewConfig pageConfig) {
    if (targetStore.subcategories != null) {
      var dataInfo = EdemokraciaAdminIssueCategoriesViewSubcategoriesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.subcategories.sort(TableUtility.getSortComparator(subcategoriesSortColumnIndex, subcategoriesSortAsc, dataInfo));
    }
  }

  @observable
  AdminIssueCategoryStore targetStore;

  @action
  Future<void> refreshIssueCategory(AdminIssueCategoryStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueCategoryGetByIdentifier(
      targetStore,
      mask: '{title,description,owner{representation},subcategories{title,description}}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int subcategoriesQueryLimit = (12.0 - 2).round();

  // Subcategories embedded table paging

  @computed
  int get subcategoriesTableItemsRangeStart => subcategoriesTablePageNumber * subcategoriesQueryLimit + 1;

  @computed
  int get subcategoriesTableItemsRangeEnd => subcategoriesTableItemsRangeStart - 1 + subcategoriesTablePagingList.length;

  @observable
  int subcategoriesTablePageNumber = 0;

  @computed
  bool get subcategoriesTablePreviousEnable => subcategoriesTablePageNumber > 0;

  @computed
  bool get subcategoriesTableNextEnable =>
      (subcategoriesTablePageNumber * subcategoriesQueryLimit + subcategoriesQueryLimit) < targetStore.subcategories.length;

  @action
  void subcategoriesTableNextPage() {
    if (subcategoriesTableNextEnable) {
      subcategoriesTablePageNumber++;
    }
  }

  @action
  void subcategoriesTablePreviousPage() {
    if (subcategoriesTablePreviousEnable) {
      subcategoriesTablePageNumber--;
    }
  }

  @computed
  List<AdminIssueCategoryStore> get subcategoriesTablePagingList {
    return targetStore.subcategories;
  }

  // Owner embedded table order

  // Owner aggregation actions

  @observable
  ObservableFuture issueCategoryOwnerStoreFuture;

  // Subcategories embedded table order

  @observable
  int subcategoriesSortColumnIndex;

  @observable
  String subcategoriesSortColumnName;

  @observable
  bool subcategoriesSortAsc;

  @observable
  Comparator subcategoriesSortCompare;

  @action
  void subcategoriesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminIssueCategoryStore store) {
    if (subcategoriesSortColumnIndex != sortColumnIndex) {
      subcategoriesSortAsc = true;
    } else {
      subcategoriesSortAsc = !subcategoriesSortAsc;
    }
    subcategoriesSortColumnIndex = sortColumnIndex;
    subcategoriesSortColumnName = sortColumnName;
    subcategoriesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminIssueCategoriesViewSubcategories',
      sortColumnIndex: subcategoriesSortColumnIndex,
      sortColumnName: subcategoriesSortColumnName,
      sortAsc: subcategoriesSortAsc,
    );

    store.subcategories.sort(sortCompare);
  }

  // Subcategories aggregation actions

  @observable
  ObservableFuture issueCategorySubcategoriesStoreFuture;

  @action
  Future<void> createSubcategories(AdminIssueCategoryStore ownerStore, AdminIssueCategoryStore targetStore) async {
    await _actorRepository.edemokraciaAdminIssueCategorySubcategoriesCreate(ownerStore, targetStore);
    refreshIssueCategory(ownerStore);
  }

  @action
  Future<void> deleteSubcategoriesIssueCategory(AdminIssueCategoryStore targetStore, AdminIssueCategoryStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueCategoryDelete(targetStore);
    refreshIssueCategory(ownerStore);
  }

  @action
  Future<void> updateSubcategoriesIssueCategory(AdminIssueCategoryStore targetStore, AdminIssueCategoryStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueCategoryUpdate(targetStore);
    await refreshIssueCategory(ownerStore);
  }

  //OPERATIONS

}

class AdminIssueCategoriesViewPage extends StatefulWidget {
  static const String title = 'View / Edit Category';

  final AdminIssueCategoryStore targetStore;
  final AdminIssueStore ownerStore;

  const AdminIssueCategoriesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminIssueCategoriesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminIssueCategoriesViewPageState extends State<AdminIssueCategoriesViewPage> {
  AdminIssueCategoryStore targetStore;
  final AdminIssueStore ownerStore;

  final tableService = locator<TableService>();
  final AdminIssueCategoriesViewPageStore pageStore = AdminIssueCategoriesViewPageStore();
  final AdminIssueCategoriesViewConfig pageConfig = AdminIssueCategoriesViewConfig();
  AdminIssueCategoriesViewPageActions pageActions;

  _AdminIssueCategoriesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings subcategoriesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminIssueCategoriesViewSubcategories',
      sortColumnIndex: pageConfig.subcategoriesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.subcategoriesTableConfig.sortColumnName,
      sortAsc: pageConfig.subcategoriesTableConfig.sortAsc,
    );

    pageStore.subcategoriesSortColumnIndex = subcategoriesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.subcategoriesSortColumnName = subcategoriesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.subcategoriesSortAsc = subcategoriesSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminIssueCategoriesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssueCategory(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueCategoriesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueCategoriesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueCategoriesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueCategoriesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminIssueCategoriesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
