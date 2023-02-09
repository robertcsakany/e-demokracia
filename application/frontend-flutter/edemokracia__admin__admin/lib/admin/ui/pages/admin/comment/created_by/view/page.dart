//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.comment.created_by.view;

class AdminCommentCreatedByViewPageStore extends _AdminCommentCreatedByViewPageStore with _$AdminCommentCreatedByViewPageStore {}

abstract class _AdminCommentCreatedByViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _AdminCommentCreatedByViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminCommentCreatedByViewConfig pageConfig) {
    if (targetStore.activityCities != null) {
      var dataInfo = EdemokraciaAdminCommentCreatedByViewActivityCitiesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.activityCities.sort(TableUtility.getSortComparator(activityCitiesSortColumnIndex, activityCitiesSortAsc, dataInfo));
    }
    if (targetStore.activityDistricts != null) {
      var dataInfo = EdemokraciaAdminCommentCreatedByViewActivityDistrictsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.activityDistricts.sort(TableUtility.getSortComparator(activityDistrictsSortColumnIndex, activityDistrictsSortAsc, dataInfo));
    }
    if (targetStore.activityCounties != null) {
      var dataInfo = EdemokraciaAdminCommentCreatedByViewActivityCountiesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.activityCounties.sort(TableUtility.getSortComparator(activityCountiesSortColumnIndex, activityCountiesSortAsc, dataInfo));
    }
  }

  @observable
  AdminUserStore targetStore;

  @action
  Future<void> refreshUser(AdminUserStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminUserGetByIdentifier(
      targetStore,
      mask:
          '{userName,isAdmin,created,firstName,lastName,email,phone,residentCounty{representation},residentCity{representation},residentDistrict{representation},activityCounties{representation},activityCities{representation},activityDistricts{representation}}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int activityCitiesQueryLimit = (3.0 - 2).round();

  // ActivityCities embedded table paging

  @computed
  int get activityCitiesTableItemsRangeStart => activityCitiesTablePageNumber * activityCitiesQueryLimit + 1;

  @computed
  int get activityCitiesTableItemsRangeEnd => activityCitiesTableItemsRangeStart - 1 + activityCitiesTablePagingList.length;

  @observable
  int activityCitiesTablePageNumber = 0;

  @computed
  bool get activityCitiesTablePreviousEnable => activityCitiesTablePageNumber > 0;

  @computed
  bool get activityCitiesTableNextEnable =>
      (activityCitiesTablePageNumber * activityCitiesQueryLimit + activityCitiesQueryLimit) < targetStore.activityCities.length;

  @action
  void activityCitiesTableNextPage() {
    if (activityCitiesTableNextEnable) {
      activityCitiesTablePageNumber++;
    }
  }

  @action
  void activityCitiesTablePreviousPage() {
    if (activityCitiesTablePreviousEnable) {
      activityCitiesTablePageNumber--;
    }
  }

  @computed
  List<AdminCityStore> get activityCitiesTablePagingList {
    int subListStart = activityCitiesTablePageNumber * activityCitiesQueryLimit;
    int subListEnd;
    if (activityCitiesTableNextEnable) {
      subListEnd = subListStart + activityCitiesQueryLimit;
    } else {
      subListEnd = targetStore.activityCities.length;
    }
    return targetStore.activityCities.sublist(subListStart, subListEnd);
  }

  int activityDistrictsQueryLimit = (3.0 - 2).round();

  // ActivityDistricts embedded table paging

  @computed
  int get activityDistrictsTableItemsRangeStart => activityDistrictsTablePageNumber * activityDistrictsQueryLimit + 1;

  @computed
  int get activityDistrictsTableItemsRangeEnd => activityDistrictsTableItemsRangeStart - 1 + activityDistrictsTablePagingList.length;

  @observable
  int activityDistrictsTablePageNumber = 0;

  @computed
  bool get activityDistrictsTablePreviousEnable => activityDistrictsTablePageNumber > 0;

  @computed
  bool get activityDistrictsTableNextEnable =>
      (activityDistrictsTablePageNumber * activityDistrictsQueryLimit + activityDistrictsQueryLimit) < targetStore.activityDistricts.length;

  @action
  void activityDistrictsTableNextPage() {
    if (activityDistrictsTableNextEnable) {
      activityDistrictsTablePageNumber++;
    }
  }

  @action
  void activityDistrictsTablePreviousPage() {
    if (activityDistrictsTablePreviousEnable) {
      activityDistrictsTablePageNumber--;
    }
  }

  @computed
  List<AdminDistrictStore> get activityDistrictsTablePagingList {
    int subListStart = activityDistrictsTablePageNumber * activityDistrictsQueryLimit;
    int subListEnd;
    if (activityDistrictsTableNextEnable) {
      subListEnd = subListStart + activityDistrictsQueryLimit;
    } else {
      subListEnd = targetStore.activityDistricts.length;
    }
    return targetStore.activityDistricts.sublist(subListStart, subListEnd);
  }

  int activityCountiesQueryLimit = (3.0 - 2).round();

  // ActivityCounties embedded table paging

  @computed
  int get activityCountiesTableItemsRangeStart => activityCountiesTablePageNumber * activityCountiesQueryLimit + 1;

  @computed
  int get activityCountiesTableItemsRangeEnd => activityCountiesTableItemsRangeStart - 1 + activityCountiesTablePagingList.length;

  @observable
  int activityCountiesTablePageNumber = 0;

  @computed
  bool get activityCountiesTablePreviousEnable => activityCountiesTablePageNumber > 0;

  @computed
  bool get activityCountiesTableNextEnable =>
      (activityCountiesTablePageNumber * activityCountiesQueryLimit + activityCountiesQueryLimit) < targetStore.activityCounties.length;

  @action
  void activityCountiesTableNextPage() {
    if (activityCountiesTableNextEnable) {
      activityCountiesTablePageNumber++;
    }
  }

  @action
  void activityCountiesTablePreviousPage() {
    if (activityCountiesTablePreviousEnable) {
      activityCountiesTablePageNumber--;
    }
  }

  @computed
  List<AdminCountyStore> get activityCountiesTablePagingList {
    int subListStart = activityCountiesTablePageNumber * activityCountiesQueryLimit;
    int subListEnd;
    if (activityCountiesTableNextEnable) {
      subListEnd = subListStart + activityCountiesQueryLimit;
    } else {
      subListEnd = targetStore.activityCounties.length;
    }
    return targetStore.activityCounties.sublist(subListStart, subListEnd);
  }

  // ActivityCities embedded table order

  @observable
  int activityCitiesSortColumnIndex;

  @observable
  String activityCitiesSortColumnName;

  @observable
  bool activityCitiesSortAsc;

  @observable
  Comparator activityCitiesSortCompare;

  @action
  void activityCitiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminUserStore store) {
    if (activityCitiesSortColumnIndex != sortColumnIndex) {
      activityCitiesSortAsc = true;
    } else {
      activityCitiesSortAsc = !activityCitiesSortAsc;
    }
    activityCitiesSortColumnIndex = sortColumnIndex;
    activityCitiesSortColumnName = sortColumnName;
    activityCitiesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminCommentCreatedByViewActivityCities',
      sortColumnIndex: activityCitiesSortColumnIndex,
      sortColumnName: activityCitiesSortColumnName,
      sortAsc: activityCitiesSortAsc,
    );

    store.activityCities.sort(sortCompare);
  }

  // ActivityCities aggregation actions

  @observable
  ObservableFuture userActivityCitiesStoreFuture;

  @action
  Future<void> updateActivityCitiesCity(AdminCityStore targetStore, AdminUserStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCityUpdate(targetStore);
    await refreshUser(ownerStore);
  }

  // ActivityCounties embedded table order

  @observable
  int activityCountiesSortColumnIndex;

  @observable
  String activityCountiesSortColumnName;

  @observable
  bool activityCountiesSortAsc;

  @observable
  Comparator activityCountiesSortCompare;

  @action
  void activityCountiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminUserStore store) {
    if (activityCountiesSortColumnIndex != sortColumnIndex) {
      activityCountiesSortAsc = true;
    } else {
      activityCountiesSortAsc = !activityCountiesSortAsc;
    }
    activityCountiesSortColumnIndex = sortColumnIndex;
    activityCountiesSortColumnName = sortColumnName;
    activityCountiesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminCommentCreatedByViewActivityCounties',
      sortColumnIndex: activityCountiesSortColumnIndex,
      sortColumnName: activityCountiesSortColumnName,
      sortAsc: activityCountiesSortAsc,
    );

    store.activityCounties.sort(sortCompare);
  }

  // ActivityCounties aggregation actions

  @observable
  ObservableFuture userActivityCountiesStoreFuture;

  @action
  Future<void> updateActivityCountiesCounty(AdminCountyStore targetStore, AdminUserStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCountyUpdate(targetStore);
    await refreshUser(ownerStore);
  }

  // ActivityDistricts embedded table order

  @observable
  int activityDistrictsSortColumnIndex;

  @observable
  String activityDistrictsSortColumnName;

  @observable
  bool activityDistrictsSortAsc;

  @observable
  Comparator activityDistrictsSortCompare;

  @action
  void activityDistrictsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminUserStore store) {
    if (activityDistrictsSortColumnIndex != sortColumnIndex) {
      activityDistrictsSortAsc = true;
    } else {
      activityDistrictsSortAsc = !activityDistrictsSortAsc;
    }
    activityDistrictsSortColumnIndex = sortColumnIndex;
    activityDistrictsSortColumnName = sortColumnName;
    activityDistrictsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminCommentCreatedByViewActivityDistricts',
      sortColumnIndex: activityDistrictsSortColumnIndex,
      sortColumnName: activityDistrictsSortColumnName,
      sortAsc: activityDistrictsSortAsc,
    );

    store.activityDistricts.sort(sortCompare);
  }

  // ActivityDistricts aggregation actions

  @observable
  ObservableFuture userActivityDistrictsStoreFuture;

  @action
  Future<void> updateActivityDistrictsDistrict(AdminDistrictStore targetStore, AdminUserStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDistrictUpdate(targetStore);
    await refreshUser(ownerStore);
  }

  // ResidentCity embedded table order

  // ResidentCity aggregation actions

  @observable
  ObservableFuture userResidentCityStoreFuture;

  @action
  Future<void> updateResidentCityCity(AdminCityStore targetStore, AdminUserStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCityUpdate(targetStore);
    await refreshUser(ownerStore);
  }

  // ResidentCounty embedded table order

  // ResidentCounty aggregation actions

  @observable
  ObservableFuture userResidentCountyStoreFuture;

  @action
  Future<void> updateResidentCountyCounty(AdminCountyStore targetStore, AdminUserStore ownerStore) async {
    await _actorRepository.edemokraciaAdminCountyUpdate(targetStore);
    await refreshUser(ownerStore);
  }

  // ResidentDistrict embedded table order

  // ResidentDistrict aggregation actions

  @observable
  ObservableFuture userResidentDistrictStoreFuture;

  @action
  Future<void> updateResidentDistrictDistrict(AdminDistrictStore targetStore, AdminUserStore ownerStore) async {
    await _actorRepository.edemokraciaAdminDistrictUpdate(targetStore);
    await refreshUser(ownerStore);
  }

  //OPERATIONS

}

