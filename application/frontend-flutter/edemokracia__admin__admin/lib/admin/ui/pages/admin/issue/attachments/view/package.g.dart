// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue.attachments.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueAttachmentsViewPageStore on _AdminIssueAttachmentsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminIssueAttachmentsViewPageStore.targetStore');

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

  final _$refreshIssueAttachmentAsyncAction = AsyncAction('_AdminIssueAttachmentsViewPageStore.refreshIssueAttachment');

  @override
  Future<void> refreshIssueAttachment(AdminIssueAttachmentStore targetStore) {
    return _$refreshIssueAttachmentAsyncAction.run(() => super.refreshIssueAttachment(targetStore));
  }

  final _$updateIssueAttachmentAsyncAction = AsyncAction('_AdminIssueAttachmentsViewPageStore.updateIssueAttachment');

  @override
  Future<void> updateIssueAttachment(AdminIssueAttachmentStore newTargetStore, AdminIssueAttachmentStore oldTargetStore) {
    return _$updateIssueAttachmentAsyncAction.run(() => super.updateIssueAttachment(newTargetStore, oldTargetStore));
  }

  final _$deleteIssueAttachmentAsyncAction = AsyncAction('_AdminIssueAttachmentsViewPageStore.deleteIssueAttachment');

  @override
  Future<void> deleteIssueAttachment(AdminIssueAttachmentStore targetStore) {
    return _$deleteIssueAttachmentAsyncAction.run(() => super.deleteIssueAttachment(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueAttachmentsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminIssueAttachmentsViewPageStoreActionController = ActionController(name: '_AdminIssueAttachmentsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminIssueAttachmentsViewConfig pageConfig) {
    final _$actionInfo = _$_AdminIssueAttachmentsViewPageStoreActionController.startAction(name: '_AdminIssueAttachmentsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminIssueAttachmentsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
