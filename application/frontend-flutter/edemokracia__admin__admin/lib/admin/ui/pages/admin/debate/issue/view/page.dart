//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.debate.issue.view;

class AdminDebateIssueViewPageStore extends _AdminDebateIssueViewPageStore with _$AdminDebateIssueViewPageStore {}

abstract class _AdminDebateIssueViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState createDebateButtonLoadingState;
  LoadingState attachmentsFileColumnLoadingState;
  LoadingState createCommentButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminDebateIssueViewPageStore() {
    createDebateButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    attachmentsFileColumnLoadingState = LoadingState(pageState.setDisabledByLoading);
    createCommentButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminDebateIssueViewConfig pageConfig) {
    if (targetStore.attachments != null) {
      var dataInfo = EdemokraciaAdminDebateIssueViewAttachmentsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.attachments.sort(TableUtility.getSortComparator(attachmentsSortColumnIndex, attachmentsSortAsc, dataInfo));
    }
    if (targetStore.categories != null) {
      var dataInfo = EdemokraciaAdminDebateIssueViewCategoriesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.categories.sort(TableUtility.getSortComparator(categoriesSortColumnIndex, categoriesSortAsc, dataInfo));
    }
    if (targetStore.comments != null) {
      var dataInfo = EdemokraciaAdminDebateIssueViewCommentsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.comments.sort(TableUtility.getSortComparator(commentsSortColumnIndex, commentsSortAsc, dataInfo));
    }
    if (targetStore.debates != null) {
      var dataInfo = EdemokraciaAdminDebateIssueViewDebatesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.debates.sort(TableUtility.getSortComparator(debatesSortColumnIndex, debatesSortAsc, dataInfo));
    }
  }

  @observable
  AdminIssueStore targetStore;

  @action
  Future<void> refreshIssue(AdminIssueStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueGetByIdentifier(
      targetStore,
      mask:
          '{title,status,created,description,owner{representation},attachments{link,file,type},categories{title,description},debates{status,title,closeAt,description},comments{comment,created,createdByName,upVotes,downVotes}}',
    ));
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
      'EdemokraciaAdminDebateIssueViewAttachments',
      sortColumnIndex: attachmentsSortColumnIndex,
      sortColumnName: attachmentsSortColumnName,
      sortAsc: attachmentsSortAsc,
    );

    store.attachments.sort(sortCompare);
  }

  // Attachments aggregation actions

  @observable
  ObservableFuture issueAttachmentsStoreFuture;

  @action
  Future<void> createAttachments(AdminIssueStore ownerStore, AdminIssueAttachmentStore targetStore) async {
    await _actorRepository.edemokraciaAdminIssueAttachmentsCreate(ownerStore, targetStore);
    refreshIssue(ownerStore);
  }

  @action
  Future<void> deleteAttachmentsIssueAttachment(AdminIssueAttachmentStore targetStore, AdminIssueStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueAttachmentDelete(targetStore);
    refreshIssue(ownerStore);
  }

  @action
  Future<void> updateAttachmentsIssueAttachment(AdminIssueAttachmentStore targetStore, AdminIssueStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueAttachmentUpdate(targetStore);
    await refreshIssue(ownerStore);
  }

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
      'EdemokraciaAdminDebateIssueViewCategories',
      sortColumnIndex: categoriesSortColumnIndex,
      sortColumnName: categoriesSortColumnName,
      sortAsc: categoriesSortAsc,
    );

    store.categories.sort(sortCompare);
  }

  // Categories aggregation actions

  @observable
  ObservableFuture issueCategoriesStoreFuture;

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
      'EdemokraciaAdminDebateIssueViewComments',
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
      'EdemokraciaAdminDebateIssueViewDebates',
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

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCommentVoteDown(ownerStore);
  }

  @action
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) async {
    return await _actorRepository.edemokraciaAdminIssueCreateDebate(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCommentVoteUp(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) async {
    await _actorRepository.edemokraciaAdminIssueCreateComment(targetStore, ownerStore);
  }
}

class AdminDebateIssueViewPage extends StatefulWidget {
  static const String title = 'View / Edit Issue';

  final AdminIssueStore targetStore;
  final AdminDebateStore ownerStore;

  const AdminDebateIssueViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminDebateIssueViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminDebateIssueViewPageState extends State<AdminDebateIssueViewPage> {
  AdminIssueStore targetStore;
  final AdminDebateStore ownerStore;

  final tableService = locator<TableService>();
  final AdminDebateIssueViewPageStore pageStore = AdminDebateIssueViewPageStore();
  final AdminDebateIssueViewConfig pageConfig = AdminDebateIssueViewConfig();
  AdminDebateIssueViewPageActions pageActions;

  _AdminDebateIssueViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings attachmentsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminDebateIssueViewAttachments',
      sortColumnIndex: pageConfig.attachmentsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.attachmentsTableConfig.sortColumnName,
      sortAsc: pageConfig.attachmentsTableConfig.sortAsc,
    );

    pageStore.attachmentsSortColumnIndex = attachmentsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.attachmentsSortColumnName = attachmentsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.attachmentsSortAsc = attachmentsSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings categoriesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminDebateIssueViewCategories',
      sortColumnIndex: pageConfig.categoriesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.categoriesTableConfig.sortColumnName,
      sortAsc: pageConfig.categoriesTableConfig.sortAsc,
    );

    pageStore.categoriesSortColumnIndex = categoriesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.categoriesSortColumnName = categoriesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.categoriesSortAsc = categoriesSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings commentsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminDebateIssueViewComments',
      sortColumnIndex: pageConfig.commentsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.commentsTableConfig.sortColumnName,
      sortAsc: pageConfig.commentsTableConfig.sortAsc,
    );

    pageStore.commentsSortColumnIndex = commentsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.commentsSortColumnName = commentsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.commentsSortAsc = commentsSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings debatesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminDebateIssueViewDebates',
      sortColumnIndex: pageConfig.debatesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.debatesTableConfig.sortColumnName,
      sortAsc: pageConfig.debatesTableConfig.sortAsc,
    );

    pageStore.debatesSortColumnIndex = debatesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.debatesSortColumnName = debatesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.debatesSortAsc = debatesSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminDebateIssueViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssue(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminDebateIssueViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminDebateIssueViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminDebateIssueViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminDebateIssueViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminDebateIssueViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
