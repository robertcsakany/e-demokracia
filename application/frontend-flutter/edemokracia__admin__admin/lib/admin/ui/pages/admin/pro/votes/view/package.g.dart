// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.votes.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProVotesViewPageStore on _AdminProVotesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminProVotesViewPageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminProVotesViewPageStore.simpleVoteUserStoreFuture');

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

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_AdminProVotesViewPageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$updateSimpleVoteAsyncAction = AsyncAction('_AdminProVotesViewPageStore.updateSimpleVote');

  @override
  Future<void> updateSimpleVote(AdminSimpleVoteStore newTargetStore, AdminSimpleVoteStore oldTargetStore) {
    return _$updateSimpleVoteAsyncAction.run(() => super.updateSimpleVote(newTargetStore, oldTargetStore));
  }

  final _$deleteSimpleVoteAsyncAction = AsyncAction('_AdminProVotesViewPageStore.deleteSimpleVote');

  @override
  Future<void> deleteSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$deleteSimpleVoteAsyncAction.run(() => super.deleteSimpleVote(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProVotesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminProVotesViewPageStoreActionController = ActionController(name: '_AdminProVotesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminProVotesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminProVotesViewPageStoreActionController.startAction(name: '_AdminProVotesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminProVotesViewPageStoreActionController.endAction(_$actionInfo);
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
