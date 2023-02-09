// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.con.votes.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConVotesViewPageStore on _ConVotesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_ConVotesViewPageStore.targetStore');

  @override
  SimpleVoteStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(SimpleVoteStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_ConVotesViewPageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(SimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_ConVotesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_ConVotesViewPageStoreActionController = ActionController(name: '_ConVotesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, ConVotesViewConfig pageConfig) {
    final _$actionInfo = _$_ConVotesViewPageStoreActionController.startAction(name: '_ConVotesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_ConVotesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
