// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.con.comments.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConCommentsViewPageStore on _ConCommentsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_ConCommentsViewPageStore.targetStore');

  @override
  CommentStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(CommentStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$votesSortColumnIndexAtom = Atom(name: '_ConCommentsViewPageStore.votesSortColumnIndex');

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

  final _$votesSortColumnNameAtom = Atom(name: '_ConCommentsViewPageStore.votesSortColumnName');

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

  final _$votesSortAscAtom = Atom(name: '_ConCommentsViewPageStore.votesSortAsc');

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

  final _$votesSortCompareAtom = Atom(name: '_ConCommentsViewPageStore.votesSortCompare');

  @override
  Comparator<dynamic> get votesSortCompare {
    _$votesSortCompareAtom.reportRead();
    return super.votesSortCompare;
  }

  @override
  set votesSortCompare(Comparator<dynamic> value) {
    _$votesSortCompareAtom.reportWrite(value, super.votesSortCompare, () {
      super.votesSortCompare = value;
    });
  }

  final _$commentVotesStoreFutureAtom = Atom(name: '_ConCommentsViewPageStore.commentVotesStoreFuture');

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

  final _$refreshCommentAsyncAction = AsyncAction('_ConCommentsViewPageStore.refreshComment');

  @override
  Future<void> refreshComment(CommentStore targetStore) {
    return _$refreshCommentAsyncAction.run(() => super.refreshComment(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_ConCommentsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_ConCommentsViewPageStoreActionController = ActionController(name: '_ConCommentsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, ConCommentsViewConfig pageConfig) {
    final _$actionInfo = _$_ConCommentsViewPageStoreActionController.startAction(name: '_ConCommentsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_ConCommentsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void votesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, CommentStore store) {
    final _$actionInfo = _$_ConCommentsViewPageStoreActionController.startAction(name: '_ConCommentsViewPageStore.votesSetSort');
    try {
      return super.votesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_ConCommentsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
votesSortColumnIndex: ${votesSortColumnIndex},
votesSortColumnName: ${votesSortColumnName},
votesSortAsc: ${votesSortAsc},
votesSortCompare: ${votesSortCompare},
commentVotesStoreFuture: ${commentVotesStoreFuture}
    ''';
  }
}
