// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.vote_definition.debate.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminVoteDefinitionDebateTablePageStore on _AdminVoteDefinitionDebateTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminVoteDefinitionDebateTablePageStore.getPlusRowSize')).value;

  final _$targetStoreAtom = Atom(name: '_AdminVoteDefinitionDebateTablePageStore.targetStore');

  @override
  AdminDebateStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminDebateStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$pageMaxColAtom = Atom(name: '_AdminVoteDefinitionDebateTablePageStore.pageMaxCol');

  @override
  int get pageMaxCol {
    _$pageMaxColAtom.reportRead();
    return super.pageMaxCol;
  }

  @override
  set pageMaxCol(int value) {
    _$pageMaxColAtom.reportWrite(value, super.pageMaxCol, () {
      super.pageMaxCol = value;
    });
  }

  final _$availableFilterListAtom = Atom(name: '_AdminVoteDefinitionDebateTablePageStore.availableFilterList');

  @override
  ObservableList<FilterStore> get availableFilterList {
    _$availableFilterListAtom.reportRead();
    return super.availableFilterList;
  }

  @override
  set availableFilterList(ObservableList<FilterStore> value) {
    _$availableFilterListAtom.reportWrite(value, super.availableFilterList, () {
      super.availableFilterList = value;
    });
  }

  final _$voteDefinitionDebateStoreFutureAtom = Atom(name: '_AdminVoteDefinitionDebateTablePageStore.voteDefinitionDebateStoreFuture');

  @override
  ObservableFuture<dynamic> get voteDefinitionDebateStoreFuture {
    _$voteDefinitionDebateStoreFutureAtom.reportRead();
    return super.voteDefinitionDebateStoreFuture;
  }

  @override
  set voteDefinitionDebateStoreFuture(ObservableFuture<dynamic> value) {
    _$voteDefinitionDebateStoreFutureAtom.reportWrite(value, super.voteDefinitionDebateStoreFuture, () {
      super.voteDefinitionDebateStoreFuture = value;
    });
  }

  final _$getDebateAsyncAction = AsyncAction('_AdminVoteDefinitionDebateTablePageStore.getDebate');

  @override
  Future<AdminDebateStore> getDebate(AdminVoteDefinitionStore ownerStore, {int queryLimit, bool isNext}) {
    return _$getDebateAsyncAction.run(() => super.getDebate(ownerStore, queryLimit: queryLimit, isNext: isNext));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminVoteDefinitionDebateTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminDebateCreateCommentAsyncAction = AsyncAction('_AdminVoteDefinitionDebateTablePageStore.edemokraciaAdminDebateCreateComment');

  @override
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateCommentAsyncAction.run(() => super.edemokraciaAdminDebateCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCreateArgumentAsyncAction = AsyncAction('_AdminVoteDefinitionDebateTablePageStore.edemokraciaAdminDebateCreateArgument');

  @override
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateArgumentAsyncAction.run(() => super.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCloseDebateAsyncAction = AsyncAction('_AdminVoteDefinitionDebateTablePageStore.edemokraciaAdminDebateCloseDebate');

  @override
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCloseDebateAsyncAction.run(() => super.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore));
  }

  final _$_AdminVoteDefinitionDebateTablePageStoreActionController = ActionController(name: '_AdminVoteDefinitionDebateTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminVoteDefinitionDebateTablePageStoreActionController.startAction(name: '_AdminVoteDefinitionDebateTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminVoteDefinitionDebateTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminVoteDefinitionDebateTablePageStoreActionController.startAction(name: '_AdminVoteDefinitionDebateTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminVoteDefinitionDebateTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
voteDefinitionDebateStoreFuture: ${voteDefinitionDebateStoreFuture},
getPlusRowSize: ${getPlusRowSize}
    ''';
  }
}
