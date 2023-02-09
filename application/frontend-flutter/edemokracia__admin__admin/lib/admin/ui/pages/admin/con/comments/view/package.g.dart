// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.con.comments.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminConCommentsViewPageStore on _AdminConCommentsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminConCommentsViewPageStore.targetStore');

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

  final _$commentCreatedByStoreFutureAtom = Atom(name: '_AdminConCommentsViewPageStore.commentCreatedByStoreFuture');

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

  final _$refreshCommentAsyncAction = AsyncAction('_AdminConCommentsViewPageStore.refreshComment');

  @override
  Future<void> refreshComment(AdminCommentStore targetStore) {
    return _$refreshCommentAsyncAction.run(() => super.refreshComment(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminConCommentsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminCommentVoteDownAsyncAction = AsyncAction('_AdminConCommentsViewPageStore.edemokraciaAdminCommentVoteDown');

  @override
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteDownAsyncAction.run(() => super.edemokraciaAdminCommentVoteDown(ownerStore));
  }

  final _$edemokraciaAdminCommentVoteUpAsyncAction = AsyncAction('_AdminConCommentsViewPageStore.edemokraciaAdminCommentVoteUp');

  @override
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteUpAsyncAction.run(() => super.edemokraciaAdminCommentVoteUp(ownerStore));
  }

  final _$_AdminConCommentsViewPageStoreActionController = ActionController(name: '_AdminConCommentsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminConCommentsViewConfig pageConfig) {
    final _$actionInfo = _$_AdminConCommentsViewPageStoreActionController.startAction(name: '_AdminConCommentsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminConCommentsViewPageStoreActionController.endAction(_$actionInfo);
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
