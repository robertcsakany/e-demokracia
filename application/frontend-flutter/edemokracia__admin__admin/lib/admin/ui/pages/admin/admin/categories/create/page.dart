//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.categories.create;

class AdminAdminCategoriesCreatePageStore extends _AdminAdminCategoriesCreatePageStore with _$AdminAdminCategoriesCreatePageStore {}

abstract class _AdminAdminCategoriesCreatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveCreateActionLoadingState;

  _AdminAdminCategoriesCreatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveCreateActionLoadingState = LoadingState(pageState.setDisabledByLoading);
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
  Future<AdminIssueCategoryStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminIssueCategoryDefault();
  }

  @action
  Future<AdminIssueCategoryStore> validate(AdminIssueCategoryStore targetStore) async {
    return await _actorRepository.edemokraciaAdminAdminCategoriesValidateForCreate(targetStore);
  }

  @action
  Future<AdminIssueCategoryStore> createCategories(AdminIssueCategoryStore targetStore) async {
    return await _actorRepository.edemokraciaAdminAdminCategoriesCreate(targetStore);
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
      'EdemokraciaAdminAdminCategoriesCreateOwnerRange',
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

    issueCategoryOwnerStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminIssueCategoryRangeOfOwnerToCreate(
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
      'EdemokraciaAdminAdminCategoriesCreateSubcategories',
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

class AdminAdminCategoriesCreatePage extends StatefulWidget {
  static const String title = 'Create Category';

  const AdminAdminCategoriesCreatePage({Key key}) : super(key: key);

  @override
  _AdminAdminCategoriesCreatePageState createState() => _AdminAdminCategoriesCreatePageState();
}

class _AdminAdminCategoriesCreatePageState extends State<AdminAdminCategoriesCreatePage> {
  final AdminIssueCategoryStore targetStore = AdminIssueCategoryStore();

  final tableService = locator<TableService>();
  final AdminAdminCategoriesCreatePageStore pageStore = AdminAdminCategoriesCreatePageStore();
  final AdminAdminCategoriesCreateConfig pageConfig = AdminAdminCategoriesCreateConfig();
  AdminAdminCategoriesCreatePageActions pageActions;

  Future<AdminIssueCategoryStore> futureTemplate;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
  }

  _AdminAdminCategoriesCreatePageState() {
    pageStore.targetStore = targetStore;

    /// Rangeable (link) sorting variables init with default values
    SortSettings ownerLinkRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminCategoriesCreateOwnerRange',
      sortColumnIndex: pageConfig.ownerTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.ownerTableConfig.sortColumnName,
      sortAsc: pageConfig.ownerTableConfig.sortAsc,
    );

    pageStore.ownerSortColumnIndexRange = ownerLinkRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.ownerSortColumnNameRange = ownerLinkRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.ownerSortAscRange = ownerLinkRangeSortSettings.sortAsc;

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminCategoriesCreatePageActions(navigation, targetStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminCategoriesCreatePage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminCategoriesCreateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminCategoriesCreateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminCategoriesCreateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminAdminCategoriesCreateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminIssueCategoryStore>(
      future: futureTemplate,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // have to use postFrameCallback here, because mobx trying change state during build
          SchedulerBinding.instance.addPostFrameCallback((_) {
            locator<MessageHandler>().handleApiException(context, snapshot.error, 'Page loading');
          });
          return Text('');
        } else if (snapshot.hasData) {
          targetStore.initWithDefaults(snapshot.data);
          return layout;
        }
        return Column(children: [JudoLoadingProgress()]);
      },
    );
  }
}
