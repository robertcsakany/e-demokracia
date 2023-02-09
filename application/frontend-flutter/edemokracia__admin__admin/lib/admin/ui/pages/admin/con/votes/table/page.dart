//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.con.votes.table;

class AdminConVotesTablePageStore extends _AdminConVotesTablePageStore with _$AdminConVotesTablePageStore {}

abstract class _AdminConVotesTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;

  _AdminConVotesTablePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
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
  void votesSetSort(AdminConStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (votesSortColumnIndex != sortColumnIndex) {
      votesSortAsc = true;
    } else {
      votesSortAsc = !votesSortAsc;
    }

    votesSortColumnIndex = sortColumnIndex;
    votesSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminConVotesTableVotes',
      sortColumnIndex: votesSortColumnIndex,
      sortColumnName: votesSortColumnName,
      sortAsc: votesSortAsc,
    );
    getVotes(ownerStore);
  }

  @observable
  ObservableFuture conVotesStoreFuture;

  @action
  Future<List<AdminSimpleVoteStore>> getVotes(AdminConStore ownerStore, {int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? votesQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    conVotesStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminConVotesList(
      ownerStore,
      sortColumn: votesSortColumnName,
      sortAscending: votesSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? ownerStore.votes.last : ownerStore.votes.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminSimpleVoteStore> nextItemsList = await conVotesStoreFuture;
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
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminConVotesTablePage extends StatefulWidget {
  static const String title = 'Votes';

  final AdminConStore ownerStore;

  const AdminConVotesTablePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminConVotesTablePageState(ownerStore: ownerStore);
}

class _AdminConVotesTablePageState extends State<AdminConVotesTablePage> {
  final AdminConStore ownerStore;

  final tableService = locator<TableService>();
  final AdminConVotesTablePageStore pageStore = AdminConVotesTablePageStore();
  final AdminConVotesTableConfig pageConfig = AdminConVotesTableConfig();
  AdminConVotesTablePageActions pageActions;

  _AdminConVotesTablePageState({@required this.ownerStore}) {
    if (pageConfig.votesTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.votesTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.votesTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.votesTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminConVotesTableVotes', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.votesTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings votesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminConVotesTableVotes',
      sortColumnIndex: pageConfig.votesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.votesTableConfig.sortColumnName,
      sortAsc: pageConfig.votesTableConfig.sortAsc,
    );

    pageStore.votesSortColumnIndex = votesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.votesSortColumnName = votesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.votesSortAsc = votesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminConVotesTablePageActions(navigation, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminConVotesTablePage.title));
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
        return getAdminConVotesTableMobilePage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminConVotesTableTabletPage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminConVotesTableDesktopPage(context, ownerStore, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminConVotesTableDesktopPage(context, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
