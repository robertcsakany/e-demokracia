// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.con.votes.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminConVotesTablePageStore on _AdminConVotesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize => (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminConVotesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminConVotesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminConVotesTablePageStore.previousButtonEnable')).value;

  final _$targetStoreAtom = Atom(name: '_AdminConVotesTablePageStore.targetStore');

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

  final _$pageMaxColAtom = Atom(name: '_AdminConVotesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminConVotesTablePageStore.availableFilterList');

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

  final _$nextButtonEnableAtom = Atom(name: '_AdminConVotesTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminConVotesTablePageStore.nextPageCounter');

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

  final _$votesSortColumnIndexAtom = Atom(name: '_AdminConVotesTablePageStore.votesSortColumnIndex');

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

  final _$votesSortColumnNameAtom = Atom(name: '_AdminConVotesTablePageStore.votesSortColumnName');

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

  final _$votesSortAscAtom = Atom(name: '_AdminConVotesTablePageStore.votesSortAsc');

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

  final _$conVotesStoreFutureAtom = Atom(name: '_AdminConVotesTablePageStore.conVotesStoreFuture');

  @override
  ObservableFuture<dynamic> get conVotesStoreFuture {
    _$conVotesStoreFutureAtom.reportRead();
    return super.conVotesStoreFuture;
  }

  @override
  set conVotesStoreFuture(ObservableFuture<dynamic> value) {
    _$conVotesStoreFutureAtom.reportWrite(value, super.conVotesStoreFuture, () {
      super.conVotesStoreFuture = value;
    });
  }

  final _$getVotesAsyncAction = AsyncAction('_AdminConVotesTablePageStore.getVotes');

  @override
  Future<List<AdminSimpleVoteStore>> getVotes(AdminConStore ownerStore, {int queryLimit, bool isNext}) {
    return _$getVotesAsyncAction.run(() => super.getVotes(ownerStore, queryLimit: queryLimit, isNext: isNext));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminConVotesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminConVotesTablePageStoreActionController = ActionController(name: '_AdminConVotesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminConVotesTablePageStoreActionController.startAction(name: '_AdminConVotesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminConVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminConVotesTablePageStoreActionController.startAction(name: '_AdminConVotesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminConVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void votesSetSort(AdminConStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminConVotesTablePageStoreActionController.startAction(name: '_AdminConVotesTablePageStore.votesSetSort');
    try {
      return super.votesSetSort(ownerStore, context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminConVotesTablePageStoreActionController.endAction(_$actionInfo);
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
conVotesStoreFuture: ${conVotesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
