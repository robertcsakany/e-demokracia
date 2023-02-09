// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.votes.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserVotesTablePageStore on _AdminUserVotesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminUserVotesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminUserVotesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminUserVotesTablePageStore.previousButtonEnable')).value;
  Computed<int> _$votesTableForRangeItemsRangeStartComputed;

  @override
  int get votesTableForRangeItemsRangeStart => (_$votesTableForRangeItemsRangeStartComputed ??=
          Computed<int>(() => super.votesTableForRangeItemsRangeStart, name: '_AdminUserVotesTablePageStore.votesTableForRangeItemsRangeStart'))
      .value;
  Computed<int> _$votesTableForRangeItemsRangeEndComputed;

  @override
  int get votesTableForRangeItemsRangeEnd => (_$votesTableForRangeItemsRangeEndComputed ??=
          Computed<int>(() => super.votesTableForRangeItemsRangeEnd, name: '_AdminUserVotesTablePageStore.votesTableForRangeItemsRangeEnd'))
      .value;
  Computed<bool> _$previousButtonEnableForVotesRangeComputed;

  @override
  bool get previousButtonEnableForVotesRange => (_$previousButtonEnableForVotesRangeComputed ??=
          Computed<bool>(() => super.previousButtonEnableForVotesRange, name: '_AdminUserVotesTablePageStore.previousButtonEnableForVotesRange'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminUserVotesTablePageStore.targetStore');

  @override
  AdminSimpleVoteStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminSimpleVoteStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$pageMaxColAtom = Atom(name: '_AdminUserVotesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminUserVotesTablePageStore.availableFilterList');

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

  final _$nextButtonEnableAtom = Atom(name: '_AdminUserVotesTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminUserVotesTablePageStore.nextPageCounter');

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

  final _$votesSortColumnIndexAtom = Atom(name: '_AdminUserVotesTablePageStore.votesSortColumnIndex');

  @override
  int get votesSortColumnIndex {
    _$votesSortColumnIndexAtom.reportRead();
    return super.votesSortColumnIndex;
  }

  @override
  set votesSortColumnIndex(int value) {
    _$votesSortColumnIndexAtom.reportWrite(value, super.votesSortColumnIndex, () {
      super.votesSortColumnIndex = value;
    });
  }

  final _$votesSortColumnNameAtom = Atom(name: '_AdminUserVotesTablePageStore.votesSortColumnName');

  @override
  String get votesSortColumnName {
    _$votesSortColumnNameAtom.reportRead();
    return super.votesSortColumnName;
  }

  @override
  set votesSortColumnName(String value) {
    _$votesSortColumnNameAtom.reportWrite(value, super.votesSortColumnName, () {
      super.votesSortColumnName = value;
    });
  }

  final _$votesSortAscAtom = Atom(name: '_AdminUserVotesTablePageStore.votesSortAsc');

  @override
  bool get votesSortAsc {
    _$votesSortAscAtom.reportRead();
    return super.votesSortAsc;
  }

  @override
  set votesSortAsc(bool value) {
    _$votesSortAscAtom.reportWrite(value, super.votesSortAsc, () {
      super.votesSortAsc = value;
    });
  }

  final _$userVotesStoreFutureAtom = Atom(name: '_AdminUserVotesTablePageStore.userVotesStoreFuture');

  @override
  ObservableFuture<dynamic> get userVotesStoreFuture {
    _$userVotesStoreFutureAtom.reportRead();
    return super.userVotesStoreFuture;
  }

  @override
  set userVotesStoreFuture(ObservableFuture<dynamic> value) {
    _$userVotesStoreFutureAtom.reportWrite(value, super.userVotesStoreFuture, () {
      super.userVotesStoreFuture = value;
    });
  }

  final _$userVotesStoreRangeFutureAtom = Atom(name: '_AdminUserVotesTablePageStore.userVotesStoreRangeFuture');

  @override
  ObservableFuture<dynamic> get userVotesStoreRangeFuture {
    _$userVotesStoreRangeFutureAtom.reportRead();
    return super.userVotesStoreRangeFuture;
  }

  @override
  set userVotesStoreRangeFuture(ObservableFuture<dynamic> value) {
    _$userVotesStoreRangeFutureAtom.reportWrite(value, super.userVotesStoreRangeFuture, () {
      super.userVotesStoreRangeFuture = value;
    });
  }

  final _$votesSortColumnIndexRangeAtom = Atom(name: '_AdminUserVotesTablePageStore.votesSortColumnIndexRange');

  @override
  int get votesSortColumnIndexRange {
    _$votesSortColumnIndexRangeAtom.reportRead();
    return super.votesSortColumnIndexRange;
  }

  @override
  set votesSortColumnIndexRange(int value) {
    _$votesSortColumnIndexRangeAtom.reportWrite(value, super.votesSortColumnIndexRange, () {
      super.votesSortColumnIndexRange = value;
    });
  }

  final _$votesSortColumnNameRangeAtom = Atom(name: '_AdminUserVotesTablePageStore.votesSortColumnNameRange');

  @override
  String get votesSortColumnNameRange {
    _$votesSortColumnNameRangeAtom.reportRead();
    return super.votesSortColumnNameRange;
  }

  @override
  set votesSortColumnNameRange(String value) {
    _$votesSortColumnNameRangeAtom.reportWrite(value, super.votesSortColumnNameRange, () {
      super.votesSortColumnNameRange = value;
    });
  }

  final _$votesSortAscRangeAtom = Atom(name: '_AdminUserVotesTablePageStore.votesSortAscRange');

  @override
  bool get votesSortAscRange {
    _$votesSortAscRangeAtom.reportRead();
    return super.votesSortAscRange;
  }

  @override
  set votesSortAscRange(bool value) {
    _$votesSortAscRangeAtom.reportWrite(value, super.votesSortAscRange, () {
      super.votesSortAscRange = value;
    });
  }

  final _$votesStoreRangeListAtom = Atom(name: '_AdminUserVotesTablePageStore.votesStoreRangeList');

  @override
  List<AdminSimpleVoteStore> get votesStoreRangeList {
    _$votesStoreRangeListAtom.reportRead();
    return super.votesStoreRangeList;
  }

  @override
  set votesStoreRangeList(List<AdminSimpleVoteStore> value) {
    _$votesStoreRangeListAtom.reportWrite(value, super.votesStoreRangeList, () {
      super.votesStoreRangeList = value;
    });
  }

  final _$nextButtonEnableForVotesRangeAtom = Atom(name: '_AdminUserVotesTablePageStore.nextButtonEnableForVotesRange');

  @override
  bool get nextButtonEnableForVotesRange {
    _$nextButtonEnableForVotesRangeAtom.reportRead();
    return super.nextButtonEnableForVotesRange;
  }

  @override
  set nextButtonEnableForVotesRange(bool value) {
    _$nextButtonEnableForVotesRangeAtom.reportWrite(value, super.nextButtonEnableForVotesRange, () {
      super.nextButtonEnableForVotesRange = value;
    });
  }

  final _$nextPageCounterForVotesRangeAtom = Atom(name: '_AdminUserVotesTablePageStore.nextPageCounterForVotesRange');

  @override
  int get nextPageCounterForVotesRange {
    _$nextPageCounterForVotesRangeAtom.reportRead();
    return super.nextPageCounterForVotesRange;
  }

  @override
  set nextPageCounterForVotesRange(int value) {
    _$nextPageCounterForVotesRangeAtom.reportWrite(value, super.nextPageCounterForVotesRange, () {
      super.nextPageCounterForVotesRange = value;
    });
  }

  final _$addVotesAsyncAction = AsyncAction('_AdminUserVotesTablePageStore.addVotes');

  @override
  Future<void> addVotes(AdminUserStore ownerStore, List<AdminSimpleVoteStore> selectedStore) {
    return _$addVotesAsyncAction.run(() => super.addVotes(ownerStore, selectedStore));
  }

  final _$removeVotesAsyncAction = AsyncAction('_AdminUserVotesTablePageStore.removeVotes');

  @override
  Future<void> removeVotes(AdminUserStore ownerStore, AdminSimpleVoteStore selectedStore) {
    return _$removeVotesAsyncAction.run(() => super.removeVotes(ownerStore, selectedStore));
  }

  final _$getVotesAsyncAction = AsyncAction('_AdminUserVotesTablePageStore.getVotes');

  @override
  Future<List<AdminSimpleVoteStore>> getVotes(AdminUserStore ownerStore, {int queryLimit, bool isNext}) {
    return _$getVotesAsyncAction.run(() => super.getVotes(ownerStore, queryLimit: queryLimit, isNext: isNext));
  }

  final _$getRangeForVotesAsyncAction = AsyncAction('_AdminUserVotesTablePageStore.getRangeForVotes');

  @override
  Future<List<AdminSimpleVoteStore>> getRangeForVotes(AdminUserStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) {
    return _$getRangeForVotesAsyncAction
        .run(() => super.getRangeForVotes(ownerStore, filterStoreList: filterStoreList, queryLimit: queryLimit, mask: mask, isNext: isNext));
  }

  final _$setVotesAsyncAction = AsyncAction('_AdminUserVotesTablePageStore.setVotes');

  @override
  Future<void> setVotes(AdminUserStore ownerStore, List<AdminSimpleVoteStore> selectedStore) {
    return _$setVotesAsyncAction.run(() => super.setVotes(ownerStore, selectedStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserVotesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminUserVotesTablePageStoreActionController = ActionController(name: '_AdminUserVotesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminUserVotesTablePageStoreActionController.startAction(name: '_AdminUserVotesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminUserVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminUserVotesTablePageStoreActionController.startAction(name: '_AdminUserVotesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminUserVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void votesSetSort(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminUserVotesTablePageStoreActionController.startAction(name: '_AdminUserVotesTablePageStore.votesSetSort');
    try {
      return super.votesSetSort(ownerStore, context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminUserVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void votesSetSortRange(AdminUserStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    final _$actionInfo = _$_AdminUserVotesTablePageStoreActionController.startAction(name: '_AdminUserVotesTablePageStore.votesSetSortRange');
    try {
      return super.votesSetSortRange(ownerStore, context, sortColumnName, sortColumnIndex, asc, filterStoreList: filterStoreList, mask: mask);
    } finally {
      _$_AdminUserVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
votesSortColumnIndex: ${votesSortColumnIndex},
votesSortColumnName: ${votesSortColumnName},
votesSortAsc: ${votesSortAsc},
userVotesStoreFuture: ${userVotesStoreFuture},
userVotesStoreRangeFuture: ${userVotesStoreRangeFuture},
votesSortColumnIndexRange: ${votesSortColumnIndexRange},
votesSortColumnNameRange: ${votesSortColumnNameRange},
votesSortAscRange: ${votesSortAscRange},
votesStoreRangeList: ${votesStoreRangeList},
nextButtonEnableForVotesRange: ${nextButtonEnableForVotesRange},
nextPageCounterForVotesRange: ${nextPageCounterForVotesRange},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable},
votesTableForRangeItemsRangeStart: ${votesTableForRangeItemsRangeStart},
votesTableForRangeItemsRangeEnd: ${votesTableForRangeItemsRangeEnd},
previousButtonEnableForVotesRange: ${previousButtonEnableForVotesRange}
    ''';
  }
}

mixin _$AdminUserVotesTableDialogStore on _AdminUserVotesTableDialogStore, Store {
  Computed<double> _$getInputWidgetsHeightComputed;

  @override
  double get getInputWidgetsHeight =>
      (_$getInputWidgetsHeightComputed ??= Computed<double>(() => super.getInputWidgetsHeight, name: '_AdminUserVotesTableDialogStore.getInputWidgetsHeight'))
          .value;
  Computed<bool> _$searchButtonEnabledComputed;

  @override
  bool get searchButtonEnabled =>
      (_$searchButtonEnabledComputed ??= Computed<bool>(() => super.searchButtonEnabled, name: '_AdminUserVotesTableDialogStore.searchButtonEnabled')).value;
  Computed<double> _$filterWidgetsColumnHeightComputed;

  @override
  double get filterWidgetsColumnHeight => (_$filterWidgetsColumnHeightComputed ??=
          Computed<double>(() => super.filterWidgetsColumnHeight, name: '_AdminUserVotesTableDialogStore.filterWidgetsColumnHeight'))
      .value;

  final _$availableFilterListAtom = Atom(name: '_AdminUserVotesTableDialogStore.availableFilterList');

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

  final _$numberOfColumnsAtom = Atom(name: '_AdminUserVotesTableDialogStore.numberOfColumns');

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

  final _$numberOfColumnsAfterFilterHorizontalAtom = Atom(name: '_AdminUserVotesTableDialogStore.numberOfColumnsAfterFilterHorizontal');

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

  final _$_AdminUserVotesTableDialogStoreActionController = ActionController(name: '_AdminUserVotesTableDialogStore');

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminUserVotesTableDialogStoreActionController.startAction(name: '_AdminUserVotesTableDialogStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminUserVotesTableDialogStoreActionController.endAction(_$actionInfo);
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
