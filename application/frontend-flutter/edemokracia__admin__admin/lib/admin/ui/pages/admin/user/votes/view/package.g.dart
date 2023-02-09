// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.votes.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserVotesViewPageStore on _AdminUserVotesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminUserVotesViewPageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminUserVotesViewPageStore.simpleVoteUserStoreFuture');

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

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_AdminUserVotesViewPageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserVotesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminUserVotesViewPageStoreActionController = ActionController(name: '_AdminUserVotesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserVotesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminUserVotesViewPageStoreActionController.startAction(name: '_AdminUserVotesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserVotesViewPageStoreActionController.endAction(_$actionInfo);
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
