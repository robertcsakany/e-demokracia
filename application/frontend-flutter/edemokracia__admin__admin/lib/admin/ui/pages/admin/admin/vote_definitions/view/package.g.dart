// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.vote_definitions.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminVoteDefinitionsViewPageStore on _AdminAdminVoteDefinitionsViewPageStore, Store {
  Computed<int> _$voteSelectAnswerTableForRangeItemsRangeStartComputed;

  @override
  int get voteSelectAnswerTableForRangeItemsRangeStart =>
      (_$voteSelectAnswerTableForRangeItemsRangeStartComputed ??= Computed<int>(() => super.voteSelectAnswerTableForRangeItemsRangeStart,
              name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerTableForRangeItemsRangeStart'))
          .value;
  Computed<int> _$voteSelectAnswerTableForRangeItemsRangeEndComputed;

  @override
  int get voteSelectAnswerTableForRangeItemsRangeEnd =>
      (_$voteSelectAnswerTableForRangeItemsRangeEndComputed ??= Computed<int>(() => super.voteSelectAnswerTableForRangeItemsRangeEnd,
              name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerTableForRangeItemsRangeEnd'))
          .value;
  Computed<bool> _$previousButtonEnableForVoteSelectAnswerRangeComputed;

  @override
  bool get previousButtonEnableForVoteSelectAnswerRange =>
      (_$previousButtonEnableForVoteSelectAnswerRangeComputed ??= Computed<bool>(() => super.previousButtonEnableForVoteSelectAnswerRange,
              name: '_AdminAdminVoteDefinitionsViewPageStore.previousButtonEnableForVoteSelectAnswerRange'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.targetStore');

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

  final _$voteDefinitionVoteSelectAnswerStoreRangeFutureAtom =
      Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.voteDefinitionVoteSelectAnswerStoreRangeFuture');

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

  final _$voteSelectAnswerSortColumnIndexRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerSortColumnIndexRange');

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

  final _$voteSelectAnswerSortColumnNameRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerSortColumnNameRange');

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

  final _$voteSelectAnswerSortAscRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerSortAscRange');

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

  final _$voteSelectAnswerStoreRangeListAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerStoreRangeList');

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

  final _$nextButtonEnableForVoteSelectAnswerRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.nextButtonEnableForVoteSelectAnswerRange');

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

  final _$nextPageCounterForVoteSelectAnswerRangeAtom = Atom(name: '_AdminAdminVoteDefinitionsViewPageStore.nextPageCounterForVoteSelectAnswerRange');

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

  final _$refreshVoteDefinitionAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.refreshVoteDefinition');

  @override
  Future<void> refreshVoteDefinition(AdminVoteDefinitionStore targetStore) {
    return _$refreshVoteDefinitionAsyncAction.run(() => super.refreshVoteDefinition(targetStore));
  }

  final _$updateVoteDefinitionAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.updateVoteDefinition');

  @override
  Future<void> updateVoteDefinition(AdminVoteDefinitionStore newTargetStore, AdminVoteDefinitionStore oldTargetStore) {
    return _$updateVoteDefinitionAsyncAction.run(() => super.updateVoteDefinition(newTargetStore, oldTargetStore));
  }

  final _$deleteVoteDefinitionAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.deleteVoteDefinition');

  @override
  Future<void> deleteVoteDefinition(AdminVoteDefinitionStore targetStore) {
    return _$deleteVoteDefinitionAsyncAction.run(() => super.deleteVoteDefinition(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminVoteDefinitionVoteYesNoAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.edemokraciaAdminVoteDefinitionVoteYesNo');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteYesNoAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteYesNo(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteYesNoAbstainAsyncAction =
      AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.edemokraciaAdminVoteDefinitionVoteYesNoAbstain');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteYesNoAbstainAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteYesNoAbstain(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteSelectAnswerAsyncAction =
      AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.edemokraciaAdminVoteDefinitionVoteSelectAnswer');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteSelectAnswerAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteSelectAnswer(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteRatingAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.edemokraciaAdminVoteDefinitionVoteRating');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteRating(RatingVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteRatingAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteRating(targetStore, ownerStore));
  }

  final _$getRangeForVoteSelectAnswerAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsViewPageStore.getRangeForVoteSelectAnswer');

  @override
  Future<List<SelectAnswerVoteSelectionStore>> getRangeForVoteSelectAnswer(AdminVoteDefinitionStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) {
    return _$getRangeForVoteSelectAnswerAsyncAction
        .run(() => super.getRangeForVoteSelectAnswer(ownerStore, filterStoreList: filterStoreList, queryLimit: queryLimit, mask: mask, isNext: isNext));
  }

  final _$_AdminAdminVoteDefinitionsViewPageStoreActionController = ActionController(name: '_AdminAdminVoteDefinitionsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminAdminVoteDefinitionsViewConfig pageConfig) {
    final _$actionInfo =
        _$_AdminAdminVoteDefinitionsViewPageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminAdminVoteDefinitionsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void voteSelectAnswerSetSortRange(AdminVoteDefinitionStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    final _$actionInfo =
        _$_AdminAdminVoteDefinitionsViewPageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsViewPageStore.voteSelectAnswerSetSortRange');
    try {
      return super.voteSelectAnswerSetSortRange(ownerStore, context, sortColumnName, sortColumnIndex, asc, filterStoreList: filterStoreList, mask: mask);
    } finally {
      _$_AdminAdminVoteDefinitionsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
voteDefinitionVoteSelectAnswerStoreRangeFuture: ${voteDefinitionVoteSelectAnswerStoreRangeFuture},
voteSelectAnswerSortColumnIndexRange: ${voteSelectAnswerSortColumnIndexRange},
voteSelectAnswerSortColumnNameRange: ${voteSelectAnswerSortColumnNameRange},
voteSelectAnswerSortAscRange: ${voteSelectAnswerSortAscRange},
voteSelectAnswerStoreRangeList: ${voteSelectAnswerStoreRangeList},
nextButtonEnableForVoteSelectAnswerRange: ${nextButtonEnableForVoteSelectAnswerRange},
nextPageCounterForVoteSelectAnswerRange: ${nextPageCounterForVoteSelectAnswerRange},
voteSelectAnswerTableForRangeItemsRangeStart: ${voteSelectAnswerTableForRangeItemsRangeStart},
voteSelectAnswerTableForRangeItemsRangeEnd: ${voteSelectAnswerTableForRangeItemsRangeEnd},
previousButtonEnableForVoteSelectAnswerRange: ${previousButtonEnableForVoteSelectAnswerRange}
    ''';
  }
}

mixin _$AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore
    on _AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore, Store {
  Computed<double> _$getInputWidgetsHeightComputed;

  @override
  double get getInputWidgetsHeight => (_$getInputWidgetsHeightComputed ??= Computed<double>(() => super.getInputWidgetsHeight,
          name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.getInputWidgetsHeight'))
      .value;
  Computed<bool> _$searchButtonEnabledComputed;

  @override
  bool get searchButtonEnabled => (_$searchButtonEnabledComputed ??=
          Computed<bool>(() => super.searchButtonEnabled, name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.searchButtonEnabled'))
      .value;
  Computed<double> _$filterWidgetsColumnHeightComputed;

  @override
  double get filterWidgetsColumnHeight => (_$filterWidgetsColumnHeightComputed ??= Computed<double>(() => super.filterWidgetsColumnHeight,
          name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.filterWidgetsColumnHeight'))
      .value;

  final _$availableFilterListAtom = Atom(name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.availableFilterList');

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

  final _$numberOfColumnsAtom = Atom(name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.numberOfColumns');

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
      Atom(name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.numberOfColumnsAfterFilterHorizontal');

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

  final _$_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStoreActionController =
      ActionController(name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore');

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStoreActionController.startAction(
        name: '_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStoreActionController.endAction(_$actionInfo);
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
