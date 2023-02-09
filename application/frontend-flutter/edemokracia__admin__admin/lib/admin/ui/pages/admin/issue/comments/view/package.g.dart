// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue.comments.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueCommentsViewPageStore on _AdminIssueCommentsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminIssueCommentsViewPageStore.targetStore');

  @override
  AdminCommentStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminCommentStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$commentCreatedByStoreFutureAtom = Atom(name: '_AdminIssueCommentsViewPageStore.commentCreatedByStoreFuture');

  @override
  ObservableFuture<dynamic> get commentCreatedByStoreFuture {
    _$commentCreatedByStoreFutureAtom.reportRead();
    return super.commentCreatedByStoreFuture;
  }

  @override
  set commentCreatedByStoreFuture(ObservableFuture<dynamic> value) {
    _$commentCreatedByStoreFutureAtom.reportWrite(value, super.commentCreatedByStoreFuture, () {
      super.commentCreatedByStoreFuture = value;
    });
  }

  final _$refreshCommentAsyncAction = AsyncAction('_AdminIssueCommentsViewPageStore.refreshComment');

  @override
  Future<void> refreshComment(AdminCommentStore targetStore) {
    return _$refreshCommentAsyncAction.run(() => super.refreshComment(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueCommentsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminCommentVoteDownAsyncAction = AsyncAction('_AdminIssueCommentsViewPageStore.edemokraciaAdminCommentVoteDown');

  @override
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteDownAsyncAction.run(() => super.edemokraciaAdminCommentVoteDown(ownerStore));
  }

  final _$edemokraciaAdminCommentVoteUpAsyncAction = AsyncAction('_AdminIssueCommentsViewPageStore.edemokraciaAdminCommentVoteUp');

  @override
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteUpAsyncAction.run(() => super.edemokraciaAdminCommentVoteUp(ownerStore));
  }

  final _$_AdminIssueCommentsViewPageStoreActionController = ActionController(name: '_AdminIssueCommentsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminIssueCommentsViewConfig pageConfig) {
    final _$actionInfo = _$_AdminIssueCommentsViewPageStoreActionController.startAction(name: '_AdminIssueCommentsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminIssueCommentsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
commentCreatedByStoreFuture: ${commentCreatedByStoreFuture}
    ''';
  }
}
