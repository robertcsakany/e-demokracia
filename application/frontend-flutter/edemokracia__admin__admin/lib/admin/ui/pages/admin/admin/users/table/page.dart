//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.users.table;

class AdminAdminUsersTablePageStore extends _AdminAdminUsersTablePageStore with _$AdminAdminUsersTablePageStore {}

abstract class _AdminAdminUsersTablePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  TableService tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState refreshActionLoadingState;
  LoadingState filterActionLoadingState;

  _AdminAdminUsersTablePageStore() {
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    filterActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminUserStore targetStore;

  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'userName', attributeLabel: 'Username', filterType: FilterType.string),
    FilterStore(attributeName: 'isAdmin', attributeLabel: 'Has admin access', filterType: FilterType.boolean),
    FilterStore(attributeName: 'firstName', attributeLabel: 'First name', filterType: FilterType.string),
    FilterStore(attributeName: 'lastName', attributeLabel: 'Last name', filterType: FilterType.string),
    FilterStore(attributeName: 'phone', attributeLabel: 'Phone', filterType: FilterType.string),
    FilterStore(attributeName: 'email', attributeLabel: 'Email', filterType: FilterType.string),
    FilterStore(attributeName: 'created', attributeLabel: 'Created', filterType: FilterType.dateTime),
  ];

  final String mask = '{userName,isAdmin,firstName,lastName,phone,email,created}';

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

  int usersQueryLimit = (12.0 - 2).round();

  @observable
  List<AdminUserStore> usersStoreList = ObservableList<AdminUserStore>();

  @observable
  bool nextButtonEnable = false;

  @computed
  int get pageTableItemsRangeStart => nextPageCounter * usersQueryLimit + 1;

  @observable
  int nextPageCounter = 0;

  @computed
  bool get previousButtonEnable => nextPageCounter > 0;

  @observable
  int usersSortColumnIndex;

  @observable
  String usersSortColumnName;

  @observable
  bool usersSortAsc;

  @action
  void usersSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    if (usersSortColumnIndex != sortColumnIndex) {
      usersSortAsc = true;
    } else {
      usersSortAsc = !usersSortAsc;
    }

    usersSortColumnIndex = sortColumnIndex;
    usersSortColumnName = sortColumnName;
    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersTableUsers',
      sortColumnIndex: usersSortColumnIndex,
      sortColumnName: usersSortColumnName,
      sortAsc: usersSortAsc,
    );
    getUsers();
  }

  @observable
  ObservableFuture adminUsersStoreFuture;

  @action
  Future<List<AdminUserStore>> getUsers({int queryLimit, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? usersQueryLimit) + (isNext == null || isNext ? 1 : 0);
    if (isNext == null) {
      nextPageCounter = 0;
    }

    adminUsersStoreFuture = ObservableFuture(_actorRepository.edemokraciaAdminAdminUsersList(
      sortColumn: usersSortColumnName,
      sortAscending: usersSortAsc,
      filterStoreList: availableFilterList,
      queryLimit: effectiveQueryLimit,
      mask: mask,
      lastItem: isNext != null ? (isNext ? usersStoreList.last : usersStoreList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminUserStore> nextItemsList = await adminUsersStoreFuture;
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

    usersStoreList.clear();
    usersStoreList.addAll(nextItemsList);

    return usersStoreList;
  }

  // Users range actions

  @action
  Future<void> deleteUser(AdminUserStore targetStore) async {
    await _actorRepository.edemokraciaAdminUserDelete(targetStore);
    getUsers();
  }

  @action
  Future<void> updateUser(AdminUserStore newTargetStore) async {
    await _actorRepository.edemokraciaAdminUserUpdate(newTargetStore);
    await getUsers();
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminAdminUsersTablePage extends StatefulWidget {
  static const String title = 'Users';

  @override
  State<StatefulWidget> createState() => _AdminAdminUsersTablePageState();
}

class _AdminAdminUsersTablePageState extends State<AdminAdminUsersTablePage> {
  final tableService = locator<TableService>();
  final AdminAdminUsersTablePageStore pageStore = AdminAdminUsersTablePageStore();
  final AdminAdminUsersTableConfig pageConfig = AdminAdminUsersTableConfig();
  AdminAdminUsersTablePageActions pageActions;

  _AdminAdminUsersTablePageState() {
    if (pageConfig.usersTableConfig.defaultOpenedFilters.isNotEmpty) {
      pageStore.availableFilterList.addAll(pageConfig.usersTableConfig.defaultOpenedFilters);
    }
    if (pageConfig.usersTableConfig.selectableFilters.isNotEmpty) {
      pageStore.selectableFilters.clear();
      pageStore.selectableFilters.addAll(pageConfig.usersTableConfig.selectableFilters);
    }
    pageStore.tableService.updateAvailableFiltersIfStoredPresent('EdemokraciaAdminAdminUsersTableUsers', pageStore.availableFilterList);
    pageStore.setFiltersHorizontalOrientation(pageConfig.usersTableConfig.filtersHorizontalOrientation);

    // Table sorting variables init with default values
    SortSettings usersSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersTableUsers',
      sortColumnIndex: pageConfig.usersTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.usersTableConfig.sortColumnName,
      sortAsc: pageConfig.usersTableConfig.sortAsc,
    );

    pageStore.usersSortColumnIndex = usersSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.usersSortColumnName = usersSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.usersSortAsc = usersSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    pageActions = AdminAdminUsersTablePageActions(navigation, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminUsersTablePage.title));
      navigation.setCurrentPageActions(pageActions);
      setFiltersLocalizedLabel(context, pageStore.availableFilterList);
    });

    pageStore.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        pageStore.setPageMaxCol(4);
        return getAdminAdminUsersTableMobilePage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        pageStore.setPageMaxCol(8);
        return getAdminAdminUsersTableTabletPage(context, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        pageStore.setPageMaxCol(12);
        return getAdminAdminUsersTableDesktopPage(context, pageStore, pageConfig);
      }
      pageStore.setPageMaxCol(12);
      return getAdminAdminUsersTableDesktopPage(context, pageStore, pageConfig);
    });

    return layout;
  }
}
