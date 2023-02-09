// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.issue.created_by.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IssueCreatedByViewPageStore on _IssueCreatedByViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_IssueCreatedByViewPageStore.targetStore');

  @override
  UserStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(UserStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshUserAsyncAction = AsyncAction('_IssueCreatedByViewPageStore.refreshUser');

  @override
  Future<void> refreshUser(UserStore targetStore) {
    return _$refreshUserAsyncAction.run(() => super.refreshUser(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_IssueCreatedByViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_IssueCreatedByViewPageStoreActionController = ActionController(name: '_IssueCreatedByViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, IssueCreatedByViewConfig pageConfig) {
    final _$actionInfo = _$_IssueCreatedByViewPageStoreActionController.startAction(name: '_IssueCreatedByViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_IssueCreatedByViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
