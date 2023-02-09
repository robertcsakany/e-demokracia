// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.debate.vote_definition.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminDebateVoteDefinitionViewPageStore on _AdminDebateVoteDefinitionViewPageStore, Store {
  Computed<int> _$voteSelectAnswerTableForRangeItemsRangeStartComputed;

  @override
  int get voteSelectAnswerTableForRangeItemsRangeStart =>
      (_$voteSelectAnswerTableForRangeItemsRangeStartComputed ??= Computed<int>(() => super.voteSelectAnswerTableForRangeItemsRangeStart,
              name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerTableForRangeItemsRangeStart'))
          .value;
  Computed<int> _$voteSelectAnswerTableForRangeItemsRangeEndComputed;

  @override
  int get voteSelectAnswerTableForRangeItemsRangeEnd =>
      (_$voteSelectAnswerTableForRangeItemsRangeEndComputed ??= Computed<int>(() => super.voteSelectAnswerTableForRangeItemsRangeEnd,
              name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerTableForRangeItemsRangeEnd'))
          .value;
  Computed<bool> _$previousButtonEnableForVoteSelectAnswerRangeComputed;

  @override
  bool get previousButtonEnableForVoteSelectAnswerRange =>
      (_$previousButtonEnableForVoteSelectAnswerRangeComputed ??= Computed<bool>(() => super.previousButtonEnableForVoteSelectAnswerRange,
              name: '_AdminDebateVoteDefinitionViewPageStore.previousButtonEnableForVoteSelectAnswerRange'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.targetStore');

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
      Atom(name: '_AdminDebateVoteDefinitionViewPageStore.voteDefinitionVoteSelectAnswerStoreRangeFuture');

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

  final _$voteSelectAnswerSortColumnIndexRangeAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerSortColumnIndexRange');

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

  final _$voteSelectAnswerSortColumnNameRangeAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerSortColumnNameRange');

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

  final _$voteSelectAnswerSortAscRangeAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerSortAscRange');

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

  final _$voteSelectAnswerStoreRangeListAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerStoreRangeList');

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

  final _$nextButtonEnableForVoteSelectAnswerRangeAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.nextButtonEnableForVoteSelectAnswerRange');

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

  final _$nextPageCounterForVoteSelectAnswerRangeAtom = Atom(name: '_AdminDebateVoteDefinitionViewPageStore.nextPageCounterForVoteSelectAnswerRange');

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

  final _$refreshVoteDefinitionAsyncAction = AsyncAction('_AdminDebateVoteDefinitionViewPageStore.refreshVoteDefinition');

  @override
  Future<void> refreshVoteDefinition(AdminVoteDefinitionStore targetStore) {
    return _$refreshVoteDefinitionAsyncAction.run(() => super.refreshVoteDefinition(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminDebateVoteDefinitionViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminVoteDefinitionVoteYesNoAsyncAction = AsyncAction('_AdminDebateVoteDefinitionViewPageStore.edemokraciaAdminVoteDefinitionVoteYesNo');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteYesNoAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteYesNo(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteYesNoAbstainAsyncAction =
      AsyncAction('_AdminDebateVoteDefinitionViewPageStore.edemokraciaAdminVoteDefinitionVoteYesNoAbstain');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteYesNoAbstainAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteYesNoAbstain(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteSelectAnswerAsyncAction =
      AsyncAction('_AdminDebateVoteDefinitionViewPageStore.edemokraciaAdminVoteDefinitionVoteSelectAnswer');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteSelectAnswerAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteSelectAnswer(targetStore, ownerStore));
  }

  final _$edemokraciaAdminVoteDefinitionVoteRatingAsyncAction = AsyncAction('_AdminDebateVoteDefinitionViewPageStore.edemokraciaAdminVoteDefinitionVoteRating');

  @override
  Future<void> edemokraciaAdminVoteDefinitionVoteRating(RatingVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) {
    return _$edemokraciaAdminVoteDefinitionVoteRatingAsyncAction.run(() => super.edemokraciaAdminVoteDefinitionVoteRating(targetStore, ownerStore));
  }

  final _$getRangeForVoteSelectAnswerAsyncAction = AsyncAction('_AdminDebateVoteDefinitionViewPageStore.getRangeForVoteSelectAnswer');

  @override
  Future<List<SelectAnswerVoteSelectionStore>> getRangeForVoteSelectAnswer(AdminVoteDefinitionStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) {
    return _$getRangeForVoteSelectAnswerAsyncAction
        .run(() => super.getRangeForVoteSelectAnswer(ownerStore, filterStoreList: filterStoreList, queryLimit: queryLimit, mask: mask, isNext: isNext));
  }

  final _$_AdminDebateVoteDefinitionViewPageStoreActionController = ActionController(name: '_AdminDebateVoteDefinitionViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminDebateVoteDefinitionViewConfig pageConfig) {
    final _$actionInfo =
        _$_AdminDebateVoteDefinitionViewPageStoreActionController.startAction(name: '_AdminDebateVoteDefinitionViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminDebateVoteDefinitionViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void voteSelectAnswerSetSortRange(AdminVoteDefinitionStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    final _$actionInfo =
        _$_AdminDebateVoteDefinitionViewPageStoreActionController.startAction(name: '_AdminDebateVoteDefinitionViewPageStore.voteSelectAnswerSetSortRange');
    try {
      return super.voteSelectAnswerSetSortRange(ownerStore, context, sortColumnName, sortColumnIndex, asc, filterStoreList: filterStoreList, mask: mask);
    } finally {
      _$_AdminDebateVoteDefinitionViewPageStoreActionController.endAction(_$actionInfo);
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

mixin _$AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore
    on _AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore, Store {
  Computed<double> _$getInputWidgetsHeightComputed;

  @override
  double get getInputWidgetsHeight => (_$getInputWidgetsHeightComputed ??= Computed<double>(() => super.getInputWidgetsHeight,
          name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.getInputWidgetsHeight'))
      .value;
  Computed<bool> _$searchButtonEnabledComputed;

  @override
  bool get searchButtonEnabled => (_$searchButtonEnabledComputed ??=
          Computed<bool>(() => super.searchButtonEnabled, name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.searchButtonEnabled'))
      .value;
  Computed<double> _$filterWidgetsColumnHeightComputed;

  @override
  double get filterWidgetsColumnHeight => (_$filterWidgetsColumnHeightComputed ??= Computed<double>(() => super.filterWidgetsColumnHeight,
          name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.filterWidgetsColumnHeight'))
      .value;

  final _$availableFilterListAtom = Atom(name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.availableFilterList');

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

  final _$numberOfColumnsAtom = Atom(name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.numberOfColumns');

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
      Atom(name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.numberOfColumnsAfterFilterHorizontal');

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

  final _$_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStoreActionController =
      ActionController(name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore');

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStoreActionController.startAction(
        name: '_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminDebateVoteDefinitionViewVoteDefinitionVoteSelectAnswerDialogStoreActionController.endAction(_$actionInfo);
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
