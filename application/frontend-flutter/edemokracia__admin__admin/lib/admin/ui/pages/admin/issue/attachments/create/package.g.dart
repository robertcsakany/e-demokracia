// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue.attachments.create;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueAttachmentsCreatePageStore on _AdminIssueAttachmentsCreatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminIssueAttachmentsCreatePageStore.targetStore');

  @override
  AdminIssueAttachmentStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminIssueAttachmentStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$getDefaultsAsyncAction = AsyncAction('_AdminIssueAttachmentsCreatePageStore.getDefaults');

  @override
  Future<AdminIssueAttachmentStore> getDefaults() {
    return _$getDefaultsAsyncAction.run(() => super.getDefaults());
  }

  final _$validateAsyncAction = AsyncAction('_AdminIssueAttachmentsCreatePageStore.validate');

  @override
  Future<AdminIssueAttachmentStore> validate(AdminIssueStore ownerStore, AdminIssueAttachmentStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(ownerStore, targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminIssueAttachmentsCreatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueAttachmentsCreatePageStore.downloadFile');

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
