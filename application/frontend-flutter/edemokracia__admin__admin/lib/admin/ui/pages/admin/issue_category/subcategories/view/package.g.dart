// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue_category.subcategories.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueCategorySubcategoriesViewPageStore on _AdminIssueCategorySubcategoriesViewPageStore, Store {
  Computed<int> _$subcategoriesTableItemsRangeStartComputed;

  @override
  int get subcategoriesTableItemsRangeStart => (_$subcategoriesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.subcategoriesTableItemsRangeStart, name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTableItemsRangeStart'))
      .value;
  Computed<int> _$subcategoriesTableItemsRangeEndComputed;

  @override
  int get subcategoriesTableItemsRangeEnd => (_$subcategoriesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.subcategoriesTableItemsRangeEnd, name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$subcategoriesTablePreviousEnableComputed;

  @override
  bool get subcategoriesTablePreviousEnable => (_$subcategoriesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.subcategoriesTablePreviousEnable, name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTablePreviousEnable'))
      .value;
  Computed<bool> _$subcategoriesTableNextEnableComputed;

  @override
  bool get subcategoriesTableNextEnable => (_$subcategoriesTableNextEnableComputed ??=
          Computed<bool>(() => super.subcategoriesTableNextEnable, name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTableNextEnable'))
      .value;
  Computed<List<AdminIssueCategoryStore>> _$subcategoriesTablePagingListComputed;

  @override
  List<AdminIssueCategoryStore> get subcategoriesTablePagingList =>
      (_$subcategoriesTablePagingListComputed ??= Computed<List<AdminIssueCategoryStore>>(() => super.subcategoriesTablePagingList,
              name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTablePagingList'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.targetStore');

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

  final _$subcategoriesTablePageNumberAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTablePageNumber');

  @override
  int get subcategoriesTablePageNumber {
    _$subcategoriesTablePageNumberAtom.reportRead();
    return super.subcategoriesTablePageNumber;
  }

  @override
  set subcategoriesTablePageNumber(int value) {
    _$subcategoriesTablePageNumberAtom.reportWrite(value, super.subcategoriesTablePageNumber, () {
      super.subcategoriesTablePageNumber = value;
    });
  }

  final _$issueCategoryOwnerStoreFutureAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.issueCategoryOwnerStoreFuture');

  @override
  ObservableFuture<dynamic> get issueCategoryOwnerStoreFuture {
    _$issueCategoryOwnerStoreFutureAtom.reportRead();
    return super.issueCategoryOwnerStoreFuture;
  }

  @override
  set issueCategoryOwnerStoreFuture(ObservableFuture<dynamic> value) {
    _$issueCategoryOwnerStoreFutureAtom.reportWrite(value, super.issueCategoryOwnerStoreFuture, () {
      super.issueCategoryOwnerStoreFuture = value;
    });
  }

  final _$subcategoriesSortColumnIndexAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesSortColumnIndex');

  @override
  int get subcategoriesSortColumnIndex {
    _$subcategoriesSortColumnIndexAtom.reportRead();
    return super.subcategoriesSortColumnIndex;
  }

  @override
  set subcategoriesSortColumnIndex(int value) {
    _$subcategoriesSortColumnIndexAtom.reportWrite(value, super.subcategoriesSortColumnIndex, () {
      super.subcategoriesSortColumnIndex = value;
    });
  }

  final _$subcategoriesSortColumnNameAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesSortColumnName');

  @override
  String get subcategoriesSortColumnName {
    _$subcategoriesSortColumnNameAtom.reportRead();
    return super.subcategoriesSortColumnName;
  }

  @override
  set subcategoriesSortColumnName(String value) {
    _$subcategoriesSortColumnNameAtom.reportWrite(value, super.subcategoriesSortColumnName, () {
      super.subcategoriesSortColumnName = value;
    });
  }

  final _$subcategoriesSortAscAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesSortAsc');

  @override
  bool get subcategoriesSortAsc {
    _$subcategoriesSortAscAtom.reportRead();
    return super.subcategoriesSortAsc;
  }

  @override
  set subcategoriesSortAsc(bool value) {
    _$subcategoriesSortAscAtom.reportWrite(value, super.subcategoriesSortAsc, () {
      super.subcategoriesSortAsc = value;
    });
  }

  final _$subcategoriesSortCompareAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesSortCompare');

  @override
  Comparator<dynamic> get subcategoriesSortCompare {
    _$subcategoriesSortCompareAtom.reportRead();
    return super.subcategoriesSortCompare;
  }

  @override
  set subcategoriesSortCompare(Comparator<dynamic> value) {
    _$subcategoriesSortCompareAtom.reportWrite(value, super.subcategoriesSortCompare, () {
      super.subcategoriesSortCompare = value;
    });
  }

  final _$issueCategorySubcategoriesStoreFutureAtom = Atom(name: '_AdminIssueCategorySubcategoriesViewPageStore.issueCategorySubcategoriesStoreFuture');

  @override
  ObservableFuture<dynamic> get issueCategorySubcategoriesStoreFuture {
    _$issueCategorySubcategoriesStoreFutureAtom.reportRead();
    return super.issueCategorySubcategoriesStoreFuture;
  }

  @override
  set issueCategorySubcategoriesStoreFuture(ObservableFuture<dynamic> value) {
    _$issueCategorySubcategoriesStoreFutureAtom.reportWrite(value, super.issueCategorySubcategoriesStoreFuture, () {
      super.issueCategorySubcategoriesStoreFuture = value;
    });
  }

  final _$refreshIssueCategoryAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.refreshIssueCategory');

  @override
  Future<void> refreshIssueCategory(AdminIssueCategoryStore targetStore) {
    return _$refreshIssueCategoryAsyncAction.run(() => super.refreshIssueCategory(targetStore));
  }

  final _$updateIssueCategoryAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.updateIssueCategory');

  @override
  Future<void> updateIssueCategory(AdminIssueCategoryStore newTargetStore, AdminIssueCategoryStore oldTargetStore) {
    return _$updateIssueCategoryAsyncAction.run(() => super.updateIssueCategory(newTargetStore, oldTargetStore));
  }

  final _$deleteIssueCategoryAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.deleteIssueCategory');

  @override
  Future<void> deleteIssueCategory(AdminIssueCategoryStore targetStore) {
    return _$deleteIssueCategoryAsyncAction.run(() => super.deleteIssueCategory(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$createSubcategoriesAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.createSubcategories');

  @override
  Future<void> createSubcategories(AdminIssueCategoryStore ownerStore, AdminIssueCategoryStore targetStore) {
    return _$createSubcategoriesAsyncAction.run(() => super.createSubcategories(ownerStore, targetStore));
  }

  final _$deleteSubcategoriesIssueCategoryAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.deleteSubcategoriesIssueCategory');

  @override
  Future<void> deleteSubcategoriesIssueCategory(AdminIssueCategoryStore targetStore, AdminIssueCategoryStore ownerStore) {
    return _$deleteSubcategoriesIssueCategoryAsyncAction.run(() => super.deleteSubcategoriesIssueCategory(targetStore, ownerStore));
  }

  final _$updateSubcategoriesIssueCategoryAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesViewPageStore.updateSubcategoriesIssueCategory');

  @override
  Future<void> updateSubcategoriesIssueCategory(AdminIssueCategoryStore targetStore, AdminIssueCategoryStore ownerStore) {
    return _$updateSubcategoriesIssueCategoryAsyncAction.run(() => super.updateSubcategoriesIssueCategory(targetStore, ownerStore));
  }

  final _$_AdminIssueCategorySubcategoriesViewPageStoreActionController = ActionController(name: '_AdminIssueCategorySubcategoriesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminIssueCategorySubcategoriesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subcategoriesTableNextPage() {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTableNextPage');
    try {
      return super.subcategoriesTableNextPage();
    } finally {
      _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subcategoriesTablePreviousPage() {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesTablePreviousPage');
    try {
      return super.subcategoriesTablePreviousPage();
    } finally {
      _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subcategoriesSetSort(
      BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminIssueCategoryStore store) {
    final _$actionInfo =
        _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.startAction(name: '_AdminIssueCategorySubcategoriesViewPageStore.subcategoriesSetSort');
    try {
      return super.subcategoriesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminIssueCategorySubcategoriesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
subcategoriesTablePageNumber: ${subcategoriesTablePageNumber},
issueCategoryOwnerStoreFuture: ${issueCategoryOwnerStoreFuture},
subcategoriesSortColumnIndex: ${subcategoriesSortColumnIndex},
subcategoriesSortColumnName: ${subcategoriesSortColumnName},
subcategoriesSortAsc: ${subcategoriesSortAsc},
subcategoriesSortCompare: ${subcategoriesSortCompare},
issueCategorySubcategoriesStoreFuture: ${issueCategorySubcategoriesStoreFuture},
subcategoriesTableItemsRangeStart: ${subcategoriesTableItemsRangeStart},
subcategoriesTableItemsRangeEnd: ${subcategoriesTableItemsRangeEnd},
subcategoriesTablePreviousEnable: ${subcategoriesTablePreviousEnable},
subcategoriesTableNextEnable: ${subcategoriesTableNextEnable},
subcategoriesTablePagingList: ${subcategoriesTablePagingList}
    ''';
  }
}
