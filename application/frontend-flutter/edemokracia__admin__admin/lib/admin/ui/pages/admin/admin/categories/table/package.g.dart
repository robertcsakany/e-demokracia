// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.categories.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminCategoriesTablePageStore on _AdminAdminCategoriesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminAdminCategoriesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminAdminCategoriesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminAdminCategoriesTablePageStore.previousButtonEnable'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.targetStore');

  @override
  AdminIssueCategoryStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminIssueCategoryStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$pageMaxColAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.availableFilterList');

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

  final _$categoriesStoreListAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.categoriesStoreList');

  @override
  List<AdminIssueCategoryStore> get categoriesStoreList {
    _$categoriesStoreListAtom.reportRead();
    return super.categoriesStoreList;
  }

  @override
  set categoriesStoreList(List<AdminIssueCategoryStore> value) {
    _$categoriesStoreListAtom.reportWrite(value, super.categoriesStoreList, () {
      super.categoriesStoreList = value;
    });
  }

  final _$nextButtonEnableAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.nextPageCounter');

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

  final _$categoriesSortColumnIndexAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.categoriesSortColumnIndex');

  @override
  int get categoriesSortColumnIndex {
    _$categoriesSortColumnIndexAtom.reportRead();
    return super.categoriesSortColumnIndex;
  }

  @override
  set categoriesSortColumnIndex(int value) {
    _$categoriesSortColumnIndexAtom.reportWrite(value, super.categoriesSortColumnIndex, () {
      super.categoriesSortColumnIndex = value;
    });
  }

  final _$categoriesSortColumnNameAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.categoriesSortColumnName');

  @override
  String get categoriesSortColumnName {
    _$categoriesSortColumnNameAtom.reportRead();
    return super.categoriesSortColumnName;
  }

  @override
  set categoriesSortColumnName(String value) {
    _$categoriesSortColumnNameAtom.reportWrite(value, super.categoriesSortColumnName, () {
      super.categoriesSortColumnName = value;
    });
  }

  final _$categoriesSortAscAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.categoriesSortAsc');

  @override
  bool get categoriesSortAsc {
    _$categoriesSortAscAtom.reportRead();
    return super.categoriesSortAsc;
  }

  @override
  set categoriesSortAsc(bool value) {
    _$categoriesSortAscAtom.reportWrite(value, super.categoriesSortAsc, () {
      super.categoriesSortAsc = value;
    });
  }

  final _$adminCategoriesStoreFutureAtom = Atom(name: '_AdminAdminCategoriesTablePageStore.adminCategoriesStoreFuture');

  @override
  ObservableFuture<dynamic> get adminCategoriesStoreFuture {
    _$adminCategoriesStoreFutureAtom.reportRead();
    return super.adminCategoriesStoreFuture;
  }

  @override
  set adminCategoriesStoreFuture(ObservableFuture<dynamic> value) {
    _$adminCategoriesStoreFutureAtom.reportWrite(value, super.adminCategoriesStoreFuture, () {
      super.adminCategoriesStoreFuture = value;
    });
  }

  final _$getCategoriesAsyncAction = AsyncAction('_AdminAdminCategoriesTablePageStore.getCategories');

  @override
  Future<List<AdminIssueCategoryStore>> getCategories({int queryLimit, bool isNext}) {
    return _$getCategoriesAsyncAction.run(() => super.getCategories(queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteIssueCategoryAsyncAction = AsyncAction('_AdminAdminCategoriesTablePageStore.deleteIssueCategory');

  @override
  Future<void> deleteIssueCategory(AdminIssueCategoryStore targetStore) {
    return _$deleteIssueCategoryAsyncAction.run(() => super.deleteIssueCategory(targetStore));
  }

  final _$updateIssueCategoryAsyncAction = AsyncAction('_AdminAdminCategoriesTablePageStore.updateIssueCategory');

  @override
  Future<void> updateIssueCategory(AdminIssueCategoryStore newTargetStore) {
    return _$updateIssueCategoryAsyncAction.run(() => super.updateIssueCategory(newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminCategoriesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminAdminCategoriesTablePageStoreActionController = ActionController(name: '_AdminAdminCategoriesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminAdminCategoriesTablePageStoreActionController.startAction(name: '_AdminAdminCategoriesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminAdminCategoriesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminCategoriesTablePageStoreActionController.startAction(name: '_AdminAdminCategoriesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminCategoriesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void categoriesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminAdminCategoriesTablePageStoreActionController.startAction(name: '_AdminAdminCategoriesTablePageStore.categoriesSetSort');
    try {
      return super.categoriesSetSort(context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminAdminCategoriesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
categoriesStoreList: ${categoriesStoreList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
categoriesSortColumnIndex: ${categoriesSortColumnIndex},
categoriesSortColumnName: ${categoriesSortColumnName},
categoriesSortAsc: ${categoriesSortAsc},
adminCategoriesStoreFuture: ${adminCategoriesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
