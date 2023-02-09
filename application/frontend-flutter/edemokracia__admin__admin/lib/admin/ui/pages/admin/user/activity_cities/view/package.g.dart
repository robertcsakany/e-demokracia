// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.activity_cities.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserActivityCitiesViewPageStore on _AdminUserActivityCitiesViewPageStore, Store {
  Computed<int> _$districtsTableItemsRangeStartComputed;

  @override
  int get districtsTableItemsRangeStart => (_$districtsTableItemsRangeStartComputed ??=
          Computed<int>(() => super.districtsTableItemsRangeStart, name: '_AdminUserActivityCitiesViewPageStore.districtsTableItemsRangeStart'))
      .value;
  Computed<int> _$districtsTableItemsRangeEndComputed;

  @override
  int get districtsTableItemsRangeEnd => (_$districtsTableItemsRangeEndComputed ??=
          Computed<int>(() => super.districtsTableItemsRangeEnd, name: '_AdminUserActivityCitiesViewPageStore.districtsTableItemsRangeEnd'))
      .value;
  Computed<bool> _$districtsTablePreviousEnableComputed;

  @override
  bool get districtsTablePreviousEnable => (_$districtsTablePreviousEnableComputed ??=
          Computed<bool>(() => super.districtsTablePreviousEnable, name: '_AdminUserActivityCitiesViewPageStore.districtsTablePreviousEnable'))
      .value;
  Computed<bool> _$districtsTableNextEnableComputed;

  @override
  bool get districtsTableNextEnable => (_$districtsTableNextEnableComputed ??=
          Computed<bool>(() => super.districtsTableNextEnable, name: '_AdminUserActivityCitiesViewPageStore.districtsTableNextEnable'))
      .value;
  Computed<List<AdminDistrictStore>> _$districtsTablePagingListComputed;

  @override
  List<AdminDistrictStore> get districtsTablePagingList => (_$districtsTablePagingListComputed ??=
          Computed<List<AdminDistrictStore>>(() => super.districtsTablePagingList, name: '_AdminUserActivityCitiesViewPageStore.districtsTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.targetStore');

  @override
  AdminCityStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminCityStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$districtsTablePageNumberAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.districtsTablePageNumber');

  @override
  int get districtsTablePageNumber {
    _$districtsTablePageNumberAtom.reportRead();
    return super.districtsTablePageNumber;
  }

  @override
  set districtsTablePageNumber(int value) {
    _$districtsTablePageNumberAtom.reportWrite(value, super.districtsTablePageNumber, () {
      super.districtsTablePageNumber = value;
    });
  }

  final _$districtsSortColumnIndexAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.districtsSortColumnIndex');

  @override
  int get districtsSortColumnIndex {
    _$districtsSortColumnIndexAtom.reportRead();
    return super.districtsSortColumnIndex;
  }

  @override
  set districtsSortColumnIndex(int value) {
    _$districtsSortColumnIndexAtom.reportWrite(value, super.districtsSortColumnIndex, () {
      super.districtsSortColumnIndex = value;
    });
  }

  final _$districtsSortColumnNameAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.districtsSortColumnName');

  @override
  String get districtsSortColumnName {
    _$districtsSortColumnNameAtom.reportRead();
    return super.districtsSortColumnName;
  }

  @override
  set districtsSortColumnName(String value) {
    _$districtsSortColumnNameAtom.reportWrite(value, super.districtsSortColumnName, () {
      super.districtsSortColumnName = value;
    });
  }

  final _$districtsSortAscAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.districtsSortAsc');

  @override
  bool get districtsSortAsc {
    _$districtsSortAscAtom.reportRead();
    return super.districtsSortAsc;
  }

  @override
  set districtsSortAsc(bool value) {
    _$districtsSortAscAtom.reportWrite(value, super.districtsSortAsc, () {
      super.districtsSortAsc = value;
    });
  }

  final _$districtsSortCompareAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.districtsSortCompare');

  @override
  Comparator<dynamic> get districtsSortCompare {
    _$districtsSortCompareAtom.reportRead();
    return super.districtsSortCompare;
  }

  @override
  set districtsSortCompare(Comparator<dynamic> value) {
    _$districtsSortCompareAtom.reportWrite(value, super.districtsSortCompare, () {
      super.districtsSortCompare = value;
    });
  }

  final _$cityDistrictsStoreFutureAtom = Atom(name: '_AdminUserActivityCitiesViewPageStore.cityDistrictsStoreFuture');

  @override
  ObservableFuture<dynamic> get cityDistrictsStoreFuture {
    _$cityDistrictsStoreFutureAtom.reportRead();
    return super.cityDistrictsStoreFuture;
  }

  @override
  set cityDistrictsStoreFuture(ObservableFuture<dynamic> value) {
    _$cityDistrictsStoreFutureAtom.reportWrite(value, super.cityDistrictsStoreFuture, () {
      super.cityDistrictsStoreFuture = value;
    });
  }

  final _$refreshCityAsyncAction = AsyncAction('_AdminUserActivityCitiesViewPageStore.refreshCity');

  @override
  Future<void> refreshCity(AdminCityStore targetStore) {
    return _$refreshCityAsyncAction.run(() => super.refreshCity(targetStore));
  }

  final _$updateCityAsyncAction = AsyncAction('_AdminUserActivityCitiesViewPageStore.updateCity');

  @override
  Future<void> updateCity(AdminCityStore newTargetStore, AdminCityStore oldTargetStore) {
    return _$updateCityAsyncAction.run(() => super.updateCity(newTargetStore, oldTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserActivityCitiesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$createDistrictsAsyncAction = AsyncAction('_AdminUserActivityCitiesViewPageStore.createDistricts');

  @override
  Future<void> createDistricts(AdminCityStore ownerStore, AdminDistrictStore targetStore) {
    return _$createDistrictsAsyncAction.run(() => super.createDistricts(ownerStore, targetStore));
  }

  final _$deleteDistrictsDistrictAsyncAction = AsyncAction('_AdminUserActivityCitiesViewPageStore.deleteDistrictsDistrict');

  @override
  Future<void> deleteDistrictsDistrict(AdminDistrictStore targetStore, AdminCityStore ownerStore) {
    return _$deleteDistrictsDistrictAsyncAction.run(() => super.deleteDistrictsDistrict(targetStore, ownerStore));
  }

  final _$updateDistrictsDistrictAsyncAction = AsyncAction('_AdminUserActivityCitiesViewPageStore.updateDistrictsDistrict');

  @override
  Future<void> updateDistrictsDistrict(AdminDistrictStore targetStore, AdminCityStore ownerStore) {
    return _$updateDistrictsDistrictAsyncAction.run(() => super.updateDistrictsDistrict(targetStore, ownerStore));
  }

  final _$_AdminUserActivityCitiesViewPageStoreActionController = ActionController(name: '_AdminUserActivityCitiesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserActivityCitiesViewConfig pageConfig) {
    final _$actionInfo =
        _$_AdminUserActivityCitiesViewPageStoreActionController.startAction(name: '_AdminUserActivityCitiesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserActivityCitiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsTableNextPage() {
    final _$actionInfo =
        _$_AdminUserActivityCitiesViewPageStoreActionController.startAction(name: '_AdminUserActivityCitiesViewPageStore.districtsTableNextPage');
    try {
      return super.districtsTableNextPage();
    } finally {
      _$_AdminUserActivityCitiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsTablePreviousPage() {
    final _$actionInfo =
        _$_AdminUserActivityCitiesViewPageStoreActionController.startAction(name: '_AdminUserActivityCitiesViewPageStore.districtsTablePreviousPage');
    try {
      return super.districtsTablePreviousPage();
    } finally {
      _$_AdminUserActivityCitiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminCityStore store) {
    final _$actionInfo = _$_AdminUserActivityCitiesViewPageStoreActionController.startAction(name: '_AdminUserActivityCitiesViewPageStore.districtsSetSort');
    try {
      return super.districtsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminUserActivityCitiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
districtsTablePageNumber: ${districtsTablePageNumber},
districtsSortColumnIndex: ${districtsSortColumnIndex},
districtsSortColumnName: ${districtsSortColumnName},
districtsSortAsc: ${districtsSortAsc},
districtsSortCompare: ${districtsSortCompare},
cityDistrictsStoreFuture: ${cityDistrictsStoreFuture},
districtsTableItemsRangeStart: ${districtsTableItemsRangeStart},
districtsTableItemsRangeEnd: ${districtsTableItemsRangeEnd},
districtsTablePreviousEnable: ${districtsTablePreviousEnable},
districtsTableNextEnable: ${districtsTableNextEnable},
districtsTablePagingList: ${districtsTablePagingList}
    ''';
  }
}
