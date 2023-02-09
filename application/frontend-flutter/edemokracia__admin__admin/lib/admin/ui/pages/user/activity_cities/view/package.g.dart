// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.user.activity_cities.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserActivityCitiesViewPageStore on _UserActivityCitiesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_UserActivityCitiesViewPageStore.targetStore');

  @override
  CityStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(CityStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$districtsSortColumnIndexAtom = Atom(name: '_UserActivityCitiesViewPageStore.districtsSortColumnIndex');

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

  final _$districtsSortColumnNameAtom = Atom(name: '_UserActivityCitiesViewPageStore.districtsSortColumnName');

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

  final _$districtsSortAscAtom = Atom(name: '_UserActivityCitiesViewPageStore.districtsSortAsc');

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

  final _$districtsSortCompareAtom = Atom(name: '_UserActivityCitiesViewPageStore.districtsSortCompare');

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

  final _$cityDistrictsStoreFutureAtom = Atom(name: '_UserActivityCitiesViewPageStore.cityDistrictsStoreFuture');

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

  final _$refreshCityAsyncAction = AsyncAction('_UserActivityCitiesViewPageStore.refreshCity');

  @override
  Future<void> refreshCity(CityStore targetStore) {
    return _$refreshCityAsyncAction.run(() => super.refreshCity(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_UserActivityCitiesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_UserActivityCitiesViewPageStoreActionController = ActionController(name: '_UserActivityCitiesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, UserActivityCitiesViewConfig pageConfig) {
    final _$actionInfo = _$_UserActivityCitiesViewPageStoreActionController.startAction(name: '_UserActivityCitiesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_UserActivityCitiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, CityStore store) {
    final _$actionInfo = _$_UserActivityCitiesViewPageStoreActionController.startAction(name: '_UserActivityCitiesViewPageStore.districtsSetSort');
    try {
      return super.districtsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_UserActivityCitiesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
districtsSortColumnIndex: ${districtsSortColumnIndex},
districtsSortColumnName: ${districtsSortColumnName},
districtsSortAsc: ${districtsSortAsc},
districtsSortCompare: ${districtsSortCompare},
cityDistrictsStoreFuture: ${cityDistrictsStoreFuture}
    ''';
  }
}
