// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.vote_definitions.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminVoteDefinitionsTablePageStore on _AdminAdminVoteDefinitionsTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminAdminVoteDefinitionsTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminAdminVoteDefinitionsTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable => (_$previousButtonEnableComputed ??=
          Computed<bool>(() => super.previousButtonEnable, name: '_AdminAdminVoteDefinitionsTablePageStore.previousButtonEnable'))
      .value;
  Computed<int> _$voteSelectAnswerTableForRangeItemsRangeStartComputed;

  @override
  int get voteSelectAnswerTableForRangeItemsRangeStart =>
      (_$voteSelectAnswerTableForRangeItemsRangeStartComputed ??= Computed<int>(() => super.voteSelectAnswerTableForRangeItemsRangeStart,
              name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerTableForRangeItemsRangeStart'))
          .value;
  Computed<int> _$voteSelectAnswerTableForRangeItemsRangeEndComputed;

  @override
  int get voteSelectAnswerTableForRangeItemsRangeEnd =>
      (_$voteSelectAnswerTableForRangeItemsRangeEndComputed ??= Computed<int>(() => super.voteSelectAnswerTableForRangeItemsRangeEnd,
              name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerTableForRangeItemsRangeEnd'))
          .value;
  Computed<bool> _$previousButtonEnableForVoteSelectAnswerRangeComputed;

  @override
  bool get previousButtonEnableForVoteSelectAnswerRange =>
      (_$previousButtonEnableForVoteSelectAnswerRangeComputed ??= Computed<bool>(() => super.previousButtonEnableForVoteSelectAnswerRange,
              name: '_AdminAdminVoteDefinitionsTablePageStore.previousButtonEnableForVoteSelectAnswerRange'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.targetStore');

  @override
  AdminVoteDefinitionStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminVoteDefinitionStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$pageMaxColAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.availableFilterList');

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

  final _$voteDefinitionsStoreListAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteDefinitionsStoreList');

  @override
  List<AdminVoteDefinitionStore> get voteDefinitionsStoreList {
    _$voteDefinitionsStoreListAtom.reportRead();
    return super.voteDefinitionsStoreList;
  }

  @override
  set voteDefinitionsStoreList(List<AdminVoteDefinitionStore> value) {
    _$voteDefinitionsStoreListAtom.reportWrite(value, super.voteDefinitionsStoreList, () {
      super.voteDefinitionsStoreList = value;
    });
  }

  final _$nextButtonEnableAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.nextPageCounter');

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

  final _$voteDefinitionsSortColumnIndexAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteDefinitionsSortColumnIndex');

  @override
  int get voteDefinitionsSortColumnIndex {
    _$voteDefinitionsSortColumnIndexAtom.reportRead();
    return super.voteDefinitionsSortColumnIndex;
  }

  @override
  set voteDefinitionsSortColumnIndex(int value) {
    _$voteDefinitionsSortColumnIndexAtom.reportWrite(value, super.voteDefinitionsSortColumnIndex, () {
      super.voteDefinitionsSortColumnIndex = value;
    });
  }

  final _$voteDefinitionsSortColumnNameAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteDefinitionsSortColumnName');

  @override
  String get voteDefinitionsSortColumnName {
    _$voteDefinitionsSortColumnNameAtom.reportRead();
    return super.voteDefinitionsSortColumnName;
  }

  @override
  set voteDefinitionsSortColumnName(String value) {
    _$voteDefinitionsSortColumnNameAtom.reportWrite(value, super.voteDefinitionsSortColumnName, () {
      super.voteDefinitionsSortColumnName = value;
    });
  }

  final _$voteDefinitionsSortAscAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteDefinitionsSortAsc');

  @override
  bool get voteDefinitionsSortAsc {
    _$voteDefinitionsSortAscAtom.reportRead();
    return super.voteDefinitionsSortAsc;
  }

  @override
  set voteDefinitionsSortAsc(bool value) {
    _$voteDefinitionsSortAscAtom.reportWrite(value, super.voteDefinitionsSortAsc, () {
      super.voteDefinitionsSortAsc = value;
    });
  }

  final _$adminVoteDefinitionsStoreFutureAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.adminVoteDefinitionsStoreFuture');

  @override
  ObservableFuture<dynamic> get adminVoteDefinitionsStoreFuture {
    _$adminVoteDefinitionsStoreFutureAtom.reportRead();
    return super.adminVoteDefinitionsStoreFuture;
  }

  @override
  set adminVoteDefinitionsStoreFuture(ObservableFuture<dynamic> value) {
    _$adminVoteDefinitionsStoreFutureAtom.reportWrite(value, super.adminVoteDefinitionsStoreFuture, () {
      super.adminVoteDefinitionsStoreFuture = value;
    });
  }

  final _$voteDefinitionVoteSelectAnswerStoreRangeFutureAtom =
      Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteDefinitionVoteSelectAnswerStoreRangeFuture');

  @override
  ObservableFuture<dynamic> get voteDefinitionVoteSelectAnswerStoreRangeFuture {
    _$voteDefinitionVoteSelectAnswerStoreRangeFutureAtom.reportRead();
    return super.voteDefinitionVoteSelectAnswerStoreRangeFuture;
  }

  @override
  set voteDefinitionVoteSelectAnswerStoreRangeFuture(ObservableFuture<dynamic> value) {
    _$voteDefinitionVoteSelectAnswerStoreRangeFutureAtom.reportWrite(value, super.voteDefinitionVoteSelectAnswerStoreRangeFuture, () {
      super.voteDefinitionVoteSelectAnswerStoreRangeFuture = value;
    });
  }

  final _$voteSelectAnswerSortColumnIndexRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerSortColumnIndexRange');

  @override
  int get voteSelectAnswerSortColumnIndexRange {
    _$voteSelectAnswerSortColumnIndexRangeAtom.reportRead();
    return super.voteSelectAnswerSortColumnIndexRange;
  }

  @override
  set voteSelectAnswerSortColumnIndexRange(int value) {
    _$voteSelectAnswerSortColumnIndexRangeAtom.reportWrite(value, super.voteSelectAnswerSortColumnIndexRange, () {
      super.voteSelectAnswerSortColumnIndexRange = value;
    });
  }

  final _$voteSelectAnswerSortColumnNameRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerSortColumnNameRange');

  @override
  String get voteSelectAnswerSortColumnNameRange {
    _$voteSelectAnswerSortColumnNameRangeAtom.reportRead();
    return super.voteSelectAnswerSortColumnNameRange;
  }

  @override
  set voteSelectAnswerSortColumnNameRange(String value) {
    _$voteSelectAnswerSortColumnNameRangeAtom.reportWrite(value, super.voteSelectAnswerSortColumnNameRange, () {
      super.voteSelectAnswerSortColumnNameRange = value;
    });
  }

  final _$voteSelectAnswerSortAscRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerSortAscRange');

  @override
  bool get voteSelectAnswerSortAscRange {
    _$voteSelectAnswerSortAscRangeAtom.reportRead();
    return super.voteSelectAnswerSortAscRange;
  }

  @override
  set voteSelectAnswerSortAscRange(bool value) {
    _$voteSelectAnswerSortAscRangeAtom.reportWrite(value, super.voteSelectAnswerSortAscRange, () {
      super.voteSelectAnswerSortAscRange = value;
    });
  }

  final _$voteSelectAnswerStoreRangeListAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerStoreRangeList');

  @override
  List<SelectAnswerVoteSelectionStore> get voteSelectAnswerStoreRangeList {
    _$voteSelectAnswerStoreRangeListAtom.reportRead();
    return super.voteSelectAnswerStoreRangeList;
  }

  @override
  set voteSelectAnswerStoreRangeList(List<SelectAnswerVoteSelectionStore> value) {
    _$voteSelectAnswerStoreRangeListAtom.reportWrite(value, super.voteSelectAnswerStoreRangeList, () {
      super.voteSelectAnswerStoreRangeList = value;
    });
  }

  final _$nextButtonEnableForVoteSelectAnswerRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.nextButtonEnableForVoteSelectAnswerRange');

  @override
  bool get nextButtonEnableForVoteSelectAnswerRange {
    _$nextButtonEnableForVoteSelectAnswerRangeAtom.reportRead();
    return super.nextButtonEnableForVoteSelectAnswerRange;
  }

  @override
  set nextButtonEnableForVoteSelectAnswerRange(bool value) {
    _$nextButtonEnableForVoteSelectAnswerRangeAtom.reportWrite(value, super.nextButtonEnableForVoteSelectAnswerRange, () {
      super.nextButtonEnableForVoteSelectAnswerRange = value;
    });
  }

  final _$nextPageCounterForVoteSelectAnswerRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsTablePageStore.nextPageCounterForVoteSelectAnswerRange');

  @override
  int get nextPageCounterForVoteSelectAnswerRange {
    _$nextPageCounterForVoteSelectAnswerRangeAtom.reportRead();
    return super.nextPageCounterForVoteSelectAnswerRange;
  }

  @override
  set nextPageCounterForVoteSelectAnswerRange(int value) {
    _$nextPageCounterForVoteSelectAnswerRangeAtom.reportWrite(value, super.nextPageCounterForVoteSelectAnswerRange, () {
      super.nextPageCounterForVoteSelectAnswerRange = value;
    });
  }

  final _$getVoteDefinitionsAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.getVoteDefinitions');

  @override
  Future<List<AdminVoteDefinitionStore>> getVoteDefinitions({int queryLimit, bool isNext}) {
    return _$getVoteDefinitionsAsyncAction.run(() => super.getVoteDefinitions(queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteVoteDefinitionAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.deleteVoteDefinition');

  @override
  Future<void> deleteVoteDefinition(AdminVoteDefinitionStore targetStore) {
    return _$deleteVoteDefinitionAsyncAction.run(() => super.deleteVoteDefinition(targetStore));
  }

  final _$updateVoteDefinitionAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.updateVoteDefinition');

  @override
  Future<void> updateVoteDefinition(AdminVoteDefinitionStore newTargetStore) {
    return _$updateVoteDefinitionAsyncAction.run(() => super.updateVoteDefinition(newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminVoteDefinitionVoteYesNoAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.edemokraciaAdminVoteDefinitionVoteYesNo');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteYesNoAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteYesNo(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteYesNoAbstainAsyncAction =
      AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.edemokraciaAdminVoteDefinitionVoteYesNoAbstain');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteYesNoAbstainAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteYesNoAbstain(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteSelectAnswerAsyncAction =
      AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.edemokraciaAdminVoteDefinitionVoteSelectAnswer');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteSelectAnswerAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteSelectAnswer(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteRatingAsyncAction =
      AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.edemokraciaAdminVoteDefinitionVoteRating');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteRating(RatingVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteRatingAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteRating(targetStore, ownerStore));
  }

  final _$getRangeForVoteSelectAnswerAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsTablePageStore.getRangeForVoteSelectAnswer');

  @override
  Future<List<SelectAnswerVoteSelectionStore>> getRangeForVoteSelectAnswer(AdminVoteDefinitionStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) {
    return _$getRangeForVoteSelectAnswerAsyncAction
        .run(() => super.getRangeForVoteSelectAnswer(ownerStore, filterStoreList: filterStoreList, queryLimit: queryLimit, mask: mask, isNext: isNext));
  }

  final _$_AdminAdminVoteDefinitionsTablePageStoreActionController = ActionController(name: '_AdminAdminVoteDefinitionsTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminAdminVoteDefinitionsTablePageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminAdminVoteDefinitionsTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminVoteDefinitionsTablePageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminVoteDefinitionsTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void voteDefinitionsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo =
        _$_AdminAdminVoteDefinitionsTablePageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsTablePageStore.voteDefinitionsSetSort');
    try {
      return super.voteDefinitionsSetSort(context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminAdminVoteDefinitionsTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void voteSelectAnswerSetSortRange(AdminVoteDefinitionStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    final _$actionInfo =
        _$_AdminAdminVoteDefinitionsTablePageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsTablePageStore.voteSelectAnswerSetSortRange');
    try {
      return super.voteSelectAnswerSetSortRange(ownerStore, context, sortColumnName, sortColumnIndex, asc, filterStoreList: filterStoreList, mask: mask);
    } finally {
      _$_AdminAdminVoteDefinitionsTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
voteDefinitionsStoreList: ${voteDefinitionsStoreList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
voteDefinitionsSortColumnIndex: ${voteDefinitionsSortColumnIndex},
voteDefinitionsSortColumnName: ${voteDefinitionsSortColumnName},
voteDefinitionsSortAsc: ${voteDefinitionsSortAsc},
adminVoteDefinitionsStoreFuture: ${adminVoteDefinitionsStoreFuture},
voteDefinitionVoteSelectAnswerStoreRangeFuture: ${voteDefinitionVoteSelectAnswerStoreRangeFuture},
voteSelectAnswerSortColumnIndexRange: ${voteSelectAnswerSortColumnIndexRange},
voteSelectAnswerSortColumnNameRange: ${voteSelectAnswerSortColumnNameRange},
voteSelectAnswerSortAscRange: ${voteSelectAnswerSortAscRange},
voteSelectAnswerStoreRangeList: ${voteSelectAnswerStoreRangeList},
nextButtonEnableForVoteSelectAnswerRange: ${nextButtonEnableForVoteSelectAnswerRange},
nextPageCounterForVoteSelectAnswerRange: ${nextPageCounterForVoteSelectAnswerRange},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable},
voteSelectAnswerTableForRangeItemsRangeStart: ${voteSelectAnswerTableForRangeItemsRangeStart},
voteSelectAnswerTableForRangeItemsRangeEnd: ${voteSelectAnswerTableForRangeItemsRangeEnd},
previousButtonEnableForVoteSelectAnswerRange: ${previousButtonEnableForVoteSelectAnswerRange}
    ''';
  }
}

mixin _$AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore
    on _AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore, Store {
  Computed<double> _$getInputWidgetsHeightComputed;

  @override
  double get getInputWidgetsHeight => (_$getInputWidgetsHeightComputed ??= Computed<double>(() => super.getInputWidgetsHeight,
          name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.getInputWidgetsHeight'))
      .value;
  Computed<bool> _$searchButtonEnabledComputed;

  @override
  bool get searchButtonEnabled => (_$searchButtonEnabledComputed ??=
          Computed<bool>(() => super.searchButtonEnabled, name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.searchButtonEnabled'))
      .value;
  Computed<double> _$filterWidgetsColumnHeightComputed;

  @override
  double get filterWidgetsColumnHeight => (_$filterWidgetsColumnHeightComputed ??= Computed<double>(() => super.filterWidgetsColumnHeight,
          name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.filterWidgetsColumnHeight'))
      .value;

  final _$availableFilterListAtom = Atom(name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.availableFilterList');

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

  final _$numberOfColumnsAtom = Atom(name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.numberOfColumns');

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

  final _$numberOfColumnsAfterFilterHorizontalAtom =
      Atom(name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.numberOfColumnsAfterFilterHorizontal');

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

  final _$_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStoreActionController =
      ActionController(name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore');

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStoreActionController.startAction(
        name: '_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogStoreActionController.endAction(_$actionInfo);
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
