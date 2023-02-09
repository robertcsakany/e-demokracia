// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.resident_city.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserResidentCityViewPageStore on _AdminUserResidentCityViewPageStore, Store {
  Computed<int> _$districtsTableItemsRangeStartComputed;

  @override
  int get districtsTableItemsRangeStart => (_$districtsTableItemsRangeStartComputed ??=
          Computed<int>(() => super.districtsTableItemsRangeStart, name: '_AdminUserResidentCityViewPageStore.districtsTableItemsRangeStart'))
      .value;
  Computed<int> _$districtsTableItemsRangeEndComputed;

  @override
  int get districtsTableItemsRangeEnd => (_$districtsTableItemsRangeEndComputed ??=
          Computed<int>(() => super.districtsTableItemsRangeEnd, name: '_AdminUserResidentCityViewPageStore.districtsTableItemsRangeEnd'))
      .value;
  Computed<bool> _$districtsTablePreviousEnableComputed;

  @override
  bool get districtsTablePreviousEnable => (_$districtsTablePreviousEnableComputed ??=
          Computed<bool>(() => super.districtsTablePreviousEnable, name: '_AdminUserResidentCityViewPageStore.districtsTablePreviousEnable'))
      .value;
  Computed<bool> _$districtsTableNextEnableComputed;

  @override
  bool get districtsTableNextEnable => (_$districtsTableNextEnableComputed ??=
          Computed<bool>(() => super.districtsTableNextEnable, name: '_AdminUserResidentCityViewPageStore.districtsTableNextEnable'))
      .value;
  Computed<List<AdminDistrictStore>> _$districtsTablePagingListComputed;

  @override
  List<AdminDistrictStore> get districtsTablePagingList => (_$districtsTablePagingListComputed ??=
          Computed<List<AdminDistrictStore>>(() => super.districtsTablePagingList, name: '_AdminUserResidentCityViewPageStore.districtsTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminUserResidentCityViewPageStore.targetStore');

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

  final _$districtsTablePageNumberAtom = Atom(name: '_AdminUserResidentCityViewPageStore.districtsTablePageNumber');

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

  final _$districtsSortColumnIndexAtom = Atom(name: '_AdminUserResidentCityViewPageStore.districtsSortColumnIndex');

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

  final _$districtsSortColumnNameAtom = Atom(name: '_AdminUserResidentCityViewPageStore.districtsSortColumnName');

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

  final _$districtsSortAscAtom = Atom(name: '_AdminUserResidentCityViewPageStore.districtsSortAsc');

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

  final _$districtsSortCompareAtom = Atom(name: '_AdminUserResidentCityViewPageStore.districtsSortCompare');

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

  final _$cityDistrictsStoreFutureAtom = Atom(name: '_AdminUserResidentCityViewPageStore.cityDistrictsStoreFuture');

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

  final _$refreshCityAsyncAction = AsyncAction('_AdminUserResidentCityViewPageStore.refreshCity');

  @override
  Future<void> refreshCity(AdminCityStore targetStore) {
    return _$refreshCityAsyncAction.run(() => super.refreshCity(targetStore));
  }

  final _$updateCityAsyncAction = AsyncAction('_AdminUserResidentCityViewPageStore.updateCity');

  @override
  Future<void> updateCity(AdminCityStore newTargetStore, AdminCityStore oldTargetStore) {
    return _$updateCityAsyncAction.run(() => super.updateCity(newTargetStore, oldTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserResidentCityViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$createDistrictsAsyncAction = AsyncAction('_AdminUserResidentCityViewPageStore.createDistricts');

  @override
  Future<void> createDistricts(AdminCityStore ownerStore, AdminDistrictStore targetStore) {
    return _$createDistrictsAsyncAction.run(() => super.createDistricts(ownerStore, targetStore));
  }

  final _$deleteDistrictsDistrictAsyncAction = AsyncAction('_AdminUserResidentCityViewPageStore.deleteDistrictsDistrict');

  @override
  Future<void> deleteDistrictsDistrict(AdminDistrictStore targetStore, AdminCityStore ownerStore) {
    return _$deleteDistrictsDistrictAsyncAction.run(() => super.deleteDistrictsDistrict(targetStore, ownerStore));
  }

  final _$updateDistrictsDistrictAsyncAction = AsyncAction('_AdminUserResidentCityViewPageStore.updateDistrictsDistrict');

  @override
  Future<void> updateDistrictsDistrict(AdminDistrictStore targetStore, AdminCityStore ownerStore) {
    return _$updateDistrictsDistrictAsyncAction.run(() => super.updateDistrictsDistrict(targetStore, ownerStore));
  }

  final _$_AdminUserResidentCityViewPageStoreActionController = ActionController(name: '_AdminUserResidentCityViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserResidentCityViewConfig pageConfig) {
    final _$actionInfo = _$_AdminUserResidentCityViewPageStoreActionController.startAction(name: '_AdminUserResidentCityViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserResidentCityViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsTableNextPage() {
    final _$actionInfo = _$_AdminUserResidentCityViewPageStoreActionController.startAction(name: '_AdminUserResidentCityViewPageStore.districtsTableNextPage');
    try {
      return super.districtsTableNextPage();
    } finally {
      _$_AdminUserResidentCityViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsTablePreviousPage() {
    final _$actionInfo =
        _$_AdminUserResidentCityViewPageStoreActionController.startAction(name: '_AdminUserResidentCityViewPageStore.districtsTablePreviousPage');
    try {
      return super.districtsTablePreviousPage();
    } finally {
      _$_AdminUserResidentCityViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminCityStore store) {
    final _$actionInfo = _$_AdminUserResidentCityViewPageStoreActionController.startAction(name: '_AdminUserResidentCityViewPageStore.districtsSetSort');
    try {
      return super.districtsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminUserResidentCityViewPageStoreActionController.endAction(_$actionInfo);
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
