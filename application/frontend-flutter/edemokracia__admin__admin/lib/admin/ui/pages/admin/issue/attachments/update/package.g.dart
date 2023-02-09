// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue.attachments.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueAttachmentsUpdatePageStore on _AdminIssueAttachmentsUpdatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminIssueAttachmentsUpdatePageStore.targetStore');

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

  final _$refreshIssueAttachmentAsyncAction = AsyncAction('_AdminIssueAttachmentsUpdatePageStore.refreshIssueAttachment');

  @override
  Future<void> refreshIssueAttachment(AdminIssueAttachmentStore targetStore) {
    return _$refreshIssueAttachmentAsyncAction.run(() => super.refreshIssueAttachment(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminIssueAttachmentsUpdatePageStore.validate');

  @override
  Future<AdminIssueAttachmentStore> validate(AdminIssueAttachmentStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminIssueAttachmentsUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueAttachmentsUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminIssueAttachmentsUpdatePageStoreActionController = ActionController(name: '_AdminIssueAttachmentsUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminIssueAttachmentsUpdateConfig pageConfig) {
    final _$actionInfo =
        _$_AdminIssueAttachmentsUpdatePageStoreActionController.startAction(name: '_AdminIssueAttachmentsUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminIssueAttachmentsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
