// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.con.votes.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminConVotesViewPageStore on _AdminConVotesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminConVotesViewPageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminConVotesViewPageStore.simpleVoteUserStoreFuture');

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

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_AdminConVotesViewPageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminConVotesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminConVotesViewPageStoreActionController = ActionController(name: '_AdminConVotesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminConVotesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminConVotesViewPageStoreActionController.startAction(name: '_AdminConVotesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminConVotesViewPageStoreActionController.endAction(_$actionInfo);
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
