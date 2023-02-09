// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.issue.attachments.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IssueAttachmentsViewPageStore on _IssueAttachmentsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_IssueAttachmentsViewPageStore.targetStore');

  @override
  IssueAttachmentStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(IssueAttachmentStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshIssueAttachmentAsyncAction = AsyncAction('_IssueAttachmentsViewPageStore.refreshIssueAttachment');

  @override
  Future<void> refreshIssueAttachment(IssueAttachmentStore targetStore) {
    return _$refreshIssueAttachmentAsyncAction.run(() => super.refreshIssueAttachment(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_IssueAttachmentsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_IssueAttachmentsViewPageStoreActionController = ActionController(name: '_IssueAttachmentsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, IssueAttachmentsViewConfig pageConfig) {
    final _$actionInfo = _$_IssueAttachmentsViewPageStoreActionController.startAction(name: '_IssueAttachmentsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_IssueAttachmentsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
