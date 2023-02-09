// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.votes.create;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProVotesCreatePageStore on _AdminProVotesCreatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminProVotesCreatePageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminProVotesCreatePageStore.simpleVoteUserStoreFuture');

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

  final _$getDefaultsAsyncAction = AsyncAction('_AdminProVotesCreatePageStore.getDefaults');

  @override
  Future<AdminSimpleVoteStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$validateAsyncAction = AsyncAction('_AdminProVotesCreatePageStore.validate');

  @override
  Future<AdminSimpleVoteStore> validate(AdminProStore ownerStore, AdminSimpleVoteStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(ownerStore, targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminProVotesCreatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProVotesCreatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$setUserAsyncAction = AsyncAction('_AdminProVotesCreatePageStore.setUser');

  @override
  Future<void> setUser(AdminSimpleVoteStore ownerStore, AdminUserStore selectedStore) {
    return _$setUserAsyncAction.run(() => super.setUser(ownerStore, selectedStore));
  }

  final _$unsetUserAsyncAction = AsyncAction('_AdminProVotesCreatePageStore.unsetUser');

  @override
  Future<void> unsetUser(AdminSimpleVoteStore ownerStore) {
    return _$unsetUserAsyncAction.run(() => super.unsetUser(ownerStore));
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
simpleVoteUserStoreFuture: ${simpleVoteUserStoreFuture}
    ''';
  }
}
