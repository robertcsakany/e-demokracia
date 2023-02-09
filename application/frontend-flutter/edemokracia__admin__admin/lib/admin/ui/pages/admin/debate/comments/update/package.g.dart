// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.debate.comments.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminDebateCommentsUpdatePageStore on _AdminDebateCommentsUpdatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminDebateCommentsUpdatePageStore.targetStore');

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

  final _$commentCreatedByStoreFutureAtom = Atom(name: '_AdminDebateCommentsUpdatePageStore.commentCreatedByStoreFuture');

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

  final _$refreshCommentAsyncAction = AsyncAction('_AdminDebateCommentsUpdatePageStore.refreshComment');

  @override
  Future<void> refreshComment(AdminCommentStore targetStore) {
    return _$refreshCommentAsyncAction.run(() => super.refreshComment(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminDebateCommentsUpdatePageStore.validate');

  @override
  Future<AdminCommentStore> validate(AdminCommentStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminDebateCommentsUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminDebateCommentsUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminDebateCommentsUpdatePageStoreActionController = ActionController(name: '_AdminDebateCommentsUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminDebateCommentsUpdateConfig pageConfig) {
    final _$actionInfo = _$_AdminDebateCommentsUpdatePageStoreActionController.startAction(name: '_AdminDebateCommentsUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminDebateCommentsUpdatePageStoreActionController.endAction(_$actionInfo);
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
