// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.counties.create;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminCountiesCreatePageStore on _AdminAdminCountiesCreatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminAdminCountiesCreatePageStore.targetStore');

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

  final _$citiesSortColumnIndexAtom = Atom(name: '_AdminAdminCountiesCreatePageStore.citiesSortColumnIndex');

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

  final _$citiesSortColumnNameAtom = Atom(name: '_AdminAdminCountiesCreatePageStore.citiesSortColumnName');

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

  final _$citiesSortAscAtom = Atom(name: '_AdminAdminCountiesCreatePageStore.citiesSortAsc');

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

  final _$citiesSortCompareAtom = Atom(name: '_AdminAdminCountiesCreatePageStore.citiesSortCompare');

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

  final _$countyCitiesStoreFutureAtom = Atom(name: '_AdminAdminCountiesCreatePageStore.countyCitiesStoreFuture');

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

  final _$getDefaultsAsyncAction = AsyncAction('_AdminAdminCountiesCreatePageStore.getDefaults');

  @override
  Future<AdminCountyStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$validateAsyncAction = AsyncAction('_AdminAdminCountiesCreatePageStore.validate');

  @override
  Future<AdminCountyStore> validate(AdminCountyStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$createCountiesAsyncAction = AsyncAction('_AdminAdminCountiesCreatePageStore.createCounties');

  @override
  Future<AdminCountyStore> createCounties(AdminCountyStore targetStore) {
    return _$createCountiesAsyncAction.run(() => super.createCounties(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminAdminCountiesCreatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminCountiesCreatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminAdminCountiesCreatePageStoreActionController = ActionController(name: '_AdminAdminCountiesCreatePageStore');

  @override
  void citiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminCountyStore store) {
    final _$actionInfo = _$_AdminAdminCountiesCreatePageStoreActionController.startAction(name: '_AdminAdminCountiesCreatePageStore.citiesSetSort');
    try {
      return super.citiesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminCountiesCreatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
citiesSortColumnIndex: ${citiesSortColumnIndex},
citiesSortColumnName: ${citiesSortColumnName},
citiesSortAsc: ${citiesSortAsc},
citiesSortCompare: ${citiesSortCompare},
countyCitiesStoreFuture: ${countyCitiesStoreFuture}
    ''';
  }
}
