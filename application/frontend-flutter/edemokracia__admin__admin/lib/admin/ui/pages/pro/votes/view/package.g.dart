// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.pro.votes.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProVotesViewPageStore on _ProVotesViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_ProVotesViewPageStore.targetStore');

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

  final _$refreshSimpleVoteAsyncAction = AsyncAction('_ProVotesViewPageStore.refreshSimpleVote');

  @override
  Future<void> refreshSimpleVote(SimpleVoteStore targetStore) {
    return _$refreshSimpleVoteAsyncAction.run(() => super.refreshSimpleVote(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_ProVotesViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_ProVotesViewPageStoreActionController = ActionController(name: '_ProVotesViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, ProVotesViewConfig pageConfig) {
    final _$actionInfo = _$_ProVotesViewPageStoreActionController.startAction(name: '_ProVotesViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_ProVotesViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
