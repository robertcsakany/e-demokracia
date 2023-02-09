//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue_category.subcategories.update;

class AdminIssueCategorySubcategoriesUpdatePageStore extends _AdminIssueCategorySubcategoriesUpdatePageStore
    with _$AdminIssueCategorySubcategoriesUpdatePageStore {}

abstract class _AdminIssueCategorySubcategoriesUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminIssueCategorySubcategoriesUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminIssueCategorySubcategoriesUpdateConfig pageConfig) {
    if (targetStore.subcategories != null) {
      var dataInfo = EdemokraciaAdminIssueCategorySubcategoriesEditSubcategoriesMobileTable(context, this, pageConfig, disabled: true);
      targetStore.subcategories.sort(TableUtility.getSortComparator(subcategoriesSortColumnIndex, subcategoriesSortAsc, dataInfo));
    }
  }

  @observable
  AdminIssueCategoryStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'description': ValidationError(),
    'title': ValidationError(),
    'owner': ValidationError(),
    'subcategories': ValidationError(),
  };

  @action
  Future<void> refreshIssueCategory(AdminIssueCategoryStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueCategoryGetByIdentifier(targetStore));
  }

  @action
  Future<AdminIssueCategoryStore> validate(AdminIssueCategoryStore targetStore) async {
    return await _actorRepository.edemokraciaAdminIssueCategoryValidateForUpdate(targetStore);
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

  // Subcategories range actions

  int ownerQueryLimit = 5; // For judo link setter dialog

  // Owner range actions

  @observable
  ObservableFuture issueCategoryOwnerStoreRangeFuture;

  @observable
  int ownerSortColumnIndexRange;

  @observable
  String ownerSortColumnNameRange;

  @observable
  bool ownerSortAscRange;

  @observable
  List<AdminUserStore> ownerStoreRangeList = ObservableList<AdminUserStore>();

  @computed
  int get ownerTableForRangeItemsRangeStart => nextPageCounterForOwnerRange * ownerQueryLimit + 1;

  @computed
  int get ownerTableForRangeItemsRangeEnd => ownerTableForRangeItemsRangeStart - 1 + ownerStoreRangeList.length;

  @observable
  bool nextButtonEnableForOwnerRange = false;

  @observable
  int nextPageCounterForOwnerRange = 0;

  @computed
  bool get previousButtonEnableForOwnerRange => nextPageCounterForOwnerRange > 0;

  @action
  void ownerSetSortRange(AdminIssueCategoryStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (ownerSortColumnIndexRange != sortColumnIndex) {
      ownerSortAscRange = true;
    } else {
      ownerSortAscRange = !ownerSortAscRange;
    }

    ownerSortColumnIndexRange = sortColumnIndex;
    ownerSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminIssueCategorySubcategoriesEditOwnerRange',
      sortColumnIndex: ownerSortColumnIndexRange,
      sortColumnName: ownerSortColumnNameRange,
      sortAsc: ownerSortAscRange,
    );

    getRangeForOwner(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminUserStore>> getRangeForOwner(AdminIssueCategoryStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? ownerQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForOwnerRange = 0;
    }

    issueCategoryOwnerStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminIssueCategoryRangeOfOwnerToUpdate(
      ownerStore,
      sortColumn: ownerSortColumnNameRange,
      sortAscending: ownerSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? ownerStoreRangeList.last : ownerStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminUserStore> nextItemsList = await issueCategoryOwnerStoreRangeFuture;
    nextButtonEnableForOwnerRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForOwnerRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForOwnerRange++;
      } else {
        nextPageCounterForOwnerRange--;
      }
    }

    ownerStoreRangeList.clear();
    ownerStoreRangeList.addAll(nextItemsList);
    return ownerStoreRangeList;
  }

  // Owner embedded table order

  // Owner aggregation actions

  @observable
  ObservableFuture issueCategoryOwnerStoreFuture;

  @action
  Future<void> setOwner(AdminIssueCategoryStore ownerStore, AdminUserStore selectedStore) async {
    ownerStore.setOwner(selectedStore);
  }

  @action
  Future<void> unsetOwner(AdminIssueCategoryStore ownerStore) async {
    ownerStore.setOwner(null);
  }

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
      'EdemokraciaAdminIssueCategorySubcategoriesEditSubcategories',
      sortColumnIndex: subcategoriesSortColumnIndex,
      sortColumnName: subcategoriesSortColumnName,
      sortAsc: subcategoriesSortAsc,
    );

    store.subcategories.sort(sortCompare);
  }

  // Subcategories aggregation actions

  @observable
  ObservableFuture issueCategorySubcategoriesStoreFuture;
}

class AdminIssueCategorySubcategoriesUpdatePage extends StatefulWidget {
  static const String title = 'View / Edit Category';

  final AdminIssueCategoryStore targetStore;

  const AdminIssueCategorySubcategoriesUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminIssueCategorySubcategoriesUpdatePageState(targetStore: targetStore);
}

class _AdminIssueCategorySubcategoriesUpdatePageState extends State<AdminIssueCategorySubcategoriesUpdatePage> {
  final AdminIssueCategoryStore targetStore;

  final tableService = locator<TableService>();
  final AdminIssueCategorySubcategoriesUpdatePageStore pageStore = AdminIssueCategorySubcategoriesUpdatePageStore();
  final AdminIssueCategorySubcategoriesUpdateConfig pageConfig = AdminIssueCategorySubcategoriesUpdateConfig();
  AdminIssueCategorySubcategoriesUpdatePageActions pageActions;

  _AdminIssueCategorySubcategoriesUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    /// Rangeable (link) sorting variables init with default values
    SortSettings ownerLinkRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminIssueCategorySubcategoriesEditOwnerRange',
      sortColumnIndex: pageConfig.ownerTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.ownerTableConfig.sortColumnName,
      sortAsc: pageConfig.ownerTableConfig.sortAsc,
    );

    pageStore.ownerSortColumnIndexRange = ownerLinkRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.ownerSortColumnNameRange = ownerLinkRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.ownerSortAscRange = ownerLinkRangeSortSettings.sortAsc;

    /// Aggregate table sorting variables init with default values
    SortSettings subcategoriesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminIssueCategorySubcategoriesEditSubcategories',
      sortColumnIndex: pageConfig.subcategoriesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.subcategoriesTableConfig.sortColumnName,
      sortAsc: pageConfig.subcategoriesTableConfig.sortAsc,
    );

    pageStore.subcategoriesSortColumnIndex = subcategoriesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.subcategoriesSortColumnName = subcategoriesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.subcategoriesSortAsc = subcategoriesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminIssueCategorySubcategoriesUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshIssueCategory(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueCategorySubcategoriesUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueCategorySubcategoriesUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueCategorySubcategoriesUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueCategorySubcategoriesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminIssueCategorySubcategoriesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
