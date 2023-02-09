//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.user.votes.table;

class AdminUserVotesTablePageStore extends _AdminUserVotesTablePageStore with _$AdminUserVotesTablePageStore {}

abstract class _AdminUserVotesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;
  LoadingState clearActionLoadingState;
  LoadingState setActionLoadingState;
  LoadingState addActionLoadingState;

  _AdminUserVotesTablePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    clearActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    setActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    addActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminSimpleVoteStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'created', attributeLabel: 'Created', filterType: FilterType.dateTime),
    FilterStore(attributeName: 'type', attributeLabel: 'Type', filterType: FilterType.enumeration, enumValues: EdemokraciaSimpleVoteType.values),
  ];

  final String mask = '{created,type}';

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

  int votesQueryLimit = (12.0 - 2).round();

  @observable
  bool nextButtonEnable = true;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * votesQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int votesSortColumnIndex;

  @observable
  String votesSortColumnName;

  @observable
  bool votesSortAsc;

  @action
  void votesSetSort(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (votesSortColumnIndex != sortColumnIndex) {
      votesSortAsc = true;
    } else {
      votesSortAsc = !votesSortAsc;
    }

    votesSortColumnIndex = sortColumnIndex;
    votesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminUserVotesTableVotes',
      sortColumnIndex: votesSortColumnIndex,
      sortColumnName: votesSortColumnName,
      sortAsc: votesSortAsc,
    );
    getVotes(ownerStore);
  }

  @observable
  ObservableFuture userVotesStoreFuture;

  @action
  Future<void> addVotes(AdminUserStore ownerStore, List<AdminSimpleVoteStore> selectedStore) async {
    await _actorRepository.edemokraciaAdminUserAddVotes(ownerStore, selectedStore);
    getVotes(ownerStore);
  }

  @action
  Future<void> removeVotes(AdminUserStore ownerStore, AdminSimpleVoteStore selectedStore) async {
    userVotesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRemoveVotes(ownerStore, [selectedStore]));
    await userVotesStoreFuture;
    ownerStore.votes.remove(selectedStore); // TODO: fix with remove more than 1 element
  }

  @action
  Future<List<AdminSimpleVoteStore>> getVotes(AdminUserStore ownerStore, {int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? votesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    userVotesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserVotesList(
      ownerStore,
      sortColumn: votesSortColumnName,
      sortAscending: votesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? ownerStore.votes.last : ownerStore.votes.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminSimpleVoteStore> nextItemsList = await userVotesStoreFuture;
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

    ownerStore.votes.clear();
    ownerStore.votes.addAll(nextItemsList);

    return ownerStore.votes;
  }

  // Votes range actions

  @observable
  ObservableFuture userVotesStoreRangeFuture;

  @observable
  int votesSortColumnIndexRange;

  @observable
  String votesSortColumnNameRange;

  @observable
  bool votesSortAscRange;

  @observable
  List<AdminSimpleVoteStore> votesStoreRangeList = ObservableList<AdminSimpleVoteStore>();

  @computed
  int get votesTableForRangeItemsRangeStart => nextPageCounterForVotesRange * votesQueryLimit + 1;

  @computed
  int get votesTableForRangeItemsRangeEnd => votesTableForRangeItemsRangeStart - 1 + votesStoreRangeList.length;

  @observable
  bool nextButtonEnableForVotesRange = false;

  @observable
  int nextPageCounterForVotesRange = 0;

  @computed
  bool get previousButtonEnableForVotesRange => nextPageCounterForVotesRange > 0;

  @action
  void votesSetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (votesSortColumnIndexRange != sortColumnIndex) {
      votesSortAscRange = true;
    } else {
      votesSortAscRange = !votesSortAscRange;
    }

    votesSortColumnIndexRange = sortColumnIndex;
    votesSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminUserVotesTableVotesRange',
      sortColumnIndex: votesSortColumnIndexRange,
      sortColumnName: votesSortColumnNameRange,
      sortAsc: votesSortAscRange,
    );

    getRangeForVotes(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminSimpleVoteStore>> getRangeForVotes(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? votesQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForVotesRange = 0;
    }

    userVotesStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfVotesToUpdate(
      ownerStore,
      sortColumn: votesSortColumnNameRange,
      sortAscending: votesSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? votesStoreRangeList.last : votesStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminSimpleVoteStore> nextItemsList = await userVotesStoreRangeFuture;
    nextButtonEnableForVotesRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForVotesRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForVotesRange++;
      } else {
        nextPageCounterForVotesRange--;
      }
    }

    votesStoreRangeList.clear();
    votesStoreRangeList.addAll(nextItemsList);
    return votesStoreRangeList;
  }

  @action
  Future<void> setVotes(AdminUserStore ownerStore, List<AdminSimpleVoteStore> selectedStore) async {
    await _actorRepository.edemokraciaAdminUserSetVotes(ownerStore, selectedStore);
    getVotes(ownerStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminUserVotesTablePage extends StatefulWidget {
  static const String title = 'Votes';

  final AdminUserStore ownerStore;

  const AdminUserVotesTablePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminUserVotesTablePageState(ownerStore: ownerStore);
}

class _AdminUserVotesTablePageState extends State<AdminUserVotesTablePage> {
  final AdminUserStore ownerStore;

  final tableService = locator<TableService>();
  final AdminUserVotesTablePageStore pageStore = AdminUserVotesTablePageStore();
  final AdminUserVotesTableConfig pageConfig = AdminUserVotesTableConfig();
  AdminUserVotesTablePageActions pageActions;

  _AdminUserVotesTablePageState({@required this.ownerStore}) {
    if (pageConfig.votesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.votesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.votesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.votesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminUserVotesTableVotes', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.votesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings votesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminUserVotesTableVotes',
      sortColumnIndex: pageConfig.votesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.votesTableConfig.sortColumnName,
      sortAsc: pageConfig.votesTableConfig.sortAsc,
    );

    pageStore.votesSortColumnIndex = votesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.votesSortColumnName = votesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.votesSortAsc = votesSortSettings.sortAsc; // TODO: JNG-2716

    // Rangeable sorting variables init with default values
    SortSettings votesSortRangeSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminUserVotesTableVotesRange',
      sortColumnIndex: pageConfig.votesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.votesTableConfig.sortColumnName,
      sortAsc: pageConfig.votesTableConfig.sortAsc,
    );

    pageStore.votesSortColumnIndexRange = votesSortRangeSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.votesSortColumnNameRange = votesSortRangeSettings.sortColumnName; // TODO: JNG-2716
    pageStore.votesSortAscRange = votesSortRangeSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminUserVotesTablePageActions(navigation, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminUserVotesTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getVotes(ownerStore);
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminUserVotesTableMobilePage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminUserVotesTableTabletPage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminUserVotesTableDesktopPage(context, ownerStore, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminUserVotesTableDesktopPage(context, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
