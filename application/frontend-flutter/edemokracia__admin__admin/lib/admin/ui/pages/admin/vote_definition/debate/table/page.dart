//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.vote_definition.debate.table;

class AdminVoteDefinitionDebateTablePageStore extends _AdminVoteDefinitionDebateTablePageStore with _$AdminVoteDefinitionDebateTablePageStore {}

abstract class _AdminVoteDefinitionDebateTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;

  _AdminVoteDefinitionDebateTablePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminDebateStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'closeAt', attributeLabel: 'CloseAt', filterType: FilterType.dateTime),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
    FilterStore(attributeName: 'status', attributeLabel: 'Status', filterType: FilterType.enumeration, enumValues: EdemokraciaDebateStatus.values),
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
  ];

  final String mask = '{closeAt,description,status,title}';

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

  int debateQueryLimit = (2.0 - 2).round();

  @observable
  ObservableFuture voteDefinitionDebateStoreFuture;

  @action
  Future<AdminDebateStore> getDebate(AdminVoteDefinitionStore ownerStore, {int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? debateQueryLimit) + (isNext == null || isNext ? 1 : 0);
    voteDefinitionDebateStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminVoteDefinitionDebateGet(
      ownerStore,
      mask: mask,
    ));
    ownerStore.debate = await voteDefinitionDebateStoreFuture;
    return ownerStore.debate;
  }

  // Debate range actions

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDebateCreateComment(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore);
  }

  @action
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) async {
    return await _actorRepository.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore);
  }
}

class AdminVoteDefinitionDebateTablePage extends StatefulWidget {
  static const String title = 'Debates';

  final AdminVoteDefinitionStore ownerStore;

  const AdminVoteDefinitionDebateTablePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminVoteDefinitionDebateTablePageState(ownerStore: ownerStore);
}

class _AdminVoteDefinitionDebateTablePageState extends State<AdminVoteDefinitionDebateTablePage> {
  final AdminVoteDefinitionStore ownerStore;

  final tableService = locator<TableService>();
  final AdminVoteDefinitionDebateTablePageStore pageStore = AdminVoteDefinitionDebateTablePageStore();
  final AdminVoteDefinitionDebateTableConfig pageConfig = AdminVoteDefinitionDebateTableConfig();
  AdminVoteDefinitionDebateTablePageActions pageActions;

  _AdminVoteDefinitionDebateTablePageState({@required this.ownerStore}) {
    if (pageConfig.debateTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.debateTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.debateTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.debateTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminVoteDefinitionDebateTableDebate', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.debateTableConfig.filtersHorizontalOrientation);

    final navigation = locator<NavigationState>();
    pageActions = AdminVoteDefinitionDebateTablePageActions(navigation, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminVoteDefinitionDebateTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getDebate(ownerStore);
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminVoteDefinitionDebateTableMobilePage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminVoteDefinitionDebateTableTabletPage(context, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminVoteDefinitionDebateTableDesktopPage(context, ownerStore, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminVoteDefinitionDebateTableDesktopPage(context, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
