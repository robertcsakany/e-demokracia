// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.vote_definition.vote_rating.operation_input;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminVoteDefinitionVoteRatingOperationInputPageStore on _AdminVoteDefinitionVoteRatingOperationInputPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminVoteDefinitionVoteRatingOperationInputPageStore.targetStore');

  @override
  RatingVoteInputStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(RatingVoteInputStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$getDefaultsAsyncAction = AsyncAction('_AdminVoteDefinitionVoteRatingOperationInputPageStore.getDefaults');

  @override
  Future<RatingVoteInputStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminVoteDefinitionVoteRatingOperationInputPageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminVoteDefinitionVoteRatingOperationInputPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
