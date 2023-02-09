// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.county.cities.create;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminCountyCitiesCreatePageStore on _AdminCountyCitiesCreatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminCountyCitiesCreatePageStore.targetStore');

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

  final _$districtsSortColumnIndexAtom = Atom(name: '_AdminCountyCitiesCreatePageStore.districtsSortColumnIndex');

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

  final _$districtsSortColumnNameAtom = Atom(name: '_AdminCountyCitiesCreatePageStore.districtsSortColumnName');

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

  final _$districtsSortAscAtom = Atom(name: '_AdminCountyCitiesCreatePageStore.districtsSortAsc');

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

  final _$districtsSortCompareAtom = Atom(name: '_AdminCountyCitiesCreatePageStore.districtsSortCompare');

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

  final _$cityDistrictsStoreFutureAtom = Atom(name: '_AdminCountyCitiesCreatePageStore.cityDistrictsStoreFuture');

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

  final _$getDefaultsAsyncAction = AsyncAction('_AdminCountyCitiesCreatePageStore.getDefaults');

  @override
  Future<AdminCityStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$validateAsyncAction = AsyncAction('_AdminCountyCitiesCreatePageStore.validate');

  @override
  Future<AdminCityStore> validate(AdminCountyStore ownerStore, AdminCityStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(ownerStore, targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminCountyCitiesCreatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminCountyCitiesCreatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminCountyCitiesCreatePageStoreActionController = ActionController(name: '_AdminCountyCitiesCreatePageStore');

  @override
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminCityStore store) {
    final _$actionInfo = _$_AdminCountyCitiesCreatePageStoreActionController.startAction(name: '_AdminCountyCitiesCreatePageStore.districtsSetSort');
    try {
      return super.districtsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminCountyCitiesCreatePageStoreActionController.endAction(_$actionInfo);
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
