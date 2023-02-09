//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.pros.view;

class AdminProProsViewPageStore extends _AdminProProsViewPageStore with _$AdminProProsViewPageStore {}

abstract class _AdminProProsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteUpButtonLoadingState;
  LoadingState voteDownButtonLoadingState;
  LoadingState createSubArgumentButtonLoadingState;
  LoadingState createCommentButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState deleteActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminProProsViewPageStore() {
    voteUpButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteDownButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    createSubArgumentButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    createCommentButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    deleteActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminProProsViewConfig pageConfig) {
    if (targetStore.cons != null) {
      var dataInfo = EdemokraciaAdminProProsViewConsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.cons.sort(TableUtility.getSortComparator(consSortColumnIndex, consSortAsc, dataInfo));
    }
    if (targetStore.pros != null) {
      var dataInfo = EdemokraciaAdminProProsViewProsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.pros.sort(TableUtility.getSortComparator(prosSortColumnIndex, prosSortAsc, dataInfo));
    }
    if (targetStore.comments != null) {
      var dataInfo = EdemokraciaAdminProProsViewCommentsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.comments.sort(TableUtility.getSortComparator(commentsSortColumnIndex, commentsSortAsc, dataInfo));
    }
  }

  @observable
  AdminProStore targetStore;

  @action
  Future<void> refreshPro(AdminProStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminProGetByIdentifier(
      targetStore,
      mask:
          '{title,created,description,upVotes,downVotes,createdByName,createdBy{representation},pros{title,upVotes,downVotes},cons{title,upVotes,downVotes},comments{created,comment,createdByName,upVotes,downVotes}}',
    ));
  }

  @action
  Future<void> updatePro(AdminProStore newTargetStore, AdminProStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminProUpdate(newTargetStore);
    await refreshPro(oldTargetStore);
  }

  @action
  Future<void> deletePro(AdminProStore targetStore) async {
    await _actorRepository.edemokraciaAdminProDelete(targetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int consQueryLimit = (12.0 - 2).round();

  // Cons embedded table paging

  @computed
  int get consTableItemsRangeStart => consTablePageNumber * consQueryLimit + 1;

  @computed
  int get consTableItemsRangeEnd => consTableItemsRangeStart - 1 + consTablePagingList.length;

  @observable
  int consTablePageNumber = 0;

  @computed
  bool get consTablePreviousEnable => consTablePageNumber > 0;

  @computed
  bool get consTableNextEnable => (consTablePageNumber * consQueryLimit + consQueryLimit) < targetStore.cons.length;

  @action
  void consTableNextPage() {
    if (consTableNextEnable) {
      consTablePageNumber++;
    }
  }

  @action
  void consTablePreviousPage() {
    if (consTablePreviousEnable) {
      consTablePageNumber--;
    }
  }

  @computed
  List<AdminConStore> get consTablePagingList {
    return targetStore.cons;
  }

  int prosQueryLimit = (12.0 - 2).round();

  // Pros embedded table paging

  @computed
  int get prosTableItemsRangeStart => prosTablePageNumber * prosQueryLimit + 1;

  @computed
  int get prosTableItemsRangeEnd => prosTableItemsRangeStart - 1 + prosTablePagingList.length;

  @observable
  int prosTablePageNumber = 0;

  @computed
  bool get prosTablePreviousEnable => prosTablePageNumber > 0;

  @computed
  bool get prosTableNextEnable => (prosTablePageNumber * prosQueryLimit + prosQueryLimit) < targetStore.pros.length;

  @action
  void prosTableNextPage() {
    if (prosTableNextEnable) {
      prosTablePageNumber++;
    }
  }

  @action
  void prosTablePreviousPage() {
    if (prosTablePreviousEnable) {
      prosTablePageNumber--;
    }
  }

  @computed
  List<AdminProStore> get prosTablePagingList {
    return targetStore.pros;
  }

  int commentsQueryLimit = (52.0 - 2).round();

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
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminProStore store) {
    if (commentsSortColumnIndex != sortColumnIndex) {
      commentsSortAsc = true;
    } else {
      commentsSortAsc = !commentsSortAsc;
    }
    commentsSortColumnIndex = sortColumnIndex;
    commentsSortColumnName = sortColumnName;
    commentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminProProsViewComments',
      sortColumnIndex: commentsSortColumnIndex,
      sortColumnName: commentsSortColumnName,
      sortAsc: commentsSortAsc,
    );

    store.comments.sort(sortCompare);
  }

  // Comments aggregation actions

  @observable
  ObservableFuture proCommentsStoreFuture;

  // Cons embedded table order

  @observable
  int consSortColumnIndex;

  @observable
  String consSortColumnName;

  @observable
  bool consSortAsc;

  @observable
  Comparator consSortCompare;

  @action
  void consSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminProStore store) {
    if (consSortColumnIndex != sortColumnIndex) {
      consSortAsc = true;
    } else {
      consSortAsc = !consSortAsc;
    }
    consSortColumnIndex = sortColumnIndex;
    consSortColumnName = sortColumnName;
    consSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminProProsViewCons',
      sortColumnIndex: consSortColumnIndex,
      sortColumnName: consSortColumnName,
      sortAsc: consSortAsc,
    );

    store.cons.sort(sortCompare);
  }

  // Cons aggregation actions

  @observable
  ObservableFuture proConsStoreFuture;

  @action
  Future<void> deleteConsCon(AdminConStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminConDelete(targetStore);
    refreshPro(ownerStore);
  }

  @action
  Future<void> updateConsCon(AdminConStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminConUpdate(targetStore);
    await refreshPro(ownerStore);
  }

  // CreatedBy embedded table order

  // CreatedBy aggregation actions

  @observable
  ObservableFuture proCreatedByStoreFuture;

  // Pros embedded table order

  @observable
  int prosSortColumnIndex;

  @observable
  String prosSortColumnName;

  @observable
  bool prosSortAsc;

  @observable
  Comparator prosSortCompare;

  @action
  void prosSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminProStore store) {
    if (prosSortColumnIndex != sortColumnIndex) {
      prosSortAsc = true;
    } else {
      prosSortAsc = !prosSortAsc;
    }
    prosSortColumnIndex = sortColumnIndex;
    prosSortColumnName = sortColumnName;
    prosSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminProProsViewPros',
      sortColumnIndex: prosSortColumnIndex,
      sortColumnName: prosSortColumnName,
      sortAsc: prosSortAsc,
    );

    store.pros.sort(sortCompare);
  }

  // Pros aggregation actions

  @observable
  ObservableFuture proProsStoreFuture;

  @action
  Future<void> deleteProsPro(AdminProStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminProDelete(targetStore);
    refreshPro(ownerStore);
  }

  @action
  Future<void> updateProsPro(AdminProStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminProUpdate(targetStore);
    await refreshPro(ownerStore);
  }

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCommentVoteDown(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminConVoteUp(AdminConStore ownerStore) async {
    await _actorRepository.edemokraciaAdminConVoteUp(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminProCreateSubArgument(CreateArgumentInputStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminProCreateSubArgument(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCommentVoteUp(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminConCreateComment(CreateCommentInputStore targetStore, AdminConStore ownerStore) async {
    await _actorRepository.edemokraciaAdminConCreateComment(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminProVoteUp(AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminProVoteUp(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminConCreateSubArgument(CreateArgumentInputStore targetStore, AdminConStore ownerStore) async {
    await _actorRepository.edemokraciaAdminConCreateSubArgument(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminProCreateComment(CreateCommentInputStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminProCreateComment(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminConVoteDown(AdminConStore ownerStore) async {
    await _actorRepository.edemokraciaAdminConVoteDown(ownerStore);
  }

  @action
  Future<void> edemokraciaAdminProVoteDown(AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminProVoteDown(ownerStore);
  }
}

class AdminProProsViewPage extends StatefulWidget {
  static const String title = 'View / Edit Pro';

  final AdminProStore targetStore;
  final AdminProStore ownerStore;

  const AdminProProsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminProProsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminProProsViewPageState extends State<AdminProProsViewPage> {
  AdminProStore targetStore;
  final AdminProStore ownerStore;

  final tableService = locator<TableService>();
  final AdminProProsViewPageStore pageStore = AdminProProsViewPageStore();
  final AdminProProsViewConfig pageConfig = AdminProProsViewConfig();
  AdminProProsViewPageActions pageActions;

  _AdminProProsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings consSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminProProsViewCons',
      sortColumnIndex: pageConfig.consTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.consTableConfig.sortColumnName,
      sortAsc: pageConfig.consTableConfig.sortAsc,
    );

    pageStore.consSortColumnIndex = consSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.consSortColumnName = consSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.consSortAsc = consSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings prosSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminProProsViewPros',
      sortColumnIndex: pageConfig.prosTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.prosTableConfig.sortColumnName,
      sortAsc: pageConfig.prosTableConfig.sortAsc,
    );

    pageStore.prosSortColumnIndex = prosSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.prosSortColumnName = prosSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.prosSortAsc = prosSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings commentsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminProProsViewComments',
      sortColumnIndex: pageConfig.commentsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.commentsTableConfig.sortColumnName,
      sortAsc: pageConfig.commentsTableConfig.sortAsc,
    );

    pageStore.commentsSortColumnIndex = commentsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.commentsSortColumnName = commentsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.commentsSortAsc = commentsSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminProProsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshPro(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProProsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminProProsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminProProsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminProProsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminProProsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
