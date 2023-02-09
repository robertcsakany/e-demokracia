//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.issues.update;

class AdminAdminIssuesUpdatePageStore extends _AdminAdminIssuesUpdatePageStore with _$AdminAdminIssuesUpdatePageStore {}

abstract class _AdminAdminIssuesUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState createDebateButtonLoadingState;
  LoadingState attachmentsFileColumnLoadingState;
  LoadingState createCommentButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminAdminIssuesUpdatePageStore() {
    createDebateButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    attachmentsFileColumnLoadingState = LoadingState(pageState.setDisabledByLoading);
    createCommentButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminIssuesUpdateConfig pageConfig) {
    if (targetStore.attachments != null) {
      var dataInfo = EdemokraciaAdminAdminIssuesEditAttachmentsMobileTable(context, this, pageConfig, disabled: true);
      targetStore.attachments.sort(TableUtility.getSortComparator(attachmentsSortColumnIndex, attachmentsSortAsc, dataInfo));
    }
    if (targetStore.categories != null) {
      var dataInfo = EdemokraciaAdminAdminIssuesEditCategoriesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.categories.sort(TableUtility.getSortComparator(categoriesSortColumnIndex, categoriesSortAsc, dataInfo));
    }
    if (targetStore.comments != null) {
      var dataInfo = EdemokraciaAdminAdminIssuesEditCommentsMobileTable(context, this, pageConfig, disabled: true);
      targetStore.comments.sort(TableUtility.getSortComparator(commentsSortColumnIndex, commentsSortAsc, dataInfo));
    }
    if (targetStore.debates != null) {
      var dataInfo = EdemokraciaAdminAdminIssuesEditDebatesMobileTable(context, this, pageConfig, disabled: true);
      targetStore.debates.sort(TableUtility.getSortComparator(debatesSortColumnIndex, debatesSortAsc, dataInfo));
    }
  }

  @observable
  AdminIssueStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'created': ValidationError(),
    'description': ValidationError(),
    'representation': ValidationError(),
    'status': ValidationError(),
    'title': ValidationError(),
    'attachments': ValidationError(),
    'categories': ValidationError(),
    'comments': ValidationError(),
    'createdBy': ValidationError(),
    'debates': ValidationError(),
    'owner': ValidationError(),
  };

  @action
  Future<void> refreshIssue(AdminIssueStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueGetByIdentifier(targetStore));
  }

  @action
  Future<AdminIssueStore> validate(AdminIssueStore targetStore) async {
    return await _actorRepository.edemokraciaAdminIssueValidateForUpdate(targetStore);
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

  int attachmentsQueryLimit = (12.0 - 2).round();

  // Attachments embedded table paging

  @computed
  int get attachmentsTableItemsRangeStart => attachmentsTablePageNumber * attachmentsQueryLimit + 1;

  @computed
  int get attachmentsTableItemsRangeEnd => attachmentsTableItemsRangeStart - 1 + attachmentsTablePagingList.length;

  @observable
  int attachmentsTablePageNumber = 0;

  @computed
  bool get attachmentsTablePreviousEnable => attachmentsTablePageNumber > 0;

  @computed
  bool get attachmentsTableNextEnable => (attachmentsTablePageNumber * attachmentsQueryLimit + attachmentsQueryLimit) < targetStore.attachments.length;

  @action
  void attachmentsTableNextPage() {
    if (attachmentsTableNextEnable) {
      attachmentsTablePageNumber++;
    }
  }

  @action
  void attachmentsTablePreviousPage() {
    if (attachmentsTablePreviousEnable) {
      attachmentsTablePageNumber--;
    }
  }

  @computed
  List<AdminIssueAttachmentStore> get attachmentsTablePagingList {
    return targetStore.attachments;
  }

  // Attachments range actions

  int categoriesQueryLimit = (12.0 - 2).round();

  // Categories embedded table paging

  @computed
  int get categoriesTableItemsRangeStart => categoriesTablePageNumber * categoriesQueryLimit + 1;

  @computed
  int get categoriesTableItemsRangeEnd => categoriesTableItemsRangeStart - 1 + categoriesTablePagingList.length;

  @observable
  int categoriesTablePageNumber = 0;

  @computed
  bool get categoriesTablePreviousEnable => categoriesTablePageNumber > 0;

  @computed
  bool get categoriesTableNextEnable => (categoriesTablePageNumber * categoriesQueryLimit + categoriesQueryLimit) < targetStore.categories.length;

  @action
  void categoriesTableNextPage() {
    if (categoriesTableNextEnable) {
      categoriesTablePageNumber++;
    }
  }

  @action
  void categoriesTablePreviousPage() {
    if (categoriesTablePreviousEnable) {
      categoriesTablePageNumber--;
    }
  }

  @computed
  List<AdminIssueCategoryStore> get categoriesTablePagingList {
    return targetStore.categories;
  }

  // Categories range actions

  @observable
  ObservableFuture issueCategoriesStoreRangeFuture;

  @observable
  int categoriesSortColumnIndexRange;

  @observable
  String categoriesSortColumnNameRange;

  @observable
  bool categoriesSortAscRange;

  @observable
  List<AdminIssueCategoryStore> categoriesStoreRangeList = ObservableList<AdminIssueCategoryStore>();

  @computed
  int get categoriesTableForRangeItemsRangeStart => nextPageCounterForCategoriesRange * categoriesQueryLimit + 1;

  @computed
  int get categoriesTableForRangeItemsRangeEnd => categoriesTableForRangeItemsRangeStart - 1 + categoriesStoreRangeList.length;

  @observable
  bool nextButtonEnableForCategoriesRange = false;

  @observable
  int nextPageCounterForCategoriesRange = 0;

  @computed
  bool get previousButtonEnableForCategoriesRange => nextPageCounterForCategoriesRange > 0;

  @action
  void categoriesSetSortRange(AdminIssueStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (categoriesSortColumnIndexRange != sortColumnIndex) {
      categoriesSortAscRange = true;
    } else {
      categoriesSortAscRange = !categoriesSortAscRange;
    }

    categoriesSortColumnIndexRange = sortColumnIndex;
    categoriesSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesEditCategoriesRange',
      sortColumnIndex: categoriesSortColumnIndexRange,
      sortColumnName: categoriesSortColumnNameRange,
      sortAsc: categoriesSortAscRange,
    );

    getRangeForCategories(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminIssueCategoryStore>> getRangeForCategories(AdminIssueStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? categoriesQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForCategoriesRange = 0;
    }

    issueCategoriesStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminIssueRangeOfCategoriesToUpdate(
      ownerStore,
      sortColumn: categoriesSortColumnNameRange,
      sortAscending: categoriesSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? categoriesStoreRangeList.last : categoriesStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminIssueCategoryStore> nextItemsList = await issueCategoriesStoreRangeFuture;
    nextButtonEnableForCategoriesRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForCategoriesRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForCategoriesRange++;
      } else {
        nextPageCounterForCategoriesRange--;
      }
    }

    categoriesStoreRangeList.clear();
    categoriesStoreRangeList.addAll(nextItemsList);
    return categoriesStoreRangeList;
  }

  int commentsQueryLimit = (12.0 - 2).round();

  // Comments embedded table paging

  @computed
  int get commentsTableItemsRangeStart => commentsTablePageNumber * commentsQueryLimit + 1;

  @computed
  int get commentsTableItemsRangeEnd => commentsTableItemsRangeStart - 1 + commentsTablePagingList.length;

  @observable
  int commentsTablePageNumber = 0;

  @computed
  bool get commentsTablePreviousEnable => commentsTablePageNumber > 0;

  @computed
  bool get commentsTableNextEnable => (commentsTablePageNumber * commentsQueryLimit + commentsQueryLimit) < targetStore.comments.length;

  @action
  void commentsTableNextPage() {
    if (commentsTableNextEnable) {
      commentsTablePageNumber++;
    }
  }

  @action
  void commentsTablePreviousPage() {
    if (commentsTablePreviousEnable) {
      commentsTablePageNumber--;
    }
  }

  @computed
  List<AdminCommentStore> get commentsTablePagingList {
    int subListStart = commentsTablePageNumber * commentsQueryLimit;
    int subListEnd;
    if (commentsTableNextEnable) {
      subListEnd = subListStart + commentsQueryLimit;
    } else {
      subListEnd = targetStore.comments.length;
    }
    return targetStore.comments.sublist(subListStart, subListEnd);
  }

  // Comments range actions

  int debatesQueryLimit = (12.0 - 2).round();

  // Debates embedded table paging

  @computed
  int get debatesTableItemsRangeStart => debatesTablePageNumber * debatesQueryLimit + 1;

  @computed
  int get debatesTableItemsRangeEnd => debatesTableItemsRangeStart - 1 + debatesTablePagingList.length;

  @observable
  int debatesTablePageNumber = 0;

  @computed
  bool get debatesTablePreviousEnable => debatesTablePageNumber > 0;

  @computed
  bool get debatesTableNextEnable => (debatesTablePageNumber * debatesQueryLimit + debatesQueryLimit) < targetStore.debates.length;

  @action
  void debatesTableNextPage() {
    if (debatesTableNextEnable) {
      debatesTablePageNumber++;
    }
  }

  @action
  void debatesTablePreviousPage() {
    if (debatesTablePreviousEnable) {
      debatesTablePageNumber--;
    }
  }

  @computed
  List<AdminIssueDebateStore> get debatesTablePagingList {
    return targetStore.debates;
  }

  // Debates range actions

  int ownerQueryLimit = 5; // For judo link setter dialog

  // Owner range actions

  @observable
  ObservableFuture issueOwnerStoreRangeFuture;

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
  void ownerSetSortRange(AdminIssueStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (ownerSortColumnIndexRange != sortColumnIndex) {
      ownerSortAscRange = true;
    } else {
      ownerSortAscRange = !ownerSortAscRange;
    }

    ownerSortColumnIndexRange = sortColumnIndex;
    ownerSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesEditOwnerRange',
      sortColumnIndex: ownerSortColumnIndexRange,
      sortColumnName: ownerSortColumnNameRange,
      sortAsc: ownerSortAscRange,
    );

    getRangeForOwner(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminUserStore>> getRangeForOwner(AdminIssueStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? ownerQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForOwnerRange = 0;
    }

    issueOwnerStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminIssueRangeOfOwnerToUpdate(
      ownerStore,
      sortColumn: ownerSortColumnNameRange,
      sortAscending: ownerSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? ownerStoreRangeList.last : ownerStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminUserStore> nextItemsList = await issueOwnerStoreRangeFuture;
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

  // Attachments embedded table order

  @observable
  int attachmentsSortColumnIndex;

  @observable
  String attachmentsSortColumnName;

  @observable
  bool attachmentsSortAsc;

  @observable
  Comparator attachmentsSortCompare;

  @action
  void attachmentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminIssueStore store) {
    if (attachmentsSortColumnIndex != sortColumnIndex) {
      attachmentsSortAsc = true;
    } else {
      attachmentsSortAsc = !attachmentsSortAsc;
    }
    attachmentsSortColumnIndex = sortColumnIndex;
    attachmentsSortColumnName = sortColumnName;
    attachmentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesEditAttachments',
      sortColumnIndex: attachmentsSortColumnIndex,
      sortColumnName: attachmentsSortColumnName,
      sortAsc: attachmentsSortAsc,
    );

    store.attachments.sort(sortCompare);
  }

  // Attachments aggregation actions

  @observable
  ObservableFuture issueAttachmentsStoreFuture;

  // Categories embedded table order

  @observable
  int categoriesSortColumnIndex;

  @observable
  String categoriesSortColumnName;

  @observable
  bool categoriesSortAsc;

  @observable
  Comparator categoriesSortCompare;

  @action
  void categoriesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminIssueStore store) {
    if (categoriesSortColumnIndex != sortColumnIndex) {
      categoriesSortAsc = true;
    } else {
      categoriesSortAsc = !categoriesSortAsc;
    }
    categoriesSortColumnIndex = sortColumnIndex;
    categoriesSortColumnName = sortColumnName;
    categoriesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesEditCategories',
      sortColumnIndex: categoriesSortColumnIndex,
      sortColumnName: categoriesSortColumnName,
      sortAsc: categoriesSortAsc,
    );

    store.categories.sort(sortCompare);
  }

  // Categories aggregation actions

  @observable
  ObservableFuture issueCategoriesStoreFuture;

  @action
  Future<List<AdminIssueCategoryStore>> addCategories(AdminIssueStore ownerStore, List<AdminIssueCategoryStore> selectedStore) async {
    ownerStore.addAllCategories(selectedStore);
    return ownerStore.categories;
  }

  @action
  Future<void> removeCategories(AdminIssueStore ownerStore, AdminIssueCategoryStore selectedStore) async {
    ownerStore.removeCategories(selectedStore);
  }

  @action
  Future<void> setCategories(AdminIssueStore ownerStore, List<AdminIssueCategoryStore> selectedStore) async {
    ownerStore.setCategories(selectedStore.asObservable());
  }

  // Comments embedded table order

  @observable
  int commentsSortColumnIndex;

  @observable
  String commentsSortColumnName;

  @observable
  bool commentsSortAsc;

  @observable
  Comparator commentsSortCompare;

  @action
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminIssueStore store) {
    if (commentsSortColumnIndex != sortColumnIndex) {
      commentsSortAsc = true;
    } else {
      commentsSortAsc = !commentsSortAsc;
    }
    commentsSortColumnIndex = sortColumnIndex;
    commentsSortColumnName = sortColumnName;
    commentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesEditComments',
      sortColumnIndex: commentsSortColumnIndex,
      sortColumnName: commentsSortColumnName,
      sortAsc: commentsSortAsc,
    );

    store.comments.sort(sortCompare);
  }

  // Comments aggregation actions

  @observable
  ObservableFuture issueCommentsStoreFuture;

  // CreatedBy embedded table order

  // CreatedBy aggregation actions

  @observable
  ObservableFuture issueCreatedByStoreFuture;

  // Debates embedded table order

  @observable
  int debatesSortColumnIndex;

  @observable
  String debatesSortColumnName;

  @observable
  bool debatesSortAsc;

  @observable
  Comparator debatesSortCompare;

  @action
  void debatesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminIssueStore store) {
    if (debatesSortColumnIndex != sortColumnIndex) {
      debatesSortAsc = true;
    } else {
      debatesSortAsc = !debatesSortAsc;
    }
    debatesSortColumnIndex = sortColumnIndex;
    debatesSortColumnName = sortColumnName;
    debatesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminIssuesEditDebates',
      sortColumnIndex: debatesSortColumnIndex,
      sortColumnName: debatesSortColumnName,
      sortAsc: debatesSortAsc,
    );

    store.debates.sort(sortCompare);
  }

  // Debates aggregation actions

  @observable
  ObservableFuture issueDebatesStoreFuture;

  // Owner embedded table order

  // Owner aggregation actions

  @observable
  ObservableFuture issueOwnerStoreFuture;

  @action
  Future<void> setOwner(AdminIssueStore ownerStore, AdminUserStore selectedStore) async {
    ownerStore.setOwner(selectedStore);
  }

  @action
  Future<void> unsetOwner(AdminIssueStore ownerStore) async {
    ownerStore.setOwner(null);
  }
}