class AdminCommentCreatedByViewPage extends StatefulWidget {
  static const String title = 'View / Edit User';

  final AdminUserStore targetStore;
  final AdminCommentStore ownerStore;

  const AdminCommentCreatedByViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminCommentCreatedByViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminCommentCreatedByViewPageState extends State<AdminCommentCreatedByViewPage> {
  AdminUserStore targetStore;
  final AdminCommentStore ownerStore;

  final tableService = locator<TableService>();
  final AdminCommentCreatedByViewPageStore pageStore = AdminCommentCreatedByViewPageStore();
  final AdminCommentCreatedByViewConfig pageConfig = AdminCommentCreatedByViewConfig();
  AdminCommentCreatedByViewPageActions pageActions;

  _AdminCommentCreatedByViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    /// Aggregate table sorting variables init with default values
    SortSettings activityCitiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminCommentCreatedByViewActivityCities',
      sortColumnIndex: pageConfig.activityCitiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityCitiesTableConfig.sortColumnName,
      sortAsc: pageConfig.activityCitiesTableConfig.sortAsc,
    );

    pageStore.activityCitiesSortColumnIndex = activityCitiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityCitiesSortColumnName = activityCitiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityCitiesSortAsc = activityCitiesSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings activityDistrictsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminCommentCreatedByViewActivityDistricts',
      sortColumnIndex: pageConfig.activityDistrictsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityDistrictsTableConfig.sortColumnName,
      sortAsc: pageConfig.activityDistrictsTableConfig.sortAsc,
    );

    pageStore.activityDistrictsSortColumnIndex = activityDistrictsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityDistrictsSortColumnName = activityDistrictsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityDistrictsSortAsc = activityDistrictsSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings activityCountiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminCommentCreatedByViewActivityCounties',
      sortColumnIndex: pageConfig.activityCountiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityCountiesTableConfig.sortColumnName,
      sortAsc: pageConfig.activityCountiesTableConfig.sortAsc,
    );

    pageStore.activityCountiesSortColumnIndex = activityCountiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityCountiesSortColumnName = activityCountiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityCountiesSortAsc = activityCountiesSortSettings.sortAsc; // TODO: JNG-2716

    pageStore.targetStore = targetStore;
    pageActions = AdminCommentCreatedByViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshUser(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminCommentCreatedByViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminCommentCreatedByViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCommentCreatedByViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCommentCreatedByViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminCommentCreatedByViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
