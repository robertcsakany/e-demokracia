// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.issues.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminIssuesTablePageStore on _AdminAdminIssuesTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminAdminIssuesTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminAdminIssuesTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminAdminIssuesTablePageStore.previousButtonEnable')).value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminIssuesTablePageStore.targetStore');

  @override
  AdminIssueStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminIssueStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$pageMaxColAtom = Atom(name: '_AdminAdminIssuesTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminAdminIssuesTablePageStore.availableFilterList');

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

  final _$issuesStoreListAtom = Atom(name: '_AdminAdminIssuesTablePageStore.issuesStoreList');

  @override
  List<AdminIssueStore> get issuesStoreList {
    _$issuesStoreListAtom.reportRead();
    return super.issuesStoreList;
  }

  @override
  set issuesStoreList(List<AdminIssueStore> value) {
    _$issuesStoreListAtom.reportWrite(value, super.issuesStoreList, () {
      super.issuesStoreList = value;
    });
  }

  final _$nextButtonEnableAtom = Atom(name: '_AdminAdminIssuesTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminAdminIssuesTablePageStore.nextPageCounter');

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

  final _$issuesSortColumnIndexAtom = Atom(name: '_AdminAdminIssuesTablePageStore.issuesSortColumnIndex');

  @override
  int get issuesSortColumnIndex {
    _$issuesSortColumnIndexAtom.reportRead();
    return super.issuesSortColumnIndex;
  }

  @override
  set issuesSortColumnIndex(int value) {
    _$issuesSortColumnIndexAtom.reportWrite(value, super.issuesSortColumnIndex, () {
      super.issuesSortColumnIndex = value;
    });
  }

  final _$issuesSortColumnNameAtom = Atom(name: '_AdminAdminIssuesTablePageStore.issuesSortColumnName');

  @override
  String get issuesSortColumnName {
    _$issuesSortColumnNameAtom.reportRead();
    return super.issuesSortColumnName;
  }

  @override
  set issuesSortColumnName(String value) {
    _$issuesSortColumnNameAtom.reportWrite(value, super.issuesSortColumnName, () {
      super.issuesSortColumnName = value;
    });
  }

  final _$issuesSortAscAtom = Atom(name: '_AdminAdminIssuesTablePageStore.issuesSortAsc');

  @override
  bool get issuesSortAsc {
    _$issuesSortAscAtom.reportRead();
    return super.issuesSortAsc;
  }

  @override
  set issuesSortAsc(bool value) {
    _$issuesSortAscAtom.reportWrite(value, super.issuesSortAsc, () {
      super.issuesSortAsc = value;
    });
  }

  final _$adminIssuesStoreFutureAtom = Atom(name: '_AdminAdminIssuesTablePageStore.adminIssuesStoreFuture');

  @override
  ObservableFuture<dynamic> get adminIssuesStoreFuture {
    _$adminIssuesStoreFutureAtom.reportRead();
    return super.adminIssuesStoreFuture;
  }

  @override
  set adminIssuesStoreFuture(ObservableFuture<dynamic> value) {
    _$adminIssuesStoreFutureAtom.reportWrite(value, super.adminIssuesStoreFuture, () {
      super.adminIssuesStoreFuture = value;
    });
  }

  final _$getIssuesAsyncAction = AsyncAction('_AdminAdminIssuesTablePageStore.getIssues');

  @override
  Future<List<AdminIssueStore>> getIssues({int queryLimit, bool isNext}) {
    return _$getIssuesAsyncAction.run(() => super.getIssues(queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteIssueAsyncAction = AsyncAction('_AdminAdminIssuesTablePageStore.deleteIssue');

  @override
  Future<void> deleteIssue(AdminIssueStore targetStore) {
    return _$deleteIssueAsyncAction.run(() => super.deleteIssue(targetStore));
  }

  final _$updateIssueAsyncAction = AsyncAction('_AdminAdminIssuesTablePageStore.updateIssue');

  @override
  Future<void> updateIssue(AdminIssueStore newTargetStore) {
    return _$updateIssueAsyncAction.run(() => super.updateIssue(newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminIssuesTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminIssueCreateDebateAsyncAction = AsyncAction('_AdminAdminIssuesTablePageStore.edemokraciaAdminIssueCreateDebate');

  @override
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) {
    return _$edemokraciaAdminIssueCreateDebateAsyncAction.run(() => super.edemokraciaAdminIssueCreateDebate(targetStore, ownerStore));
  }

  final _$edemokraciaAdminIssueCreateCommentAsyncAction = AsyncAction('_AdminAdminIssuesTablePageStore.edemokraciaAdminIssueCreateComment');

  @override
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) {
    return _$edemokraciaAdminIssueCreateCommentAsyncAction.run(() => super.edemokraciaAdminIssueCreateComment(targetStore, ownerStore));
  }

  final _$_AdminAdminIssuesTablePageStoreActionController = ActionController(name: '_AdminAdminIssuesTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminAdminIssuesTablePageStoreActionController.startAction(name: '_AdminAdminIssuesTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminAdminIssuesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminIssuesTablePageStoreActionController.startAction(name: '_AdminAdminIssuesTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminIssuesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminAdminIssuesTablePageStoreActionController.startAction(name: '_AdminAdminIssuesTablePageStore.issuesSetSort');
    try {
      return super.issuesSetSort(context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminAdminIssuesTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
issuesStoreList: ${issuesStoreList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
issuesSortColumnIndex: ${issuesSortColumnIndex},
issuesSortColumnName: ${issuesSortColumnName},
issuesSortAsc: ${issuesSortAsc},
adminIssuesStoreFuture: ${adminIssuesStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
