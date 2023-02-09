// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.vote_definition.vote_entries.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VoteDefinitionVoteEntriesViewPageStore on _VoteDefinitionVoteEntriesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_VoteDefinitionVoteEntriesViewPageStore.targetStore');

  @override
  VoteEntryStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(VoteEntryStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshVoteEntryAsyncAction = AsyncAction('_VoteDefinitionVoteEntriesViewPageStore.refreshVoteEntry');

  @override
  Future<void> refreshVoteEntry(VoteEntryStore targetStore) {
    return _$refreshVoteEntryAsyncAction.run(() => super.refreshVoteEntry(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_VoteDefinitionVoteEntriesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_VoteDefinitionVoteEntriesViewPageStoreActionController = ActionController(name: '_VoteDefinitionVoteEntriesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, VoteDefinitionVoteEntriesViewConfig pageConfig) {
    final _$actionInfo =
        _$_VoteDefinitionVoteEntriesViewPageStoreActionController.startAction(name: '_VoteDefinitionVoteEntriesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_VoteDefinitionVoteEntriesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
