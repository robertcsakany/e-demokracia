// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.issue.debates.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminIssueDebatesViewPageStore on _AdminIssueDebatesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminIssueDebatesViewPageStore.targetStore');

  @override
  AdminIssueDebateStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminIssueDebateStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshIssueDebateAsyncAction = AsyncAction('_AdminIssueDebatesViewPageStore.refreshIssueDebate');

  @override
  Future<void> refreshIssueDebate(AdminIssueDebateStore targetStore) {
    return _$refreshIssueDebateAsyncAction.run(() => super.refreshIssueDebate(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminIssueDebatesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminIssueDebatesViewPageStoreActionController = ActionController(name: '_AdminIssueDebatesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminIssueDebatesViewConfig pageConfig) {
    final _$actionInfo = _$_AdminIssueDebatesViewPageStoreActionController.startAction(name: '_AdminIssueDebatesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminIssueDebatesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
