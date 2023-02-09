// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.debates.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminDebatesTablePageStore on _AdminAdminDebatesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminAdminDebatesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminAdminDebatesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminAdminDebatesTablePageStore.previousButtonEnable'))
          .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminDebatesTablePageStore.targetStore');

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

  final _$pageMaxColAtom = Atom(name: '_AdminAdminDebatesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminAdminDebatesTablePageStore.availableFilterList');

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

  final _$debatesStoreListAtom = Atom(name: '_AdminAdminDebatesTablePageStore.debatesStoreList');

  @override
  List<AdminDebateStore> get debatesStoreList {
    _$debatesStoreListAtom.reportRead();
    return super.debatesStoreList;
  }

  @override
  set debatesStoreList(List<AdminDebateStore> value) {
    _$debatesStoreListAtom.reportWrite(value, super.debatesStoreList, () {
      super.debatesStoreList = value;
    });
  }

  final _$nextButtonEnableAtom = Atom(name: '_AdminAdminDebatesTablePageStore.nextButtonEnable');

  @override
  bool get nextButtonEnable {
    _$nextButtonEnableAtom.reportRead();
    return super.nextButtonEnable;
  }

  @override
  set nextButtonEnable(bool value) {
    _$nextButtonEnableAtom.reportWrite(value, super.nextButtonEnable, () {
      super.nextButtonEnable = value;
    });
  }

  final _$nextPageCounterAtom = Atom(name: '_AdminAdminDebatesTablePageStore.nextPageCounter');

  @override
  int get nextPageCounter {
    _$nextPageCounterAtom.reportRead();
    return super.nextPageCounter;
  }

  @override
  set nextPageCounter(int value) {
    _$nextPageCounterAtom.reportWrite(value, super.nextPageCounter, () {
      super.nextPageCounter = value;
    });
  }

  final _$debatesSortColumnIndexAtom = Atom(name: '_AdminAdminDebatesTablePageStore.debatesSortColumnIndex');

  @override
  int get debatesSortColumnIndex {
    _$debatesSortColumnIndexAtom.reportRead();
    return super.debatesSortColumnIndex;
  }

  @override
  set debatesSortColumnIndex(int value) {
    _$debatesSortColumnIndexAtom.reportWrite(value, super.debatesSortColumnIndex, () {
      super.debatesSortColumnIndex = value;
    });
  }

  final _$debatesSortColumnNameAtom = Atom(name: '_AdminAdminDebatesTablePageStore.debatesSortColumnName');

  @override
  String get debatesSortColumnName {
    _$debatesSortColumnNameAtom.reportRead();
    return super.debatesSortColumnName;
  }

  @override
  set debatesSortColumnName(String value) {
    _$debatesSortColumnNameAtom.reportWrite(value, super.debatesSortColumnName, () {
      super.debatesSortColumnName = value;
    });
  }

  final _$debatesSortAscAtom = Atom(name: '_AdminAdminDebatesTablePageStore.debatesSortAsc');

  @override
  bool get debatesSortAsc {
    _$debatesSortAscAtom.reportRead();
    return super.debatesSortAsc;
  }

  @override
  set debatesSortAsc(bool value) {
    _$debatesSortAscAtom.reportWrite(value, super.debatesSortAsc, () {
      super.debatesSortAsc = value;
    });
  }

  final _$adminDebatesStoreFutureAtom = Atom(name: '_AdminAdminDebatesTablePageStore.adminDebatesStoreFuture');

  @override
  ObservableFuture<dynamic> get adminDebatesStoreFuture {
    _$adminDebatesStoreFutureAtom.reportRead();
    return super.adminDebatesStoreFuture;
  }

  @override
  set adminDebatesStoreFuture(ObservableFuture<dynamic> value) {
    _$adminDebatesStoreFutureAtom.reportWrite(value, super.adminDebatesStoreFuture, () {
      super.adminDebatesStoreFuture = value;
    });
  }

  final _$getDebatesAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.getDebates');

  @override
  Future<List<AdminDebateStore>> getDebates({int queryLimit, bool isNext}) {
    return _$getDebatesAsyncAction.run(() => super.getDebates(queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteDebateAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.deleteDebate');

  @override
  Future<void> deleteDebate(AdminDebateStore targetStore) {
    return _$deleteDebateAsyncAction.run(() => super.deleteDebate(targetStore));
  }

  final _$updateDebateAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.updateDebate');

  @override
  Future<void> updateDebate(AdminDebateStore newTargetStore) {
    return _$updateDebateAsyncAction.run(() => super.updateDebate(newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminDebateCreateCommentAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.edemokraciaAdminDebateCreateComment');

  @override
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateCommentAsyncAction.run(() => super.edemokraciaAdminDebateCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCreateArgumentAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.edemokraciaAdminDebateCreateArgument');

  @override
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateArgumentAsyncAction.run(() => super.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCloseDebateAsyncAction = AsyncAction('_AdminAdminDebatesTablePageStore.edemokraciaAdminDebateCloseDebate');

  @override
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCloseDebateAsyncAction.run(() => super.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore));
  }

  final _$_AdminAdminDebatesTablePageStoreActionController = ActionController(name: '_AdminAdminDebatesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminAdminDebatesTablePageStoreActionController.startAction(name: '_AdminAdminDebatesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminAdminDebatesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminDebatesTablePageStoreActionController.startAction(name: '_AdminAdminDebatesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminDebatesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminAdminDebatesTablePageStoreActionController.startAction(name: '_AdminAdminDebatesTablePageStore.debatesSetSort');
    try {
      return super.debatesSetSort(context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminAdminDebatesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
debatesStoreList: ${debatesStoreList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
debatesSortColumnIndex: ${debatesSortColumnIndex},
debatesSortColumnName: ${debatesSortColumnName},
debatesSortAsc: ${debatesSortAsc},
adminDebatesStoreFuture: ${adminDebatesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
