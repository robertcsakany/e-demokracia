//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.votes.table;

class AdminProVotesTablePageStore extends _AdminProVotesTablePageStore with _$AdminProVotesTablePageStore {}

abstract class _AdminProVotesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;
  LoadingState createActionLoadingState;

  _AdminProVotesTablePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    createActionLoadingState = LoadingState(pageState.setDisabledByLoading);
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
  void votesSetSort(AdminProStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (votesSortColumnIndex != sortColumnIndex) {
      votesSortAsc = true;
    } else {
      votesSortAsc = !votesSortAsc;
    }

    votesSortColumnIndex = sortColumnIndex;
    votesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminProVotesTableVotes',
      sortColumnIndex: votesSortColumnIndex,
      sortColumnName: votesSortColumnName,
      sortAsc: votesSortAsc,
    );
    getVotes(ownerStore);
  }

  @observable
  ObservableFuture proVotesStoreFuture;

  @action
  Future<AdminSimpleVoteStore> createVotes(AdminProStore ownerStore, AdminSimpleVoteStore targetStore) async {
    var created = await _actorRepository.edemokraciaAdminProVotesCreate(ownerStore, targetStore);
    getVotes(ownerStore);
    return created;
  }

  @action
  Future<List<AdminSimpleVoteStore>> getVotes(AdminProStore ownerStore, {int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? votesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    proVotesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminProVotesList(
      ownerStore,
      sortColumn: votesSortColumnName,
      sortAscending: votesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? ownerStore.votes.last : ownerStore.votes.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminSimpleVoteStore> nextItemsList = await proVotesStoreFuture;
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

  @action
  Future<void> deleteSimpleVote(AdminSimpleVoteStore targetStore, AdminProStore ownerStore) async {
    await _actorRepository.edemokraciaAdminSimpleVoteDelete(targetStore);
    getVotes(ownerStore);
  }

  @action
  Future<void> updateSimpleVote(AdminProStore ownerStore, AdminSimpleVoteStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminSimpleVoteUpdate(newTargetStore);
    await getVotes(ownerStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminProVotesTablePage extends StatefulWidget {
  static const String title = 'Votes';

  final AdminProStore ownerStore;

  const AdminProVotesTablePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminProVotesTablePageState(ownerStore: ownerStore);
}

class _AdminProVotesTablePageState extends State<AdminProVotesTablePage> {
  final AdminProStore ownerStore;

  final tableService = locator<TableService>();
  final AdminProVotesTablePageStore pageStore = AdminProVotesTablePageStore();
  final AdminProVotesTableConfig pageConfig = AdminProVotesTableConfig();
  AdminProVotesTablePageActions pageActions;

  _AdminProVotesTablePageState({@required this.ownerStore}) {
    if (pageConfig.votesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.votesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.votesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.votesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminProVotesTableVotes', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.votesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings votesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminProVotesTableVotes',
      sortColumnIndex: pageConfig.votesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.votesTableConfig.sortColumnName,
      sortAsc: pageConfig.votesTableConfig.sortAsc,
    );

    pageStore.votesSortColumnIndex = votesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.votesSortColumnName = votesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.votesSortAsc = votesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminProVotesTablePageActions(navigation, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProVotesTablePage.title));
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
        return getAdminProVotesTableMobilePage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminProVotesTableTabletPage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminProVotesTableDesktopPage(context, ownerStore, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminProVotesTableDesktopPage(context, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}