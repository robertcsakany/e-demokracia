// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.comment.votes.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminCommentVotesViewPageStore on _AdminCommentVotesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminCommentVotesViewPageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminCommentVotesViewPageStore.simpleVoteUserStoreFuture');

  @override
  ObservableFuture<dynamic> get simpleVoteUserStoreFuture {
    _$simpleVoteUserStoreFutureAtom.reportRead();
    return super.simpleVoteUserStoreFuture;
  }

  @override
  set simpleVoteUserStoreFuture(ObservableFuture<dynamic> value) {
    _$simpleVoteUserStoreFutureAtom.reportWrite(value, super.simpleVoteUserStoreFuture, () {
      super.simpleVoteUserStoreFuture = value;
    });
  }

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_AdminCommentVotesViewPageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$updateSimpleVoteAsyncAction = AsyncAction('_AdminCommentVotesViewPageStore.updateSimpleVote');

  @override
  Future<void> updateSimpleVote(AdminSimpleVoteStore newTargetStore, AdminSimpleVoteStore oldTargetStore) {
    return _$updateSimpleVoteAsyncAction.run(() => super.updateSimpleVote(newTargetStore, oldTargetStore));
  }

  final _$deleteSimpleVoteAsyncAction = AsyncAction('_AdminCommentVotesViewPageStore.deleteSimpleVote');

  @override
  Future<void> deleteSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$deleteSimpleVoteAsyncAction.run(() => super.deleteSimpleVote(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminCommentVotesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminCommentVotesViewPageStoreActionController = ActionController(name: '_AdminCommentVotesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminCommentVotesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminCommentVotesViewPageStoreActionController.startAction(name: '_AdminCommentVotesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminCommentVotesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
simpleVoteUserStoreFuture: ${simpleVoteUserStoreFuture}
    ''';
  }
}
