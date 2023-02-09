// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.simple_vote.user.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SimpleVoteUserViewPageStore on _SimpleVoteUserViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_SimpleVoteUserViewPageStore.targetStore');

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

  final _$refreshUserAsyncAction = AsyncAction('_SimpleVoteUserViewPageStore.refreshUser');

  @override
  Future<void> refreshUser(UserStore targetStore) {
    return _$refreshUserAsyncAction.run(() => super.refreshUser(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_SimpleVoteUserViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_SimpleVoteUserViewPageStoreActionController = ActionController(name: '_SimpleVoteUserViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, SimpleVoteUserViewConfig pageConfig) {
    final _$actionInfo = _$_SimpleVoteUserViewPageStoreActionController.startAction(name: '_SimpleVoteUserViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_SimpleVoteUserViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
