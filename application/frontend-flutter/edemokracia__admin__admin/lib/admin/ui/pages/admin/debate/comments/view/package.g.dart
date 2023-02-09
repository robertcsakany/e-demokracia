// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.debate.comments.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminDebateCommentsViewPageStore on _AdminDebateCommentsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminDebateCommentsViewPageStore.targetStore');

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

  final _$commentCreatedByStoreFutureAtom = Atom(name: '_AdminDebateCommentsViewPageStore.commentCreatedByStoreFuture');

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

  final _$refreshCommentAsyncAction = AsyncAction('_AdminDebateCommentsViewPageStore.refreshComment');

  @override
  Future<void> refreshComment(AdminCommentStore targetStore) {
    return _$refreshCommentAsyncAction.run(() => super.refreshComment(targetStore));
  }

  final _$updateCommentAsyncAction = AsyncAction('_AdminDebateCommentsViewPageStore.updateComment');

  @override
  Future<void> updateComment(AdminCommentStore newTargetStore, AdminCommentStore oldTargetStore) {
    return _$updateCommentAsyncAction.run(() => super.updateComment(newTargetStore, oldTargetStore));
  }

  final _$deleteCommentAsyncAction = AsyncAction('_AdminDebateCommentsViewPageStore.deleteComment');

  @override
  Future<void> deleteComment(AdminCommentStore targetStore) {
    return _$deleteCommentAsyncAction.run(() => super.deleteComment(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminDebateCommentsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminCommentVoteDownAsyncAction = AsyncAction('_AdminDebateCommentsViewPageStore.edemokraciaAdminCommentVoteDown');

  @override
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteDownAsyncAction.run(() => super.edemokraciaAdminCommentVoteDown(ownerStore));
  }

  final _$edemokraciaAdminCommentVoteUpAsyncAction = AsyncAction('_AdminDebateCommentsViewPageStore.edemokraciaAdminCommentVoteUp');

  @override
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteUpAsyncAction.run(() => super.edemokraciaAdminCommentVoteUp(ownerStore));
  }

  final _$_AdminDebateCommentsViewPageStoreActionController = ActionController(name: '_AdminDebateCommentsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminDebateCommentsViewConfig pageConfig) {
    final _$actionInfo = _$_AdminDebateCommentsViewPageStoreActionController.startAction(name: '_AdminDebateCommentsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminDebateCommentsViewPageStoreActionController.endAction(_$actionInfo);
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
