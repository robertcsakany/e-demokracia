// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.counties.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminCountiesViewPageStore on _AdminAdminCountiesViewPageStore, Store {
  Computed<int> _$citiesTableItemsRangeStartComputed;

  @override
  int get citiesTableItemsRangeStart => (_$citiesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.citiesTableItemsRangeStart, name: '_AdminAdminCountiesViewPageStore.citiesTableItemsRangeStart'))
      .value;
  Computed<int> _$citiesTableItemsRangeEndComputed;

  @override
  int get citiesTableItemsRangeEnd => (_$citiesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.citiesTableItemsRangeEnd, name: '_AdminAdminCountiesViewPageStore.citiesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$citiesTablePreviousEnableComputed;

  @override
  bool get citiesTablePreviousEnable => (_$citiesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.citiesTablePreviousEnable, name: '_AdminAdminCountiesViewPageStore.citiesTablePreviousEnable'))
      .value;
  Computed<bool> _$citiesTableNextEnableComputed;

  @override
  bool get citiesTableNextEnable =>
      (_$citiesTableNextEnableComputed ??= Computed<bool>(() => super.citiesTableNextEnable, name: '_AdminAdminCountiesViewPageStore.citiesTableNextEnable'))
          .value;
  Computed<List<AdminCityStore>> _$citiesTablePagingListComputed;

  @override
  List<AdminCityStore> get citiesTablePagingList => (_$citiesTablePagingListComputed ??=
          Computed<List<AdminCityStore>>(() => super.citiesTablePagingList, name: '_AdminAdminCountiesViewPageStore.citiesTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminCountiesViewPageStore.targetStore');

  @override
  AdminCountyStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminCountyStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$citiesTablePageNumberAtom = Atom(name: '_AdminAdminCountiesViewPageStore.citiesTablePageNumber');

  @override
  int get citiesTablePageNumber {
    _$citiesTablePageNumberAtom.reportRead();
    return super.citiesTablePageNumber;
  }

  @override
  set citiesTablePageNumber(int value) {
    _$citiesTablePageNumberAtom.reportWrite(value, super.citiesTablePageNumber, () {
      super.citiesTablePageNumber = value;
    });
  }

  final _$citiesSortColumnIndexAtom = Atom(name: '_AdminAdminCountiesViewPageStore.citiesSortColumnIndex');

  @override
  int get citiesSortColumnIndex {
    _$citiesSortColumnIndexAtom.reportRead();
    return super.citiesSortColumnIndex;
  }

  @override
  set citiesSortColumnIndex(int value) {
    _$citiesSortColumnIndexAtom.reportWrite(value, super.citiesSortColumnIndex, () {
      super.citiesSortColumnIndex = value;
    });
  }

  final _$citiesSortColumnNameAtom = Atom(name: '_AdminAdminCountiesViewPageStore.citiesSortColumnName');

  @override
  String get citiesSortColumnName {
    _$citiesSortColumnNameAtom.reportRead();
    return super.citiesSortColumnName;
  }

  @override
  set citiesSortColumnName(String value) {
    _$citiesSortColumnNameAtom.reportWrite(value, super.citiesSortColumnName, () {
      super.citiesSortColumnName = value;
    });
  }

  final _$citiesSortAscAtom = Atom(name: '_AdminAdminCountiesViewPageStore.citiesSortAsc');

  @override
  bool get citiesSortAsc {
    _$citiesSortAscAtom.reportRead();
    return super.citiesSortAsc;
  }

  @override
  set citiesSortAsc(bool value) {
    _$citiesSortAscAtom.reportWrite(value, super.citiesSortAsc, () {
      super.citiesSortAsc = value;
    });
  }

  final _$citiesSortCompareAtom = Atom(name: '_AdminAdminCountiesViewPageStore.citiesSortCompare');

  @override
  Comparator<dynamic> get citiesSortCompare {
    _$citiesSortCompareAtom.reportRead();
    return super.citiesSortCompare;
  }

  @override
  set citiesSortCompare(Comparator<dynamic> value) {
    _$citiesSortCompareAtom.reportWrite(value, super.citiesSortCompare, () {
      super.citiesSortCompare = value;
    });
  }

  final _$countyCitiesStoreFutureAtom = Atom(name: '_AdminAdminCountiesViewPageStore.countyCitiesStoreFuture');

  @override
  ObservableFuture<dynamic> get countyCitiesStoreFuture {
    _$countyCitiesStoreFutureAtom.reportRead();
    return super.countyCitiesStoreFuture;
  }

  @override
  set countyCitiesStoreFuture(ObservableFuture<dynamic> value) {
    _$countyCitiesStoreFutureAtom.reportWrite(value, super.countyCitiesStoreFuture, () {
      super.countyCitiesStoreFuture = value;
    });
  }

  final _$refreshCountyAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.refreshCounty');

  @override
  Future<void> refreshCounty(AdminCountyStore targetStore) {
    return _$refreshCountyAsyncAction.run(() => super.refreshCounty(targetStore));
  }

  final _$updateCountyAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.updateCounty');

  @override
  Future<void> updateCounty(AdminCountyStore newTargetStore, AdminCountyStore oldTargetStore) {
    return _$updateCountyAsyncAction.run(() => super.updateCounty(newTargetStore, oldTargetStore));
  }

  final _$deleteCountyAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.deleteCounty');

  @override
  Future<void> deleteCounty(AdminCountyStore targetStore) {
    return _$deleteCountyAsyncAction.run(() => super.deleteCounty(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$createCitiesAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.createCities');

  @override
  Future<void> createCities(AdminCountyStore ownerStore, AdminCityStore targetStore) {
    return _$createCitiesAsyncAction.run(() => super.createCities(ownerStore, targetStore));
  }

  final _$deleteCitiesCityAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.deleteCitiesCity');

  @override
  Future<void> deleteCitiesCity(AdminCityStore targetStore, AdminCountyStore ownerStore) {
    return _$deleteCitiesCityAsyncAction.run(() => super.deleteCitiesCity(targetStore, ownerStore));
  }

  final _$updateCitiesCityAsyncAction = AsyncAction('_AdminAdminCountiesViewPageStore.updateCitiesCity');

  @override
  Future<void> updateCitiesCity(AdminCityStore targetStore, AdminCountyStore ownerStore) {
    return _$updateCitiesCityAsyncAction.run(() => super.updateCitiesCity(targetStore, ownerStore));
  }

  final _$_AdminAdminCountiesViewPageStoreActionController = ActionController(name: '_AdminAdminCountiesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminAdminCountiesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminAdminCountiesViewPageStoreActionController.startAction(name: '_AdminAdminCountiesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminAdminCountiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void citiesTableNextPage() {
    final _$actionInfo = _$_AdminAdminCountiesViewPageStoreActionController.startAction(name: '_AdminAdminCountiesViewPageStore.citiesTableNextPage');
    try {
      return super.citiesTableNextPage();
    } finally {
      _$_AdminAdminCountiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void citiesTablePreviousPage() {
    final _$actionInfo = _$_AdminAdminCountiesViewPageStoreActionController.startAction(name: '_AdminAdminCountiesViewPageStore.citiesTablePreviousPage');
    try {
      return super.citiesTablePreviousPage();
    } finally {
      _$_AdminAdminCountiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void citiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminCountyStore store) {
    final _$actionInfo = _$_AdminAdminCountiesViewPageStoreActionController.startAction(name: '_AdminAdminCountiesViewPageStore.citiesSetSort');
    try {
      return super.citiesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminCountiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
citiesTablePageNumber: ${citiesTablePageNumber},
citiesSortColumnIndex: ${citiesSortColumnIndex},
citiesSortColumnName: ${citiesSortColumnName},
citiesSortAsc: ${citiesSortAsc},
citiesSortCompare: ${citiesSortCompare},
countyCitiesStoreFuture: ${countyCitiesStoreFuture},
citiesTableItemsRangeStart: ${citiesTableItemsRangeStart},
citiesTableItemsRangeEnd: ${citiesTableItemsRangeEnd},
citiesTablePreviousEnable: ${citiesTablePreviousEnable},
citiesTableNextEnable: ${citiesTableNextEnable},
citiesTablePagingList: ${citiesTablePagingList}
    ''';
  }
}
