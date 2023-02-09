// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.votes.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProVotesTablePageStore on _AdminProVotesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize => (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminProVotesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminProVotesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminProVotesTablePageStore.previousButtonEnable')).value;

  final _$targetStoreAtom = Atom(name: '_AdminProVotesTablePageStore.targetStore');

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

  final _$pageMaxColAtom = Atom(name: '_AdminProVotesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminProVotesTablePageStore.availableFilterList');

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

  final _$nextButtonEnableAtom = Atom(name: '_AdminProVotesTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminProVotesTablePageStore.nextPageCounter');

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

  final _$votesSortColumnIndexAtom = Atom(name: '_AdminProVotesTablePageStore.votesSortColumnIndex');

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

  final _$votesSortColumnNameAtom = Atom(name: '_AdminProVotesTablePageStore.votesSortColumnName');

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

  final _$votesSortAscAtom = Atom(name: '_AdminProVotesTablePageStore.votesSortAsc');

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

  final _$proVotesStoreFutureAtom = Atom(name: '_AdminProVotesTablePageStore.proVotesStoreFuture');

  @override
  ObservableFuture<dynamic> get proVotesStoreFuture {
    _$proVotesStoreFutureAtom.reportRead();
    return super.proVotesStoreFuture;
  }

  @override
  set proVotesStoreFuture(ObservableFuture<dynamic> value) {
    _$proVotesStoreFutureAtom.reportWrite(value, super.proVotesStoreFuture, () {
      super.proVotesStoreFuture = value;
    });
  }

  final _$createVotesAsyncAction = AsyncAction('_AdminProVotesTablePageStore.createVotes');

  @override
  Future<AdminSimpleVoteStore> createVotes(AdminProStore ownerStore, AdminSimpleVoteStore targetStore) {
    return _$createVotesAsyncAction.run(() => super.createVotes(ownerStore, targetStore));
  }

  final _$getVotesAsyncAction = AsyncAction('_AdminProVotesTablePageStore.getVotes');

  @override
  Future<List<AdminSimpleVoteStore>> getVotes(AdminProStore ownerStore, {int queryLimit, bool isNext}) {
    return _$getVotesAsyncAction.run(() => super.getVotes(ownerStore, queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteSimpleVoteAsyncAction = AsyncAction('_AdminProVotesTablePageStore.deleteSimpleVote');

  @override
  Future<void> deleteSimpleVote(AdminSimpleVoteStore targetStore, AdminProStore ownerStore) {
    return _$deleteSimpleVoteAsyncAction.run(() => super.deleteSimpleVote(targetStore, ownerStore));
  }

  final _$updateSimpleVoteAsyncAction = AsyncAction('_AdminProVotesTablePageStore.updateSimpleVote');

  @override
  Future<void> updateSimpleVote(AdminProStore ownerStore, AdminSimpleVoteStore newTargetStore) {
    return _$updateSimpleVoteAsyncAction.run(() => super.updateSimpleVote(ownerStore, newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProVotesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminProVotesTablePageStoreActionController = ActionController(name: '_AdminProVotesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminProVotesTablePageStoreActionController.startAction(name: '_AdminProVotesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminProVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminProVotesTablePageStoreActionController.startAction(name: '_AdminProVotesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminProVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void votesSetSort(AdminProStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminProVotesTablePageStoreActionController.startAction(name: '_AdminProVotesTablePageStore.votesSetSort');
    try {
      return super.votesSetSort(ownerStore, context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminProVotesTablePageStoreActionController.endAction(_$actionInfo);
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
proVotesStoreFuture: ${proVotesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
