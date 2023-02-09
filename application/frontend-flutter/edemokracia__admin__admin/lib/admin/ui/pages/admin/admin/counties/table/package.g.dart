// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.counties.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminCountiesTablePageStore on _AdminAdminCountiesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminAdminCountiesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminAdminCountiesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminAdminCountiesTablePageStore.previousButtonEnable'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminCountiesTablePageStore.targetStore');

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

  final _$pageMaxColAtom = Atom(name: '_AdminAdminCountiesTablePageStore.pageMaxCol');

  @override
  int get pageMaxCol {
    _$pageMaxColAtom.reportRead();
    return super.pageMaxCol;
  }

  @override
  set pageMaxCol(int value) {
    _$pageMaxColAtom.reportWrite(value, super.pageMaxCol, () {
      super.pageMaxCol = value;
    });
  }

  final _$availableFilterListAtom = Atom(name: '_AdminAdminCountiesTablePageStore.availableFilterList');

  @override
  ObservableList<FilterStore> get availableFilterList {
    _$availableFilterListAtom.reportRead();
    return super.availableFilterList;
  }

  @override
  set availableFilterList(ObservableList<FilterStore> value) {
    _$availableFilterListAtom.reportWrite(value, super.availableFilterList, () {
      super.availableFilterList = value;
    });
  }

  final _$countiesStoreListAtom = Atom(name: '_AdminAdminCountiesTablePageStore.countiesStoreList');

  @override
  List<AdminCountyStore> get countiesStoreList {
    _$countiesStoreListAtom.reportRead();
    return super.countiesStoreList;
  }

  @override
  set countiesStoreList(List<AdminCountyStore> value) {
    _$countiesStoreListAtom.reportWrite(value, super.countiesStoreList, () {
      super.countiesStoreList = value;
    });
  }

  final _$nextButtonEnableAtom = Atom(name: '_AdminAdminCountiesTablePageStore.nextButtonEnable');

  @override
  bool get nextButtonEnable {
    _$nextButtonEnableAtom.reportRead();
    return super.nextButtonEnable;
  }

  @override
  set nextButtonEnable(bool value) {
    _$nextButtonEnableAtom.reportWrite(value, super.nextButtonEnable, () {
      super.nextButtonEnable = value;
    });
  }

  final _$nextPageCounterAtom = Atom(name: '_AdminAdminCountiesTablePageStore.nextPageCounter');

  @override
  int get nextPageCounter {
    _$nextPageCounterAtom.reportRead();
    return super.nextPageCounter;
  }

  @override
  set nextPageCounter(int value) {
    _$nextPageCounterAtom.reportWrite(value, super.nextPageCounter, () {
      super.nextPageCounter = value;
    });
  }

  final _$countiesSortColumnIndexAtom = Atom(name: '_AdminAdminCountiesTablePageStore.countiesSortColumnIndex');

  @override
  int get countiesSortColumnIndex {
    _$countiesSortColumnIndexAtom.reportRead();
    return super.countiesSortColumnIndex;
  }

  @override
  set countiesSortColumnIndex(int value) {
    _$countiesSortColumnIndexAtom.reportWrite(value, super.countiesSortColumnIndex, () {
      super.countiesSortColumnIndex = value;
    });
  }

  final _$countiesSortColumnNameAtom = Atom(name: '_AdminAdminCountiesTablePageStore.countiesSortColumnName');

  @override
  String get countiesSortColumnName {
    _$countiesSortColumnNameAtom.reportRead();
    return super.countiesSortColumnName;
  }

  @override
  set countiesSortColumnName(String value) {
    _$countiesSortColumnNameAtom.reportWrite(value, super.countiesSortColumnName, () {
      super.countiesSortColumnName = value;
    });
  }

  final _$countiesSortAscAtom = Atom(name: '_AdminAdminCountiesTablePageStore.countiesSortAsc');

  @override
  bool get countiesSortAsc {
    _$countiesSortAscAtom.reportRead();
    return super.countiesSortAsc;
  }

  @override
  set countiesSortAsc(bool value) {
    _$countiesSortAscAtom.reportWrite(value, super.countiesSortAsc, () {
      super.countiesSortAsc = value;
    });
  }

  final _$adminCountiesStoreFutureAtom = Atom(name: '_AdminAdminCountiesTablePageStore.adminCountiesStoreFuture');

  @override
  ObservableFuture<dynamic> get adminCountiesStoreFuture {
    _$adminCountiesStoreFutureAtom.reportRead();
    return super.adminCountiesStoreFuture;
  }

  @override
  set adminCountiesStoreFuture(ObservableFuture<dynamic> value) {
    _$adminCountiesStoreFutureAtom.reportWrite(value, super.adminCountiesStoreFuture, () {
      super.adminCountiesStoreFuture = value;
    });
  }

  final _$getCountiesAsyncAction = AsyncAction('_AdminAdminCountiesTablePageStore.getCounties');

  @override
  Future<List<AdminCountyStore>> getCounties({int queryLimit, bool isNext}) {
    return _$getCountiesAsyncAction.run(() => super.getCounties(queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteCountyAsyncAction = AsyncAction('_AdminAdminCountiesTablePageStore.deleteCounty');

  @override
  Future<void> deleteCounty(AdminCountyStore targetStore) {
    return _$deleteCountyAsyncAction.run(() => super.deleteCounty(targetStore));
  }

  final _$updateCountyAsyncAction = AsyncAction('_AdminAdminCountiesTablePageStore.updateCounty');

  @override
  Future<void> updateCounty(AdminCountyStore newTargetStore) {
    return _$updateCountyAsyncAction.run(() => super.updateCounty(newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminCountiesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminAdminCountiesTablePageStoreActionController = ActionController(name: '_AdminAdminCountiesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminAdminCountiesTablePageStoreActionController.startAction(name: '_AdminAdminCountiesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminAdminCountiesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminCountiesTablePageStoreActionController.startAction(name: '_AdminAdminCountiesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminCountiesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void countiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminAdminCountiesTablePageStoreActionController.startAction(name: '_AdminAdminCountiesTablePageStore.countiesSetSort');
    try {
      return super.countiesSetSort(context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminAdminCountiesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
countiesStoreList: ${countiesStoreList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
countiesSortColumnIndex: ${countiesSortColumnIndex},
countiesSortColumnName: ${countiesSortColumnName},
countiesSortAsc: ${countiesSortAsc},
adminCountiesStoreFuture: ${adminCountiesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
