// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.created_by.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProCreatedByViewPageStore on _AdminProCreatedByViewPageStore, Store {
  Computed<int> _$activityCitiesTableItemsRangeStartComputed;

  @override
  int get activityCitiesTableItemsRangeStart => (_$activityCitiesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.activityCitiesTableItemsRangeStart, name: '_AdminProCreatedByViewPageStore.activityCitiesTableItemsRangeStart'))
      .value;
  Computed<int> _$activityCitiesTableItemsRangeEndComputed;

  @override
  int get activityCitiesTableItemsRangeEnd => (_$activityCitiesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.activityCitiesTableItemsRangeEnd, name: '_AdminProCreatedByViewPageStore.activityCitiesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$activityCitiesTablePreviousEnableComputed;

  @override
  bool get activityCitiesTablePreviousEnable => (_$activityCitiesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.activityCitiesTablePreviousEnable, name: '_AdminProCreatedByViewPageStore.activityCitiesTablePreviousEnable'))
      .value;
  Computed<bool> _$activityCitiesTableNextEnableComputed;

  @override
  bool get activityCitiesTableNextEnable => (_$activityCitiesTableNextEnableComputed ??=
          Computed<bool>(() => super.activityCitiesTableNextEnable, name: '_AdminProCreatedByViewPageStore.activityCitiesTableNextEnable'))
      .value;
  Computed<List<AdminCityStore>> _$activityCitiesTablePagingListComputed;

  @override
  List<AdminCityStore> get activityCitiesTablePagingList => (_$activityCitiesTablePagingListComputed ??=
          Computed<List<AdminCityStore>>(() => super.activityCitiesTablePagingList, name: '_AdminProCreatedByViewPageStore.activityCitiesTablePagingList'))
      .value;
  Computed<int> _$activityDistrictsTableItemsRangeStartComputed;

  @override
  int get activityDistrictsTableItemsRangeStart => (_$activityDistrictsTableItemsRangeStartComputed ??=
          Computed<int>(() => super.activityDistrictsTableItemsRangeStart, name: '_AdminProCreatedByViewPageStore.activityDistrictsTableItemsRangeStart'))
      .value;
  Computed<int> _$activityDistrictsTableItemsRangeEndComputed;

  @override
  int get activityDistrictsTableItemsRangeEnd => (_$activityDistrictsTableItemsRangeEndComputed ??=
          Computed<int>(() => super.activityDistrictsTableItemsRangeEnd, name: '_AdminProCreatedByViewPageStore.activityDistrictsTableItemsRangeEnd'))
      .value;
  Computed<bool> _$activityDistrictsTablePreviousEnableComputed;

  @override
  bool get activityDistrictsTablePreviousEnable => (_$activityDistrictsTablePreviousEnableComputed ??=
          Computed<bool>(() => super.activityDistrictsTablePreviousEnable, name: '_AdminProCreatedByViewPageStore.activityDistrictsTablePreviousEnable'))
      .value;
  Computed<bool> _$activityDistrictsTableNextEnableComputed;

  @override
  bool get activityDistrictsTableNextEnable => (_$activityDistrictsTableNextEnableComputed ??=
          Computed<bool>(() => super.activityDistrictsTableNextEnable, name: '_AdminProCreatedByViewPageStore.activityDistrictsTableNextEnable'))
      .value;
  Computed<List<AdminDistrictStore>> _$activityDistrictsTablePagingListComputed;

  @override
  List<AdminDistrictStore> get activityDistrictsTablePagingList =>
      (_$activityDistrictsTablePagingListComputed ??= Computed<List<AdminDistrictStore>>(() => super.activityDistrictsTablePagingList,
              name: '_AdminProCreatedByViewPageStore.activityDistrictsTablePagingList'))
          .value;
  Computed<int> _$activityCountiesTableItemsRangeStartComputed;

  @override
  int get activityCountiesTableItemsRangeStart => (_$activityCountiesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.activityCountiesTableItemsRangeStart, name: '_AdminProCreatedByViewPageStore.activityCountiesTableItemsRangeStart'))
      .value;
  Computed<int> _$activityCountiesTableItemsRangeEndComputed;

  @override
  int get activityCountiesTableItemsRangeEnd => (_$activityCountiesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.activityCountiesTableItemsRangeEnd, name: '_AdminProCreatedByViewPageStore.activityCountiesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$activityCountiesTablePreviousEnableComputed;

  @override
  bool get activityCountiesTablePreviousEnable => (_$activityCountiesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.activityCountiesTablePreviousEnable, name: '_AdminProCreatedByViewPageStore.activityCountiesTablePreviousEnable'))
      .value;
  Computed<bool> _$activityCountiesTableNextEnableComputed;

  @override
  bool get activityCountiesTableNextEnable => (_$activityCountiesTableNextEnableComputed ??=
          Computed<bool>(() => super.activityCountiesTableNextEnable, name: '_AdminProCreatedByViewPageStore.activityCountiesTableNextEnable'))
      .value;
  Computed<List<AdminCountyStore>> _$activityCountiesTablePagingListComputed;

  @override
  List<AdminCountyStore> get activityCountiesTablePagingList =>
      (_$activityCountiesTablePagingListComputed ??= Computed<List<AdminCountyStore>>(() => super.activityCountiesTablePagingList,
              name: '_AdminProCreatedByViewPageStore.activityCountiesTablePagingList'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminProCreatedByViewPageStore.targetStore');

  @override
  AdminUserStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminUserStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$activityCitiesTablePageNumberAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCitiesTablePageNumber');

  @override
  int get activityCitiesTablePageNumber {
    _$activityCitiesTablePageNumberAtom.reportRead();
    return super.activityCitiesTablePageNumber;
  }

  @override
  set activityCitiesTablePageNumber(int value) {
    _$activityCitiesTablePageNumberAtom.reportWrite(value, super.activityCitiesTablePageNumber, () {
      super.activityCitiesTablePageNumber = value;
    });
  }

  final _$activityDistrictsTablePageNumberAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityDistrictsTablePageNumber');

  @override
  int get activityDistrictsTablePageNumber {
    _$activityDistrictsTablePageNumberAtom.reportRead();
    return super.activityDistrictsTablePageNumber;
  }

  @override
  set activityDistrictsTablePageNumber(int value) {
    _$activityDistrictsTablePageNumberAtom.reportWrite(value, super.activityDistrictsTablePageNumber, () {
      super.activityDistrictsTablePageNumber = value;
    });
  }

  final _$activityCountiesTablePageNumberAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCountiesTablePageNumber');

  @override
  int get activityCountiesTablePageNumber {
    _$activityCountiesTablePageNumberAtom.reportRead();
    return super.activityCountiesTablePageNumber;
  }

  @override
  set activityCountiesTablePageNumber(int value) {
    _$activityCountiesTablePageNumberAtom.reportWrite(value, super.activityCountiesTablePageNumber, () {
      super.activityCountiesTablePageNumber = value;
    });
  }

  final _$activityCitiesSortColumnIndexAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCitiesSortColumnIndex');

  @override
  int get activityCitiesSortColumnIndex {
    _$activityCitiesSortColumnIndexAtom.reportRead();
    return super.activityCitiesSortColumnIndex;
  }

  @override
  set activityCitiesSortColumnIndex(int value) {
    _$activityCitiesSortColumnIndexAtom.reportWrite(value, super.activityCitiesSortColumnIndex, () {
      super.activityCitiesSortColumnIndex = value;
    });
  }

  final _$activityCitiesSortColumnNameAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCitiesSortColumnName');

  @override
  String get activityCitiesSortColumnName {
    _$activityCitiesSortColumnNameAtom.reportRead();
    return super.activityCitiesSortColumnName;
  }

  @override
  set activityCitiesSortColumnName(String value) {
    _$activityCitiesSortColumnNameAtom.reportWrite(value, super.activityCitiesSortColumnName, () {
      super.activityCitiesSortColumnName = value;
    });
  }

  final _$activityCitiesSortAscAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCitiesSortAsc');

  @override
  bool get activityCitiesSortAsc {
    _$activityCitiesSortAscAtom.reportRead();
    return super.activityCitiesSortAsc;
  }

  @override
  set activityCitiesSortAsc(bool value) {
    _$activityCitiesSortAscAtom.reportWrite(value, super.activityCitiesSortAsc, () {
      super.activityCitiesSortAsc = value;
    });
  }

  final _$activityCitiesSortCompareAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCitiesSortCompare');

  @override
  Comparator<dynamic> get activityCitiesSortCompare {
    _$activityCitiesSortCompareAtom.reportRead();
    return super.activityCitiesSortCompare;
  }

  @override
  set activityCitiesSortCompare(Comparator<dynamic> value) {
    _$activityCitiesSortCompareAtom.reportWrite(value, super.activityCitiesSortCompare, () {
      super.activityCitiesSortCompare = value;
    });
  }

  final _$userActivityCitiesStoreFutureAtom = Atom(name: '_AdminProCreatedByViewPageStore.userActivityCitiesStoreFuture');

  @override
  ObservableFuture<dynamic> get userActivityCitiesStoreFuture {
    _$userActivityCitiesStoreFutureAtom.reportRead();
    return super.userActivityCitiesStoreFuture;
  }

  @override
  set userActivityCitiesStoreFuture(ObservableFuture<dynamic> value) {
    _$userActivityCitiesStoreFutureAtom.reportWrite(value, super.userActivityCitiesStoreFuture, () {
      super.userActivityCitiesStoreFuture = value;
    });
  }

  final _$activityCountiesSortColumnIndexAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCountiesSortColumnIndex');

  @override
  int get activityCountiesSortColumnIndex {
    _$activityCountiesSortColumnIndexAtom.reportRead();
    return super.activityCountiesSortColumnIndex;
  }

  @override
  set activityCountiesSortColumnIndex(int value) {
    _$activityCountiesSortColumnIndexAtom.reportWrite(value, super.activityCountiesSortColumnIndex, () {
      super.activityCountiesSortColumnIndex = value;
    });
  }

  final _$activityCountiesSortColumnNameAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCountiesSortColumnName');

  @override
  String get activityCountiesSortColumnName {
    _$activityCountiesSortColumnNameAtom.reportRead();
    return super.activityCountiesSortColumnName;
  }

  @override
  set activityCountiesSortColumnName(String value) {
    _$activityCountiesSortColumnNameAtom.reportWrite(value, super.activityCountiesSortColumnName, () {
      super.activityCountiesSortColumnName = value;
    });
  }

  final _$activityCountiesSortAscAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCountiesSortAsc');

  @override
  bool get activityCountiesSortAsc {
    _$activityCountiesSortAscAtom.reportRead();
    return super.activityCountiesSortAsc;
  }

  @override
  set activityCountiesSortAsc(bool value) {
    _$activityCountiesSortAscAtom.reportWrite(value, super.activityCountiesSortAsc, () {
      super.activityCountiesSortAsc = value;
    });
  }

  final _$activityCountiesSortCompareAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityCountiesSortCompare');

  @override
  Comparator<dynamic> get activityCountiesSortCompare {
    _$activityCountiesSortCompareAtom.reportRead();
    return super.activityCountiesSortCompare;
  }

  @override
  set activityCountiesSortCompare(Comparator<dynamic> value) {
    _$activityCountiesSortCompareAtom.reportWrite(value, super.activityCountiesSortCompare, () {
      super.activityCountiesSortCompare = value;
    });
  }

  final _$userActivityCountiesStoreFutureAtom = Atom(name: '_AdminProCreatedByViewPageStore.userActivityCountiesStoreFuture');

  @override
  ObservableFuture<dynamic> get userActivityCountiesStoreFuture {
    _$userActivityCountiesStoreFutureAtom.reportRead();
    return super.userActivityCountiesStoreFuture;
  }

  @override
  set userActivityCountiesStoreFuture(ObservableFuture<dynamic> value) {
    _$userActivityCountiesStoreFutureAtom.reportWrite(value, super.userActivityCountiesStoreFuture, () {
      super.userActivityCountiesStoreFuture = value;
    });
  }

  final _$activityDistrictsSortColumnIndexAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityDistrictsSortColumnIndex');

  @override
  int get activityDistrictsSortColumnIndex {
    _$activityDistrictsSortColumnIndexAtom.reportRead();
    return super.activityDistrictsSortColumnIndex;
  }

  @override
  set activityDistrictsSortColumnIndex(int value) {
    _$activityDistrictsSortColumnIndexAtom.reportWrite(value, super.activityDistrictsSortColumnIndex, () {
      super.activityDistrictsSortColumnIndex = value;
    });
  }

  final _$activityDistrictsSortColumnNameAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityDistrictsSortColumnName');

  @override
  String get activityDistrictsSortColumnName {
    _$activityDistrictsSortColumnNameAtom.reportRead();
    return super.activityDistrictsSortColumnName;
  }

  @override
  set activityDistrictsSortColumnName(String value) {
    _$activityDistrictsSortColumnNameAtom.reportWrite(value, super.activityDistrictsSortColumnName, () {
      super.activityDistrictsSortColumnName = value;
    });
  }

  final _$activityDistrictsSortAscAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityDistrictsSortAsc');

  @override
  bool get activityDistrictsSortAsc {
    _$activityDistrictsSortAscAtom.reportRead();
    return super.activityDistrictsSortAsc;
  }

  @override
  set activityDistrictsSortAsc(bool value) {
    _$activityDistrictsSortAscAtom.reportWrite(value, super.activityDistrictsSortAsc, () {
      super.activityDistrictsSortAsc = value;
    });
  }

  final _$activityDistrictsSortCompareAtom = Atom(name: '_AdminProCreatedByViewPageStore.activityDistrictsSortCompare');

  @override
  Comparator<dynamic> get activityDistrictsSortCompare {
    _$activityDistrictsSortCompareAtom.reportRead();
    return super.activityDistrictsSortCompare;
  }

  @override
  set activityDistrictsSortCompare(Comparator<dynamic> value) {
    _$activityDistrictsSortCompareAtom.reportWrite(value, super.activityDistrictsSortCompare, () {
      super.activityDistrictsSortCompare = value;
    });
  }

  final _$userActivityDistrictsStoreFutureAtom = Atom(name: '_AdminProCreatedByViewPageStore.userActivityDistrictsStoreFuture');

  @override
  ObservableFuture<dynamic> get userActivityDistrictsStoreFuture {
    _$userActivityDistrictsStoreFutureAtom.reportRead();
    return super.userActivityDistrictsStoreFuture;
  }

  @override
  set userActivityDistrictsStoreFuture(ObservableFuture<dynamic> value) {
    _$userActivityDistrictsStoreFutureAtom.reportWrite(value, super.userActivityDistrictsStoreFuture, () {
      super.userActivityDistrictsStoreFuture = value;
    });
  }

  final _$userResidentCityStoreFutureAtom = Atom(name: '_AdminProCreatedByViewPageStore.userResidentCityStoreFuture');

  @override
  ObservableFuture<dynamic> get userResidentCityStoreFuture {
    _$userResidentCityStoreFutureAtom.reportRead();
    return super.userResidentCityStoreFuture;
  }

  @override
  set userResidentCityStoreFuture(ObservableFuture<dynamic> value) {
    _$userResidentCityStoreFutureAtom.reportWrite(value, super.userResidentCityStoreFuture, () {
      super.userResidentCityStoreFuture = value;
    });
  }

  final _$userResidentCountyStoreFutureAtom = Atom(name: '_AdminProCreatedByViewPageStore.userResidentCountyStoreFuture');

  @override
  ObservableFuture<dynamic> get userResidentCountyStoreFuture {
    _$userResidentCountyStoreFutureAtom.reportRead();
    return super.userResidentCountyStoreFuture;
  }

  @override
  set userResidentCountyStoreFuture(ObservableFuture<dynamic> value) {
    _$userResidentCountyStoreFutureAtom.reportWrite(value, super.userResidentCountyStoreFuture, () {
      super.userResidentCountyStoreFuture = value;
    });
  }

  final _$userResidentDistrictStoreFutureAtom = Atom(name: '_AdminProCreatedByViewPageStore.userResidentDistrictStoreFuture');

  @override
  ObservableFuture<dynamic> get userResidentDistrictStoreFuture {
    _$userResidentDistrictStoreFutureAtom.reportRead();
    return super.userResidentDistrictStoreFuture;
  }

  @override
  set userResidentDistrictStoreFuture(ObservableFuture<dynamic> value) {
    _$userResidentDistrictStoreFutureAtom.reportWrite(value, super.userResidentDistrictStoreFuture, () {
      super.userResidentDistrictStoreFuture = value;
    });
  }

  final _$refreshUserAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.refreshUser');

  @override
  Future<void> refreshUser(AdminUserStore targetStore) {
    return _$refreshUserAsyncAction.run(() => super.refreshUser(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$updateActivityCitiesCityAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.updateActivityCitiesCity');

  @override
  Future<void> updateActivityCitiesCity(AdminCityStore targetStore, AdminUserStore ownerStore) {
    return _$updateActivityCitiesCityAsyncAction.run(() => super.updateActivityCitiesCity(targetStore, ownerStore));
  }

  final _$updateActivityCountiesCountyAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.updateActivityCountiesCounty');

  @override
  Future<void> updateActivityCountiesCounty(AdminCountyStore targetStore, AdminUserStore ownerStore) {
    return _$updateActivityCountiesCountyAsyncAction.run(() => super.updateActivityCountiesCounty(targetStore, ownerStore));
  }

  final _$updateActivityDistrictsDistrictAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.updateActivityDistrictsDistrict');

  @override
  Future<void> updateActivityDistrictsDistrict(AdminDistrictStore targetStore, AdminUserStore ownerStore) {
    return _$updateActivityDistrictsDistrictAsyncAction.run(() => super.updateActivityDistrictsDistrict(targetStore, ownerStore));
  }

  final _$updateResidentCityCityAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.updateResidentCityCity');

  @override
  Future<void> updateResidentCityCity(AdminCityStore targetStore, AdminUserStore ownerStore) {
    return _$updateResidentCityCityAsyncAction.run(() => super.updateResidentCityCity(targetStore, ownerStore));
  }

  final _$updateResidentCountyCountyAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.updateResidentCountyCounty');

  @override
  Future<void> updateResidentCountyCounty(AdminCountyStore targetStore, AdminUserStore ownerStore) {
    return _$updateResidentCountyCountyAsyncAction.run(() => super.updateResidentCountyCounty(targetStore, ownerStore));
  }

  final _$updateResidentDistrictDistrictAsyncAction = AsyncAction('_AdminProCreatedByViewPageStore.updateResidentDistrictDistrict');

  @override
  Future<void> updateResidentDistrictDistrict(AdminDistrictStore targetStore, AdminUserStore ownerStore) {
    return _$updateResidentDistrictDistrictAsyncAction.run(() => super.updateResidentDistrictDistrict(targetStore, ownerStore));
  }

  final _$_AdminProCreatedByViewPageStoreActionController = ActionController(name: '_AdminProCreatedByViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminProCreatedByViewConfig pageConfig) {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityCitiesTableNextPage() {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityCitiesTableNextPage');
    try {
      return super.activityCitiesTableNextPage();
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityCitiesTablePreviousPage() {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityCitiesTablePreviousPage');
    try {
      return super.activityCitiesTablePreviousPage();
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityDistrictsTableNextPage() {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityDistrictsTableNextPage');
    try {
      return super.activityDistrictsTableNextPage();
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityDistrictsTablePreviousPage() {
    final _$actionInfo =
        _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityDistrictsTablePreviousPage');
    try {
      return super.activityDistrictsTablePreviousPage();
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityCountiesTableNextPage() {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityCountiesTableNextPage');
    try {
      return super.activityCountiesTableNextPage();
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityCountiesTablePreviousPage() {
    final _$actionInfo =
        _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityCountiesTablePreviousPage');
    try {
      return super.activityCountiesTablePreviousPage();
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityCitiesSetSort(
      BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminUserStore store) {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityCitiesSetSort');
    try {
      return super.activityCitiesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityCountiesSetSort(
      BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminUserStore store) {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityCountiesSetSort');
    try {
      return super.activityCountiesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void activityDistrictsSetSort(
      BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminUserStore store) {
    final _$actionInfo = _$_AdminProCreatedByViewPageStoreActionController.startAction(name: '_AdminProCreatedByViewPageStore.activityDistrictsSetSort');
    try {
      return super.activityDistrictsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminProCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
activityCitiesTablePageNumber: ${activityCitiesTablePageNumber},
activityDistrictsTablePageNumber: ${activityDistrictsTablePageNumber},
activityCountiesTablePageNumber: ${activityCountiesTablePageNumber},
activityCitiesSortColumnIndex: ${activityCitiesSortColumnIndex},
activityCitiesSortColumnName: ${activityCitiesSortColumnName},
activityCitiesSortAsc: ${activityCitiesSortAsc},
activityCitiesSortCompare: ${activityCitiesSortCompare},
userActivityCitiesStoreFuture: ${userActivityCitiesStoreFuture},
activityCountiesSortColumnIndex: ${activityCountiesSortColumnIndex},
activityCountiesSortColumnName: ${activityCountiesSortColumnName},
activityCountiesSortAsc: ${activityCountiesSortAsc},
activityCountiesSortCompare: ${activityCountiesSortCompare},
userActivityCountiesStoreFuture: ${userActivityCountiesStoreFuture},
activityDistrictsSortColumnIndex: ${activityDistrictsSortColumnIndex},
activityDistrictsSortColumnName: ${activityDistrictsSortColumnName},
activityDistrictsSortAsc: ${activityDistrictsSortAsc},
activityDistrictsSortCompare: ${activityDistrictsSortCompare},
userActivityDistrictsStoreFuture: ${userActivityDistrictsStoreFuture},
userResidentCityStoreFuture: ${userResidentCityStoreFuture},
userResidentCountyStoreFuture: ${userResidentCountyStoreFuture},
userResidentDistrictStoreFuture: ${userResidentDistrictStoreFuture},
activityCitiesTableItemsRangeStart: ${activityCitiesTableItemsRangeStart},
activityCitiesTableItemsRangeEnd: ${activityCitiesTableItemsRangeEnd},
activityCitiesTablePreviousEnable: ${activityCitiesTablePreviousEnable},
activityCitiesTableNextEnable: ${activityCitiesTableNextEnable},
activityCitiesTablePagingList: ${activityCitiesTablePagingList},
activityDistrictsTableItemsRangeStart: ${activityDistrictsTableItemsRangeStart},
activityDistrictsTableItemsRangeEnd: ${activityDistrictsTableItemsRangeEnd},
activityDistrictsTablePreviousEnable: ${activityDistrictsTablePreviousEnable},
activityDistrictsTableNextEnable: ${activityDistrictsTableNextEnable},
activityDistrictsTablePagingList: ${activityDistrictsTablePagingList},
activityCountiesTableItemsRangeStart: ${activityCountiesTableItemsRangeStart},
activityCountiesTableItemsRangeEnd: ${activityCountiesTableItemsRangeEnd},
activityCountiesTablePreviousEnable: ${activityCountiesTablePreviousEnable},
activityCountiesTableNextEnable: ${activityCountiesTableNextEnable},
activityCountiesTablePagingList: ${activityCountiesTablePagingList}
    ''';
  }
}