class AdminAdminIssuesUpdatePage extends StatefulWidget {
  static const String title = 'View / Edit Issue';

  final AdminIssueStore targetStore;

  const AdminAdminIssuesUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminAdminIssuesUpdatePageState(targetStore: targetStore);
}

class _AdminAdminIssuesUpdatePageState extends State<AdminAdminIssuesUpdatePage> {
  final AdminIssueStore targetStore;

  final tableService = locator<TableService>();
  final AdminAdminIssuesUpdatePageStore pageStore = AdminAdminIssuesUpdatePageStore();
  final AdminAdminIssuesUpdateConfig pageConfig = AdminAdminIssuesUpdateConfig();
  AdminAdminIssuesUpdatePageActions pageActions;

  _AdminAdminIssuesUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    /// Rangeable (link) sorting variables init with default values
    SortSettings ownerLinkRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesEditOwnerRange',
      sortColumnIndex: pageConfig.ownerTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.ownerTableConfig.sortColumnName,
      sortAsc: pageConfig.ownerTableConfig.sortAsc,
    );

    pageStore.ownerSortColumnIndexRange = ownerLinkRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.ownerSortColumnNameRange = ownerLinkRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.ownerSortAscRange = ownerLinkRangeSortSettings.sortAsc;

    /// Rangeable (table) sorting variables init with default values
    SortSettings categoriesTableRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesEditCategoriesRange',
      sortColumnIndex: pageConfig.categoriesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.categoriesTableConfig.sortColumnName,
      sortAsc: pageConfig.categoriesTableConfig.sortAsc,
    );

    pageStore.categoriesSortColumnIndexRange = categoriesTableRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.categoriesSortColumnNameRange = categoriesTableRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.categoriesSortAscRange = categoriesTableRangeSortSettings.sortAsc;

    /// Aggregate table sorting variables init with default values
    SortSettings attachmentsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesEditAttachments',
      sortColumnIndex: pageConfig.attachmentsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.attachmentsTableConfig.sortColumnName,
      sortAsc: pageConfig.attachmentsTableConfig.sortAsc,
    );

    pageStore.attachmentsSortColumnIndex = attachmentsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.attachmentsSortColumnName = attachmentsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.attachmentsSortAsc = attachmentsSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings categoriesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesEditCategories',
      sortColumnIndex: pageConfig.categoriesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.categoriesTableConfig.sortColumnName,
      sortAsc: pageConfig.categoriesTableConfig.sortAsc,
    );

    pageStore.categoriesSortColumnIndex = categoriesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.categoriesSortColumnName = categoriesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.categoriesSortAsc = categoriesSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings commentsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesEditComments',
      sortColumnIndex: pageConfig.commentsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.commentsTableConfig.sortColumnName,
      sortAsc: pageConfig.commentsTableConfig.sortAsc,
    );

    pageStore.commentsSortColumnIndex = commentsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.commentsSortColumnName = commentsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.commentsSortAsc = commentsSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings debatesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminIssuesEditDebates',
      sortColumnIndex: pageConfig.debatesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.debatesTableConfig.sortColumnName,
      sortAsc: pageConfig.debatesTableConfig.sortAsc,
    );

    pageStore.debatesSortColumnIndex = debatesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.debatesSortColumnName = debatesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.debatesSortAsc = debatesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminAdminIssuesUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshIssue(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminIssuesUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'status': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminIssuesUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminIssuesUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminIssuesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminAdminIssuesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
