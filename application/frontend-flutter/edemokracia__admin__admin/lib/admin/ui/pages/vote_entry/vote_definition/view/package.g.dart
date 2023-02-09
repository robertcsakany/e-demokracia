// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.vote_entry.vote_definition.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VoteEntryVoteDefinitionViewPageStore on _VoteEntryVoteDefinitionViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_VoteEntryVoteDefinitionViewPageStore.targetStore');

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

  final _$refreshVoteDefinitionAsyncAction = AsyncAction('_VoteEntryVoteDefinitionViewPageStore.refreshVoteDefinition');

  @override
  Future<void> refreshVoteDefinition(VoteDefinitionStore targetStore) {
    return _$refreshVoteDefinitionAsyncAction.run(() => super.refreshVoteDefinition(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_VoteEntryVoteDefinitionViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_VoteEntryVoteDefinitionViewPageStoreActionController = ActionController(name: '_VoteEntryVoteDefinitionViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, VoteEntryVoteDefinitionViewConfig pageConfig) {
    final _$actionInfo =
        _$_VoteEntryVoteDefinitionViewPageStoreActionController.startAction(name: '_VoteEntryVoteDefinitionViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_VoteEntryVoteDefinitionViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
