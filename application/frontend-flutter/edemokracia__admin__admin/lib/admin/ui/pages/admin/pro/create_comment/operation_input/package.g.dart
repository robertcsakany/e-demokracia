// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.create_comment.operation_input;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProCreateCommentOperationInputPageStore on _AdminProCreateCommentOperationInputPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminProCreateCommentOperationInputPageStore.targetStore');

  @override
  CreateCommentInputStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(CreateCommentInputStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$getDefaultsAsyncAction = AsyncAction('_AdminProCreateCommentOperationInputPageStore.getDefaults');

  @override
  Future<CreateCommentInputStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminProCreateCommentOperationInputPageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProCreateCommentOperationInputPageStore.downloadFile');

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
