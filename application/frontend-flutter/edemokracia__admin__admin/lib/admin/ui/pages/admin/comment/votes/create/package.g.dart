// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.comment.votes.create;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminCommentVotesCreatePageStore on _AdminCommentVotesCreatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminCommentVotesCreatePageStore.targetStore');

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

  final _$simpleVoteUserStoreFutureAtom = Atom(name: '_AdminCommentVotesCreatePageStore.simpleVoteUserStoreFuture');

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

  final _$getDefaultsAsyncAction = AsyncAction('_AdminCommentVotesCreatePageStore.getDefaults');

  @override
  Future<AdminSimpleVoteStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$validateAsyncAction = AsyncAction('_AdminCommentVotesCreatePageStore.validate');

  @override
  Future<AdminSimpleVoteStore> validate(AdminCommentStore ownerStore, AdminSimpleVoteStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(ownerStore, targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminCommentVotesCreatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminCommentVotesCreatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$setUserAsyncAction = AsyncAction('_AdminCommentVotesCreatePageStore.setUser');

  @override
  Future<void> setUser(AdminSimpleVoteStore ownerStore, AdminUserStore selectedStore) {
    return _$setUserAsyncAction.run(() => super.setUser(ownerStore, selectedStore));
  }

  final _$unsetUserAsyncAction = AsyncAction('_AdminCommentVotesCreatePageStore.unsetUser');

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
