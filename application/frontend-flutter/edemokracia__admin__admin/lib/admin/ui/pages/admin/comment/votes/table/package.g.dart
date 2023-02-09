// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.comment.votes.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminCommentVotesTablePageStore on _AdminCommentVotesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminCommentVotesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminCommentVotesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminCommentVotesTablePageStore.previousButtonEnable'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminCommentVotesTablePageStore.targetStore');

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

  final _$pageMaxColAtom = Atom(name: '_AdminCommentVotesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminCommentVotesTablePageStore.availableFilterList');

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

  final _$nextButtonEnableAtom = Atom(name: '_AdminCommentVotesTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminCommentVotesTablePageStore.nextPageCounter');

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

  final _$votesSortColumnIndexAtom = Atom(name: '_AdminCommentVotesTablePageStore.votesSortColumnIndex');

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

  final _$votesSortColumnNameAtom = Atom(name: '_AdminCommentVotesTablePageStore.votesSortColumnName');

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

  final _$votesSortAscAtom = Atom(name: '_AdminCommentVotesTablePageStore.votesSortAsc');

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

  final _$commentVotesStoreFutureAtom = Atom(name: '_AdminCommentVotesTablePageStore.commentVotesStoreFuture');

  @override
  ObservableFuture<dynamic> get commentVotesStoreFuture {
    _$commentVotesStoreFutureAtom.reportRead();
    return super.commentVotesStoreFuture;
  }

  @override
  set commentVotesStoreFuture(ObservableFuture<dynamic> value) {
    _$commentVotesStoreFutureAtom.reportWrite(value, super.commentVotesStoreFuture, () {
      super.commentVotesStoreFuture = value;
    });
  }

  final _$createVotesAsyncAction = AsyncAction('_AdminCommentVotesTablePageStore.createVotes');

  @override
  Future<AdminSimpleVoteStore> createVotes(AdminCommentStore ownerStore, AdminSimpleVoteStore targetStore) {
    return _$createVotesAsyncAction.run(() => super.createVotes(ownerStore, targetStore));
  }

  final _$getVotesAsyncAction = AsyncAction('_AdminCommentVotesTablePageStore.getVotes');

  @override
  Future<List<AdminSimpleVoteStore>> getVotes(AdminCommentStore ownerStore, {int queryLimit, bool isNext}) {
    return _$getVotesAsyncAction.run(() => super.getVotes(ownerStore, queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteSimpleVoteAsyncAction = AsyncAction('_AdminCommentVotesTablePageStore.deleteSimpleVote');

  @override
  Future<void> deleteSimpleVote(AdminSimpleVoteStore targetStore, AdminCommentStore ownerStore) {
    return _$deleteSimpleVoteAsyncAction.run(() => super.deleteSimpleVote(targetStore, ownerStore));
  }

  final _$updateSimpleVoteAsyncAction = AsyncAction('_AdminCommentVotesTablePageStore.updateSimpleVote');

  @override
  Future<void> updateSimpleVote(AdminCommentStore ownerStore, AdminSimpleVoteStore newTargetStore) {
    return _$updateSimpleVoteAsyncAction.run(() => super.updateSimpleVote(ownerStore, newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminCommentVotesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminCommentVotesTablePageStoreActionController = ActionController(name: '_AdminCommentVotesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminCommentVotesTablePageStoreActionController.startAction(name: '_AdminCommentVotesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminCommentVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminCommentVotesTablePageStoreActionController.startAction(name: '_AdminCommentVotesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminCommentVotesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void votesSetSort(AdminCommentStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminCommentVotesTablePageStoreActionController.startAction(name: '_AdminCommentVotesTablePageStore.votesSetSort');
    try {
      return super.votesSetSort(ownerStore, context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminCommentVotesTablePageStoreActionController.endAction(_$actionInfo);
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
commentVotesStoreFuture: ${commentVotesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
