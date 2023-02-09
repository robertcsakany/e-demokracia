// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.debate.close_debate.operation_output;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminDebateCloseDebateOperationOutputPageStore on _AdminDebateCloseDebateOperationOutputPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminDebateCloseDebateOperationOutputPageStore.targetStore');

  @override
  VoteDefinitionStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(VoteDefinitionStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshVoteDefinitionAsyncAction = AsyncAction('_AdminDebateCloseDebateOperationOutputPageStore.refreshVoteDefinition');

  @override
  Future<void> refreshVoteDefinition(VoteDefinitionStore targetStore) {
    return _$refreshVoteDefinitionAsyncAction.run(() => super.refreshVoteDefinition(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminDebateCloseDebateOperationOutputPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminDebateCloseDebateOperationOutputPageStoreActionController = ActionController(name: '_AdminDebateCloseDebateOperationOutputPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminDebateCloseDebateOperationOutputConfig pageConfig) {
    final _$actionInfo = _$_AdminDebateCloseDebateOperationOutputPageStoreActionController.startAction(
        name: '_AdminDebateCloseDebateOperationOutputPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminDebateCloseDebateOperationOutputPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
