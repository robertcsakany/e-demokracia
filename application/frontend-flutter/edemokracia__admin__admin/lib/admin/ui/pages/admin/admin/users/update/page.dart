//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.users.update;

class AdminAdminUsersUpdatePageStore extends _AdminAdminUsersUpdatePageStore with _$AdminAdminUsersUpdatePageStore {}

abstract class _AdminAdminUsersUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminAdminUsersUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminUsersUpdateConfig pageConfig) {
    if (targetStore.activityCities != null) {
      var dataInfo = EdemokraciaAdminAdminUsersEditActivityCitiesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.activityCities.sort(TableUtility.getSortComparator(activityCitiesSortColumnIndex, activityCitiesSortAsc, dataInfo));
    }
    if (targetStore.activityDistricts != null) {
      var dataInfo = EdemokraciaAdminAdminUsersEditActivityDistrictsMobileTable(context, this, pageConfig, disabled: false);
      targetStore.activityDistricts.sort(TableUtility.getSortComparator(activityDistrictsSortColumnIndex, activityDistrictsSortAsc, dataInfo));
    }
    if (targetStore.activityCounties != null) {
      var dataInfo = EdemokraciaAdminAdminUsersEditActivityCountiesMobileTable(context, this, pageConfig, disabled: false);
      targetStore.activityCounties.sort(TableUtility.getSortComparator(activityCountiesSortColumnIndex, activityCountiesSortAsc, dataInfo));
    }
  }

  @observable
  AdminUserStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'created': ValidationError(),
    'email': ValidationError(),
    'firstName': ValidationError(),
    'isAdmin': ValidationError(),
    'lastName': ValidationError(),
    'phone': ValidationError(),
    'representation': ValidationError(),
    'userName': ValidationError(),
    'activityCities': ValidationError(),
    'activityCounties': ValidationError(),
    'activityDistricts': ValidationError(),
    'residentCity': ValidationError(),
    'residentCounty': ValidationError(),
    'residentDistrict': ValidationError(),
    'votes': ValidationError(),
  };

  @action
  Future<void> refreshUser(AdminUserStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminUserGetByIdentifier(targetStore));
  }

  @action
  Future<AdminUserStore> validate(AdminUserStore targetStore) async {
    return await _actorRepository.edemokraciaAdminUserValidateForUpdate(targetStore);
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

  // ActivityCities range actions

  @observable
  ObservableFuture userActivityCitiesStoreRangeFuture;

  @observable
  int activityCitiesSortColumnIndexRange;

  @observable
  String activityCitiesSortColumnNameRange;

  @observable
  bool activityCitiesSortAscRange;

  @observable
  List<AdminCityStore> activityCitiesStoreRangeList = ObservableList<AdminCityStore>();

  @computed
  int get activityCitiesTableForRangeItemsRangeStart => nextPageCounterForActivityCitiesRange * activityCitiesQueryLimit + 1;

  @computed
  int get activityCitiesTableForRangeItemsRangeEnd => activityCitiesTableForRangeItemsRangeStart - 1 + activityCitiesStoreRangeList.length;

  @observable
  bool nextButtonEnableForActivityCitiesRange = false;

  @observable
  int nextPageCounterForActivityCitiesRange = 0;

  @computed
  bool get previousButtonEnableForActivityCitiesRange => nextPageCounterForActivityCitiesRange > 0;

  @action
  void activityCitiesSetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (activityCitiesSortColumnIndexRange != sortColumnIndex) {
      activityCitiesSortAscRange = true;
    } else {
      activityCitiesSortAscRange = !activityCitiesSortAscRange;
    }

    activityCitiesSortColumnIndexRange = sortColumnIndex;
    activityCitiesSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersEditActivityCitiesRange',
      sortColumnIndex: activityCitiesSortColumnIndexRange,
      sortColumnName: activityCitiesSortColumnNameRange,
      sortAsc: activityCitiesSortAscRange,
    );

    getRangeForActivityCities(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminCityStore>> getRangeForActivityCities(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? activityCitiesQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForActivityCitiesRange = 0;
    }

    userActivityCitiesStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfActivityCitiesToUpdate(
      ownerStore,
      sortColumn: activityCitiesSortColumnNameRange,
      sortAscending: activityCitiesSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? activityCitiesStoreRangeList.last : activityCitiesStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminCityStore> nextItemsList = await userActivityCitiesStoreRangeFuture;
    nextButtonEnableForActivityCitiesRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForActivityCitiesRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForActivityCitiesRange++;
      } else {
        nextPageCounterForActivityCitiesRange--;
      }
    }

    activityCitiesStoreRangeList.clear();
    activityCitiesStoreRangeList.addAll(nextItemsList);
    return activityCitiesStoreRangeList;
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

  // ActivityDistricts range actions

  @observable
  ObservableFuture userActivityDistrictsStoreRangeFuture;

  @observable
  int activityDistrictsSortColumnIndexRange;

  @observable
  String activityDistrictsSortColumnNameRange;

  @observable
  bool activityDistrictsSortAscRange;

  @observable
  List<AdminDistrictStore> activityDistrictsStoreRangeList = ObservableList<AdminDistrictStore>();

  @computed
  int get activityDistrictsTableForRangeItemsRangeStart => nextPageCounterForActivityDistrictsRange * activityDistrictsQueryLimit + 1;

  @computed
  int get activityDistrictsTableForRangeItemsRangeEnd => activityDistrictsTableForRangeItemsRangeStart - 1 + activityDistrictsStoreRangeList.length;

  @observable
  bool nextButtonEnableForActivityDistrictsRange = false;

  @observable
  int nextPageCounterForActivityDistrictsRange = 0;

  @computed
  bool get previousButtonEnableForActivityDistrictsRange => nextPageCounterForActivityDistrictsRange > 0;

  @action
  void activityDistrictsSetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (activityDistrictsSortColumnIndexRange != sortColumnIndex) {
      activityDistrictsSortAscRange = true;
    } else {
      activityDistrictsSortAscRange = !activityDistrictsSortAscRange;
    }

    activityDistrictsSortColumnIndexRange = sortColumnIndex;
    activityDistrictsSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersEditActivityDistrictsRange',
      sortColumnIndex: activityDistrictsSortColumnIndexRange,
      sortColumnName: activityDistrictsSortColumnNameRange,
      sortAsc: activityDistrictsSortAscRange,
    );

    getRangeForActivityDistricts(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminDistrictStore>> getRangeForActivityDistricts(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? activityDistrictsQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForActivityDistrictsRange = 0;
    }

    userActivityDistrictsStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfActivityDistrictsToUpdate(
      ownerStore,
      sortColumn: activityDistrictsSortColumnNameRange,
      sortAscending: activityDistrictsSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? activityDistrictsStoreRangeList.last : activityDistrictsStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminDistrictStore> nextItemsList = await userActivityDistrictsStoreRangeFuture;
    nextButtonEnableForActivityDistrictsRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForActivityDistrictsRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForActivityDistrictsRange++;
      } else {
        nextPageCounterForActivityDistrictsRange--;
      }
    }

    activityDistrictsStoreRangeList.clear();
    activityDistrictsStoreRangeList.addAll(nextItemsList);
    return activityDistrictsStoreRangeList;
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

  // ActivityCounties range actions

  @observable
  ObservableFuture userActivityCountiesStoreRangeFuture;

  @observable
  int activityCountiesSortColumnIndexRange;

  @observable
  String activityCountiesSortColumnNameRange;

  @observable
  bool activityCountiesSortAscRange;

  @observable
  List<AdminCountyStore> activityCountiesStoreRangeList = ObservableList<AdminCountyStore>();

  @computed
  int get activityCountiesTableForRangeItemsRangeStart => nextPageCounterForActivityCountiesRange * activityCountiesQueryLimit + 1;

  @computed
  int get activityCountiesTableForRangeItemsRangeEnd => activityCountiesTableForRangeItemsRangeStart - 1 + activityCountiesStoreRangeList.length;

  @observable
  bool nextButtonEnableForActivityCountiesRange = false;

  @observable
  int nextPageCounterForActivityCountiesRange = 0;

  @computed
  bool get previousButtonEnableForActivityCountiesRange => nextPageCounterForActivityCountiesRange > 0;

  @action
  void activityCountiesSetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (activityCountiesSortColumnIndexRange != sortColumnIndex) {
      activityCountiesSortAscRange = true;
    } else {
      activityCountiesSortAscRange = !activityCountiesSortAscRange;
    }

    activityCountiesSortColumnIndexRange = sortColumnIndex;
    activityCountiesSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersEditActivityCountiesRange',
      sortColumnIndex: activityCountiesSortColumnIndexRange,
      sortColumnName: activityCountiesSortColumnNameRange,
      sortAsc: activityCountiesSortAscRange,
    );

    getRangeForActivityCounties(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminCountyStore>> getRangeForActivityCounties(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? activityCountiesQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForActivityCountiesRange = 0;
    }

    userActivityCountiesStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfActivityCountiesToUpdate(
      ownerStore,
      sortColumn: activityCountiesSortColumnNameRange,
      sortAscending: activityCountiesSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? activityCountiesStoreRangeList.last : activityCountiesStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminCountyStore> nextItemsList = await userActivityCountiesStoreRangeFuture;
    nextButtonEnableForActivityCountiesRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForActivityCountiesRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForActivityCountiesRange++;
      } else {
        nextPageCounterForActivityCountiesRange--;
      }
    }

    activityCountiesStoreRangeList.clear();
    activityCountiesStoreRangeList.addAll(nextItemsList);
    return activityCountiesStoreRangeList;
  }

  int residentCityQueryLimit = 5; // For judo link setter dialog

  // ResidentCity range actions

  @observable
  ObservableFuture userResidentCityStoreRangeFuture;

  @observable
  int residentCitySortColumnIndexRange;

  @observable
  String residentCitySortColumnNameRange;

  @observable
  bool residentCitySortAscRange;

  @observable
  List<AdminCityStore> residentCityStoreRangeList = ObservableList<AdminCityStore>();

  @computed
  int get residentCityTableForRangeItemsRangeStart => nextPageCounterForResidentCityRange * residentCityQueryLimit + 1;

  @computed
  int get residentCityTableForRangeItemsRangeEnd => residentCityTableForRangeItemsRangeStart - 1 + residentCityStoreRangeList.length;

  @observable
  bool nextButtonEnableForResidentCityRange = false;

  @observable
  int nextPageCounterForResidentCityRange = 0;

  @computed
  bool get previousButtonEnableForResidentCityRange => nextPageCounterForResidentCityRange > 0;

  @action
  void residentCitySetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (residentCitySortColumnIndexRange != sortColumnIndex) {
      residentCitySortAscRange = true;
    } else {
      residentCitySortAscRange = !residentCitySortAscRange;
    }

    residentCitySortColumnIndexRange = sortColumnIndex;
    residentCitySortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersEditResidentCityRange',
      sortColumnIndex: residentCitySortColumnIndexRange,
      sortColumnName: residentCitySortColumnNameRange,
      sortAsc: residentCitySortAscRange,
    );

    getRangeForResidentCity(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminCityStore>> getRangeForResidentCity(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? residentCityQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForResidentCityRange = 0;
    }

    userResidentCityStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfResidentCityToUpdate(
      ownerStore,
      sortColumn: residentCitySortColumnNameRange,
      sortAscending: residentCitySortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? residentCityStoreRangeList.last : residentCityStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminCityStore> nextItemsList = await userResidentCityStoreRangeFuture;
    nextButtonEnableForResidentCityRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForResidentCityRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForResidentCityRange++;
      } else {
        nextPageCounterForResidentCityRange--;
      }
    }

    residentCityStoreRangeList.clear();
    residentCityStoreRangeList.addAll(nextItemsList);
    return residentCityStoreRangeList;
  }

  int residentCountyQueryLimit = 5; // For judo link setter dialog

  // ResidentCounty range actions

  @observable
  ObservableFuture userResidentCountyStoreRangeFuture;

  @observable
  int residentCountySortColumnIndexRange;

  @observable
  String residentCountySortColumnNameRange;

  @observable
  bool residentCountySortAscRange;

  @observable
  List<AdminCountyStore> residentCountyStoreRangeList = ObservableList<AdminCountyStore>();

  @computed
  int get residentCountyTableForRangeItemsRangeStart => nextPageCounterForResidentCountyRange * residentCountyQueryLimit + 1;

  @computed
  int get residentCountyTableForRangeItemsRangeEnd => residentCountyTableForRangeItemsRangeStart - 1 + residentCountyStoreRangeList.length;

  @observable
  bool nextButtonEnableForResidentCountyRange = false;

  @observable
  int nextPageCounterForResidentCountyRange = 0;

  @computed
  bool get previousButtonEnableForResidentCountyRange => nextPageCounterForResidentCountyRange > 0;

  @action
  void residentCountySetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (residentCountySortColumnIndexRange != sortColumnIndex) {
      residentCountySortAscRange = true;
    } else {
      residentCountySortAscRange = !residentCountySortAscRange;
    }

    residentCountySortColumnIndexRange = sortColumnIndex;
    residentCountySortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersEditResidentCountyRange',
      sortColumnIndex: residentCountySortColumnIndexRange,
      sortColumnName: residentCountySortColumnNameRange,
      sortAsc: residentCountySortAscRange,
    );

    getRangeForResidentCounty(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminCountyStore>> getRangeForResidentCounty(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? residentCountyQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForResidentCountyRange = 0;
    }

    userResidentCountyStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfResidentCountyToUpdate(
      ownerStore,
      sortColumn: residentCountySortColumnNameRange,
      sortAscending: residentCountySortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? residentCountyStoreRangeList.last : residentCountyStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminCountyStore> nextItemsList = await userResidentCountyStoreRangeFuture;
    nextButtonEnableForResidentCountyRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForResidentCountyRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForResidentCountyRange++;
      } else {
        nextPageCounterForResidentCountyRange--;
      }
    }

    residentCountyStoreRangeList.clear();
    residentCountyStoreRangeList.addAll(nextItemsList);
    return residentCountyStoreRangeList;
  }

  int residentDistrictQueryLimit = 5; // For judo link setter dialog

  // ResidentDistrict range actions

  @observable
  ObservableFuture userResidentDistrictStoreRangeFuture;

  @observable
  int residentDistrictSortColumnIndexRange;

  @observable
  String residentDistrictSortColumnNameRange;

  @observable
  bool residentDistrictSortAscRange;

  @observable
  List<AdminDistrictStore> residentDistrictStoreRangeList = ObservableList<AdminDistrictStore>();

  @computed
  int get residentDistrictTableForRangeItemsRangeStart => nextPageCounterForResidentDistrictRange * residentDistrictQueryLimit + 1;

  @computed
  int get residentDistrictTableForRangeItemsRangeEnd => residentDistrictTableForRangeItemsRangeStart - 1 + residentDistrictStoreRangeList.length;

  @observable
  bool nextButtonEnableForResidentDistrictRange = false;

  @observable
  int nextPageCounterForResidentDistrictRange = 0;

  @computed
  bool get previousButtonEnableForResidentDistrictRange => nextPageCounterForResidentDistrictRange > 0;

  @action
  void residentDistrictSetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (residentDistrictSortColumnIndexRange != sortColumnIndex) {
      residentDistrictSortAscRange = true;
    } else {
      residentDistrictSortAscRange = !residentDistrictSortAscRange;
    }

    residentDistrictSortColumnIndexRange = sortColumnIndex;
    residentDistrictSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminUsersEditResidentDistrictRange',
      sortColumnIndex: residentDistrictSortColumnIndexRange,
      sortColumnName: residentDistrictSortColumnNameRange,
      sortAsc: residentDistrictSortAscRange,
    );

    getRangeForResidentDistrict(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<AdminDistrictStore>> getRangeForResidentDistrict(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? residentDistrictQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForResidentDistrictRange = 0;
    }

    userResidentDistrictStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminUserRangeOfResidentDistrictToUpdate(
      ownerStore,
      sortColumn: residentDistrictSortColumnNameRange,
      sortAscending: residentDistrictSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? residentDistrictStoreRangeList.last : residentDistrictStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<AdminDistrictStore> nextItemsList = await userResidentDistrictStoreRangeFuture;
    nextButtonEnableForResidentDistrictRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForResidentDistrictRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForResidentDistrictRange++;
      } else {
        nextPageCounterForResidentDistrictRange--;
      }
    }

    residentDistrictStoreRangeList.clear();
    residentDistrictStoreRangeList.addAll(nextItemsList);
    return residentDistrictStoreRangeList;
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
      'EdemokraciaAdminAdminUsersEditActivityCities',
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
  Future<List<AdminCityStore>> addActivityCities(AdminUserStore ownerStore, List<AdminCityStore> selectedStore) async {
    ownerStore.addAllActivityCities(selectedStore);
    return ownerStore.activityCities;
  }

  @action
  Future<void> removeActivityCities(AdminUserStore ownerStore, AdminCityStore selectedStore) async {
    ownerStore.removeActivityCities(selectedStore);
  }

  @action
  Future<void> setActivityCities(AdminUserStore ownerStore, List<AdminCityStore> selectedStore) async {
    ownerStore.setActivityCities(selectedStore.asObservable());
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
      'EdemokraciaAdminAdminUsersEditActivityCounties',
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
  Future<List<AdminCountyStore>> addActivityCounties(AdminUserStore ownerStore, List<AdminCountyStore> selectedStore) async {
    ownerStore.addAllActivityCounties(selectedStore);
    return ownerStore.activityCounties;
  }

  @action
  Future<void> removeActivityCounties(AdminUserStore ownerStore, AdminCountyStore selectedStore) async {
    ownerStore.removeActivityCounties(selectedStore);
  }

  @action
  Future<void> setActivityCounties(AdminUserStore ownerStore, List<AdminCountyStore> selectedStore) async {
    ownerStore.setActivityCounties(selectedStore.asObservable());
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
      'EdemokraciaAdminAdminUsersEditActivityDistricts',
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
  Future<List<AdminDistrictStore>> addActivityDistricts(AdminUserStore ownerStore, List<AdminDistrictStore> selectedStore) async {
    ownerStore.addAllActivityDistricts(selectedStore);
    return ownerStore.activityDistricts;
  }

  @action
  Future<void> removeActivityDistricts(AdminUserStore ownerStore, AdminDistrictStore selectedStore) async {
    ownerStore.removeActivityDistricts(selectedStore);
  }

  @action
  Future<void> setActivityDistricts(AdminUserStore ownerStore, List<AdminDistrictStore> selectedStore) async {
    ownerStore.setActivityDistricts(selectedStore.asObservable());
  }

  // ResidentCity embedded table order

  // ResidentCity aggregation actions

  @observable
  ObservableFuture userResidentCityStoreFuture;

  @action
  Future<void> setResidentCity(AdminUserStore ownerStore, AdminCityStore selectedStore) async {
    ownerStore.setResidentCity(selectedStore);
  }

  @action
  Future<void> unsetResidentCity(AdminUserStore ownerStore) async {
    ownerStore.setResidentCity(null);
  }

  // ResidentCounty embedded table order

  // ResidentCounty aggregation actions

  @observable
  ObservableFuture userResidentCountyStoreFuture;

  @action
  Future<void> setResidentCounty(AdminUserStore ownerStore, AdminCountyStore selectedStore) async {
    ownerStore.setResidentCounty(selectedStore);
  }

  @action
  Future<void> unsetResidentCounty(AdminUserStore ownerStore) async {
    ownerStore.setResidentCounty(null);
  }

  // ResidentDistrict embedded table order

  // ResidentDistrict aggregation actions

  @observable
  ObservableFuture userResidentDistrictStoreFuture;

  @action
  Future<void> setResidentDistrict(AdminUserStore ownerStore, AdminDistrictStore selectedStore) async {
    ownerStore.setResidentDistrict(selectedStore);
  }

  @action
  Future<void> unsetResidentDistrict(AdminUserStore ownerStore) async {
    ownerStore.setResidentDistrict(null);
  }
}

class AdminAdminUsersUpdatePage extends StatefulWidget {
  static const String title = 'View / Edit User';

  final AdminUserStore targetStore;

  const AdminAdminUsersUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminAdminUsersUpdatePageState(targetStore: targetStore);
}

class _AdminAdminUsersUpdatePageState extends State<AdminAdminUsersUpdatePage> {
  final AdminUserStore targetStore;

  final tableService = locator<TableService>();
  final AdminAdminUsersUpdatePageStore pageStore = AdminAdminUsersUpdatePageStore();
  final AdminAdminUsersUpdateConfig pageConfig = AdminAdminUsersUpdateConfig();
  AdminAdminUsersUpdatePageActions pageActions;

  _AdminAdminUsersUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    /// Rangeable (link) sorting variables init with default values
    SortSettings residentCityLinkRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditResidentCityRange',
      sortColumnIndex: pageConfig.residentCityTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.residentCityTableConfig.sortColumnName,
      sortAsc: pageConfig.residentCityTableConfig.sortAsc,
    );

    pageStore.residentCitySortColumnIndexRange = residentCityLinkRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.residentCitySortColumnNameRange = residentCityLinkRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.residentCitySortAscRange = residentCityLinkRangeSortSettings.sortAsc;

    /// Rangeable (link) sorting variables init with default values
    SortSettings residentCountyLinkRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditResidentCountyRange',
      sortColumnIndex: pageConfig.residentCountyTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.residentCountyTableConfig.sortColumnName,
      sortAsc: pageConfig.residentCountyTableConfig.sortAsc,
    );

    pageStore.residentCountySortColumnIndexRange = residentCountyLinkRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.residentCountySortColumnNameRange = residentCountyLinkRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.residentCountySortAscRange = residentCountyLinkRangeSortSettings.sortAsc;

    /// Rangeable (link) sorting variables init with default values
    SortSettings residentDistrictLinkRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditResidentDistrictRange',
      sortColumnIndex: pageConfig.residentDistrictTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.residentDistrictTableConfig.sortColumnName,
      sortAsc: pageConfig.residentDistrictTableConfig.sortAsc,
    );

    pageStore.residentDistrictSortColumnIndexRange = residentDistrictLinkRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.residentDistrictSortColumnNameRange = residentDistrictLinkRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.residentDistrictSortAscRange = residentDistrictLinkRangeSortSettings.sortAsc;

    /// Rangeable (table) sorting variables init with default values
    SortSettings activityCitiesTableRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditActivityCitiesRange',
      sortColumnIndex: pageConfig.activityCitiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityCitiesTableConfig.sortColumnName,
      sortAsc: pageConfig.activityCitiesTableConfig.sortAsc,
    );

    pageStore.activityCitiesSortColumnIndexRange = activityCitiesTableRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityCitiesSortColumnNameRange = activityCitiesTableRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityCitiesSortAscRange = activityCitiesTableRangeSortSettings.sortAsc;

    /// Rangeable (table) sorting variables init with default values
    SortSettings activityDistrictsTableRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditActivityDistrictsRange',
      sortColumnIndex: pageConfig.activityDistrictsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityDistrictsTableConfig.sortColumnName,
      sortAsc: pageConfig.activityDistrictsTableConfig.sortAsc,
    );

    pageStore.activityDistrictsSortColumnIndexRange = activityDistrictsTableRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityDistrictsSortColumnNameRange = activityDistrictsTableRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityDistrictsSortAscRange = activityDistrictsTableRangeSortSettings.sortAsc;

    /// Rangeable (table) sorting variables init with default values
    SortSettings activityCountiesTableRangeSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditActivityCountiesRange',
      sortColumnIndex: pageConfig.activityCountiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityCountiesTableConfig.sortColumnName,
      sortAsc: pageConfig.activityCountiesTableConfig.sortAsc,
    );

    pageStore.activityCountiesSortColumnIndexRange = activityCountiesTableRangeSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityCountiesSortColumnNameRange = activityCountiesTableRangeSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityCountiesSortAscRange = activityCountiesTableRangeSortSettings.sortAsc;

    /// Aggregate table sorting variables init with default values
    SortSettings activityCitiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditActivityCities',
      sortColumnIndex: pageConfig.activityCitiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityCitiesTableConfig.sortColumnName,
      sortAsc: pageConfig.activityCitiesTableConfig.sortAsc,
    );

    pageStore.activityCitiesSortColumnIndex = activityCitiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityCitiesSortColumnName = activityCitiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityCitiesSortAsc = activityCitiesSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings activityDistrictsSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditActivityDistricts',
      sortColumnIndex: pageConfig.activityDistrictsTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityDistrictsTableConfig.sortColumnName,
      sortAsc: pageConfig.activityDistrictsTableConfig.sortAsc,
    );

    pageStore.activityDistrictsSortColumnIndex = activityDistrictsSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityDistrictsSortColumnName = activityDistrictsSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityDistrictsSortAsc = activityDistrictsSortSettings.sortAsc; // TODO: JNG-2716
    /// Aggregate table sorting variables init with default values
    SortSettings activityCountiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminUsersEditActivityCounties',
      sortColumnIndex: pageConfig.activityCountiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.activityCountiesTableConfig.sortColumnName,
      sortAsc: pageConfig.activityCountiesTableConfig.sortAsc,
    );

    pageStore.activityCountiesSortColumnIndex = activityCountiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.activityCountiesSortColumnName = activityCountiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.activityCountiesSortAsc = activityCountiesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminAdminUsersUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshUser(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminUsersUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'userName': GlobalKey(),
    'isAdmin': GlobalKey(),
    'created': GlobalKey(),
    'firstName': GlobalKey(),
    'lastName': GlobalKey(),
    'email': GlobalKey(),
    'phone': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminUsersUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminUsersUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminUsersUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminAdminUsersUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
