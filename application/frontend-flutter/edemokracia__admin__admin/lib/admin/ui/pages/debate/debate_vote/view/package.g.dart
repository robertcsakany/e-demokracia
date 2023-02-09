// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.debate.debate_vote.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DebateDebateVoteViewPageStore on _DebateDebateVoteViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_DebateDebateVoteViewPageStore.targetStore');

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

  final _$refreshVoteDefinitionAsyncAction = AsyncAction('_DebateDebateVoteViewPageStore.refreshVoteDefinition');

  @override
  Future<void> refreshVoteDefinition(VoteDefinitionStore targetStore) {
    return _$refreshVoteDefinitionAsyncAction.run(() => super.refreshVoteDefinition(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_DebateDebateVoteViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_DebateDebateVoteViewPageStoreActionController = ActionController(name: '_DebateDebateVoteViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, DebateDebateVoteViewConfig pageConfig) {
    final _$actionInfo = _$_DebateDebateVoteViewPageStoreActionController.startAction(name: '_DebateDebateVoteViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_DebateDebateVoteViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
