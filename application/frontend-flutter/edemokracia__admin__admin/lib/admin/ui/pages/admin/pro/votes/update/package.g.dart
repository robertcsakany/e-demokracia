// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.votes.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProVotesUpdatePageStore on _AdminProVotesUpdatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminProVotesUpdatePageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminProVotesUpdatePageStore.simpleVoteUserStoreFuture');

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

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_AdminProVotesUpdatePageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminProVotesUpdatePageStore.validate');

  @override
  Future<AdminSimpleVoteStore> validate(AdminSimpleVoteStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminProVotesUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProVotesUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$setUserAsyncAction = AsyncAction('_AdminProVotesUpdatePageStore.setUser');

  @override
  Future<void> setUser(AdminSimpleVoteStore ownerStore, AdminUserStore selectedStore) {
    return _$setUserAsyncAction.run(() => super.setUser(ownerStore, selectedStore));
  }

  final _$unsetUserAsyncAction = AsyncAction('_AdminProVotesUpdatePageStore.unsetUser');

  @override
  Future<void> unsetUser(AdminSimpleVoteStore ownerStore) {
    return _$unsetUserAsyncAction.run(() => super.unsetUser(ownerStore));
  }

  final _$_AdminProVotesUpdatePageStoreActionController = ActionController(name: '_AdminProVotesUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminProVotesUpdateConfig pageConfig) {
    final _$actionInfo = _$_AdminProVotesUpdatePageStoreActionController.startAction(name: '_AdminProVotesUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminProVotesUpdatePageStoreActionController.endAction(_$actionInfo);
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
