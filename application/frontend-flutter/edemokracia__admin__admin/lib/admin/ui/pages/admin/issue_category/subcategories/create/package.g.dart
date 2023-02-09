// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue_category.subcategories.create;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueCategorySubcategoriesCreatePageStore on _AdminIssueCategorySubcategoriesCreatePageStore, Store {
  Computed<int> _$subcategoriesTableItemsRangeStartComputed;

  @override
  int get subcategoriesTableItemsRangeStart => (_$subcategoriesTableItemsRangeStartComputed ??= Computed<int>(() => super.subcategoriesTableItemsRangeStart,
          name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTableItemsRangeStart'))
      .value;
  Computed<int> _$subcategoriesTableItemsRangeEndComputed;

  @override
  int get subcategoriesTableItemsRangeEnd => (_$subcategoriesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.subcategoriesTableItemsRangeEnd, name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$subcategoriesTablePreviousEnableComputed;

  @override
  bool get subcategoriesTablePreviousEnable => (_$subcategoriesTablePreviousEnableComputed ??= Computed<bool>(() => super.subcategoriesTablePreviousEnable,
          name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTablePreviousEnable'))
      .value;
  Computed<bool> _$subcategoriesTableNextEnableComputed;

  @override
  bool get subcategoriesTableNextEnable => (_$subcategoriesTableNextEnableComputed ??=
          Computed<bool>(() => super.subcategoriesTableNextEnable, name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTableNextEnable'))
      .value;
  Computed<List<AdminIssueCategoryStore>> _$subcategoriesTablePagingListComputed;

  @override
  List<AdminIssueCategoryStore> get subcategoriesTablePagingList =>
      (_$subcategoriesTablePagingListComputed ??= Computed<List<AdminIssueCategoryStore>>(() => super.subcategoriesTablePagingList,
              name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTablePagingList'))
          .value;
  Computed<int> _$ownerTableForRangeItemsRangeStartComputed;

  @override
  int get ownerTableForRangeItemsRangeStart => (_$ownerTableForRangeItemsRangeStartComputed ??= Computed<int>(() => super.ownerTableForRangeItemsRangeStart,
          name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerTableForRangeItemsRangeStart'))
      .value;
  Computed<int> _$ownerTableForRangeItemsRangeEndComputed;

  @override
  int get ownerTableForRangeItemsRangeEnd => (_$ownerTableForRangeItemsRangeEndComputed ??=
          Computed<int>(() => super.ownerTableForRangeItemsRangeEnd, name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerTableForRangeItemsRangeEnd'))
      .value;
  Computed<bool> _$previousButtonEnableForOwnerRangeComputed;

  @override
  bool get previousButtonEnableForOwnerRange => (_$previousButtonEnableForOwnerRangeComputed ??= Computed<bool>(() => super.previousButtonEnableForOwnerRange,
          name: '_AdminIssueCategorySubcategoriesCreatePageStore.previousButtonEnableForOwnerRange'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.targetStore');

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

  final _$subcategoriesTablePageNumberAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTablePageNumber');

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

  final _$issueCategoryOwnerStoreRangeFutureAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.issueCategoryOwnerStoreRangeFuture');

  @override
  ObservableFuture<dynamic> get issueCategoryOwnerStoreRangeFuture {
    _$issueCategoryOwnerStoreRangeFutureAtom.reportRead();
    return super.issueCategoryOwnerStoreRangeFuture;
  }

  @override
  set issueCategoryOwnerStoreRangeFuture(ObservableFuture<dynamic> value) {
    _$issueCategoryOwnerStoreRangeFutureAtom.reportWrite(value, super.issueCategoryOwnerStoreRangeFuture, () {
      super.issueCategoryOwnerStoreRangeFuture = value;
    });
  }

  final _$ownerSortColumnIndexRangeAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerSortColumnIndexRange');

  @override
  int get ownerSortColumnIndexRange {
    _$ownerSortColumnIndexRangeAtom.reportRead();
    return super.ownerSortColumnIndexRange;
  }

  @override
  set ownerSortColumnIndexRange(int value) {
    _$ownerSortColumnIndexRangeAtom.reportWrite(value, super.ownerSortColumnIndexRange, () {
      super.ownerSortColumnIndexRange = value;
    });
  }

  final _$ownerSortColumnNameRangeAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerSortColumnNameRange');

  @override
  String get ownerSortColumnNameRange {
    _$ownerSortColumnNameRangeAtom.reportRead();
    return super.ownerSortColumnNameRange;
  }

  @override
  set ownerSortColumnNameRange(String value) {
    _$ownerSortColumnNameRangeAtom.reportWrite(value, super.ownerSortColumnNameRange, () {
      super.ownerSortColumnNameRange = value;
    });
  }

  final _$ownerSortAscRangeAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerSortAscRange');

  @override
  bool get ownerSortAscRange {
    _$ownerSortAscRangeAtom.reportRead();
    return super.ownerSortAscRange;
  }

  @override
  set ownerSortAscRange(bool value) {
    _$ownerSortAscRangeAtom.reportWrite(value, super.ownerSortAscRange, () {
      super.ownerSortAscRange = value;
    });
  }

  final _$ownerStoreRangeListAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerStoreRangeList');

  @override
  List<AdminUserStore> get ownerStoreRangeList {
    _$ownerStoreRangeListAtom.reportRead();
    return super.ownerStoreRangeList;
  }

  @override
  set ownerStoreRangeList(List<AdminUserStore> value) {
    _$ownerStoreRangeListAtom.reportWrite(value, super.ownerStoreRangeList, () {
      super.ownerStoreRangeList = value;
    });
  }

  final _$nextButtonEnableForOwnerRangeAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.nextButtonEnableForOwnerRange');

  @override
  bool get nextButtonEnableForOwnerRange {
    _$nextButtonEnableForOwnerRangeAtom.reportRead();
    return super.nextButtonEnableForOwnerRange;
  }

  @override
  set nextButtonEnableForOwnerRange(bool value) {
    _$nextButtonEnableForOwnerRangeAtom.reportWrite(value, super.nextButtonEnableForOwnerRange, () {
      super.nextButtonEnableForOwnerRange = value;
    });
  }

  final _$nextPageCounterForOwnerRangeAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.nextPageCounterForOwnerRange');

  @override
  int get nextPageCounterForOwnerRange {
    _$nextPageCounterForOwnerRangeAtom.reportRead();
    return super.nextPageCounterForOwnerRange;
  }

  @override
  set nextPageCounterForOwnerRange(int value) {
    _$nextPageCounterForOwnerRangeAtom.reportWrite(value, super.nextPageCounterForOwnerRange, () {
      super.nextPageCounterForOwnerRange = value;
    });
  }

  final _$issueCategoryOwnerStoreFutureAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.issueCategoryOwnerStoreFuture');

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

  final _$subcategoriesSortColumnIndexAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesSortColumnIndex');

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

  final _$subcategoriesSortColumnNameAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesSortColumnName');

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

  final _$subcategoriesSortAscAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesSortAsc');

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

  final _$subcategoriesSortCompareAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesSortCompare');

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

  final _$issueCategorySubcategoriesStoreFutureAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreatePageStore.issueCategorySubcategoriesStoreFuture');

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

  final _$getDefaultsAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.getDefaults');

  @override
  Future<AdminIssueCategoryStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$validateAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.validate');

  @override
  Future<AdminIssueCategoryStore> validate(AdminIssueCategoryStore ownerStore, AdminIssueCategoryStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(ownerStore, targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$getRangeForOwnerAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.getRangeForOwner');

  @override
  Future<List<AdminUserStore>> getRangeForOwner(AdminIssueCategoryStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) {
    return _$getRangeForOwnerAsyncAction
        .run(() => super.getRangeForOwner(ownerStore, filterStoreList: filterStoreList, queryLimit: queryLimit, mask: mask, isNext: isNext));
  }

  final _$setOwnerAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.setOwner');

  @override
  Future<void> setOwner(AdminIssueCategoryStore ownerStore, AdminUserStore selectedStore) {
    return _$setOwnerAsyncAction.run(() => super.setOwner(ownerStore, selectedStore));
  }

  final _$unsetOwnerAsyncAction = AsyncAction('_AdminIssueCategorySubcategoriesCreatePageStore.unsetOwner');

  @override
  Future<void> unsetOwner(AdminIssueCategoryStore ownerStore) {
    return _$unsetOwnerAsyncAction.run(() => super.unsetOwner(ownerStore));
  }

  final _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController = ActionController(name: '_AdminIssueCategorySubcategoriesCreatePageStore');

  @override
  void subcategoriesTableNextPage() {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTableNextPage');
    try {
      return super.subcategoriesTableNextPage();
    } finally {
      _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subcategoriesTablePreviousPage() {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesTablePreviousPage');
    try {
      return super.subcategoriesTablePreviousPage();
    } finally {
      _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void ownerSetSortRange(AdminIssueCategoryStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesCreatePageStore.ownerSetSortRange');
    try {
      return super.ownerSetSortRange(ownerStore, context, sortColumnName, sortColumnIndex, asc, filterStoreList: filterStoreList, mask: mask);
    } finally {
      _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subcategoriesSetSort(
      BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminIssueCategoryStore store) {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesCreatePageStore.subcategoriesSetSort');
    try {
      return super.subcategoriesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminIssueCategorySubcategoriesCreatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
subcategoriesTablePageNumber: ${subcategoriesTablePageNumber},
issueCategoryOwnerStoreRangeFuture: ${issueCategoryOwnerStoreRangeFuture},
ownerSortColumnIndexRange: ${ownerSortColumnIndexRange},
ownerSortColumnNameRange: ${ownerSortColumnNameRange},
ownerSortAscRange: ${ownerSortAscRange},
ownerStoreRangeList: ${ownerStoreRangeList},
nextButtonEnableForOwnerRange: ${nextButtonEnableForOwnerRange},
nextPageCounterForOwnerRange: ${nextPageCounterForOwnerRange},
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
subcategoriesTablePagingList: ${subcategoriesTablePagingList},
ownerTableForRangeItemsRangeStart: ${ownerTableForRangeItemsRangeStart},
ownerTableForRangeItemsRangeEnd: ${ownerTableForRangeItemsRangeEnd},
previousButtonEnableForOwnerRange: ${previousButtonEnableForOwnerRange}
    ''';
  }
}

mixin _$AdminIssueCategorySubcategoriesCreateOwnerDialogStore on _AdminIssueCategorySubcategoriesCreateOwnerDialogStore, Store {
  Computed<double> _$getInputWidgetsHeightComputed;

  @override
  double get getInputWidgetsHeight => (_$getInputWidgetsHeightComputed ??=
          Computed<double>(() => super.getInputWidgetsHeight, name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.getInputWidgetsHeight'))
      .value;
  Computed<bool> _$searchButtonEnabledComputed;

  @override
  bool get searchButtonEnabled => (_$searchButtonEnabledComputed ??=
          Computed<bool>(() => super.searchButtonEnabled, name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.searchButtonEnabled'))
      .value;
  Computed<double> _$filterWidgetsColumnHeightComputed;

  @override
  double get filterWidgetsColumnHeight => (_$filterWidgetsColumnHeightComputed ??=
          Computed<double>(() => super.filterWidgetsColumnHeight, name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.filterWidgetsColumnHeight'))
      .value;

  final _$availableFilterListAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.availableFilterList');

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

  final _$numberOfColumnsAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.numberOfColumns');

  @override
  int get numberOfColumns {
    _$numberOfColumnsAtom.reportRead();
    return super.numberOfColumns;
  }

  @override
  set numberOfColumns(int value) {
    _$numberOfColumnsAtom.reportWrite(value, super.numberOfColumns, () {
      super.numberOfColumns = value;
    });
  }

  final _$numberOfColumnsAfterFilterHorizontalAtom = Atom(name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.numberOfColumnsAfterFilterHorizontal');

  @override
  int get numberOfColumnsAfterFilterHorizontal {
    _$numberOfColumnsAfterFilterHorizontalAtom.reportRead();
    return super.numberOfColumnsAfterFilterHorizontal;
  }

  @override
  set numberOfColumnsAfterFilterHorizontal(int value) {
    _$numberOfColumnsAfterFilterHorizontalAtom.reportWrite(value, super.numberOfColumnsAfterFilterHorizontal, () {
      super.numberOfColumnsAfterFilterHorizontal = value;
    });
  }

  final _$_AdminIssueCategorySubcategoriesCreateOwnerDialogStoreActionController =
      ActionController(name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore');

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminIssueCategorySubcategoriesCreateOwnerDialogStoreActionController.startAction(
        name: '_AdminIssueCategorySubcategoriesCreateOwnerDialogStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminIssueCategorySubcategoriesCreateOwnerDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
availableFilterList: ${availableFilterList},
numberOfColumns: ${numberOfColumns},
numberOfColumnsAfterFilterHorizontal: ${numberOfColumnsAfterFilterHorizontal},
getInputWidgetsHeight: ${getInputWidgetsHeight},
searchButtonEnabled: ${searchButtonEnabled},
filterWidgetsColumnHeight: ${filterWidgetsColumnHeight}
    ''';
  }
}
