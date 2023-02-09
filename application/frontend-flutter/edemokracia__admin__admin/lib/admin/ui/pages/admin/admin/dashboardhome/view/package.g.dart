// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.dashboardhome.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminDashboardhomeViewPageStore on _AdminAdminDashboardhomeViewPageStore, Store {
  Computed<int> _$debatesTableItemsRangeStartComputed;

  @override
  int get debatesTableItemsRangeStart => (_$debatesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.debatesTableItemsRangeStart, name: '_AdminAdminDashboardhomeViewPageStore.debatesTableItemsRangeStart'))
      .value;
  Computed<int> _$debatesTableItemsRangeEndComputed;

  @override
  int get debatesTableItemsRangeEnd => (_$debatesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.debatesTableItemsRangeEnd, name: '_AdminAdminDashboardhomeViewPageStore.debatesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$debatesTablePreviousEnableComputed;

  @override
  bool get debatesTablePreviousEnable => (_$debatesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.debatesTablePreviousEnable, name: '_AdminAdminDashboardhomeViewPageStore.debatesTablePreviousEnable'))
      .value;
  Computed<bool> _$debatesTableNextEnableComputed;

  @override
  bool get debatesTableNextEnable => (_$debatesTableNextEnableComputed ??=
          Computed<bool>(() => super.debatesTableNextEnable, name: '_AdminAdminDashboardhomeViewPageStore.debatesTableNextEnable'))
      .value;
  Computed<List<AdminDebateStore>> _$debatesTablePagingListComputed;

  @override
  List<AdminDebateStore> get debatesTablePagingList => (_$debatesTablePagingListComputed ??=
          Computed<List<AdminDebateStore>>(() => super.debatesTablePagingList, name: '_AdminAdminDashboardhomeViewPageStore.debatesTablePagingList'))
      .value;
  Computed<int> _$issuesTableItemsRangeStartComputed;

  @override
  int get issuesTableItemsRangeStart => (_$issuesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.issuesTableItemsRangeStart, name: '_AdminAdminDashboardhomeViewPageStore.issuesTableItemsRangeStart'))
      .value;
  Computed<int> _$issuesTableItemsRangeEndComputed;

  @override
  int get issuesTableItemsRangeEnd => (_$issuesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.issuesTableItemsRangeEnd, name: '_AdminAdminDashboardhomeViewPageStore.issuesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$issuesTablePreviousEnableComputed;

  @override
  bool get issuesTablePreviousEnable => (_$issuesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.issuesTablePreviousEnable, name: '_AdminAdminDashboardhomeViewPageStore.issuesTablePreviousEnable'))
      .value;
  Computed<bool> _$issuesTableNextEnableComputed;

  @override
  bool get issuesTableNextEnable => (_$issuesTableNextEnableComputed ??=
          Computed<bool>(() => super.issuesTableNextEnable, name: '_AdminAdminDashboardhomeViewPageStore.issuesTableNextEnable'))
      .value;
  Computed<List<AdminIssueStore>> _$issuesTablePagingListComputed;

  @override
  List<AdminIssueStore> get issuesTablePagingList => (_$issuesTablePagingListComputed ??=
          Computed<List<AdminIssueStore>>(() => super.issuesTablePagingList, name: '_AdminAdminDashboardhomeViewPageStore.issuesTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.targetStore');

  @override
  AdminDashboardStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminDashboardStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$debatesTablePageNumberAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.debatesTablePageNumber');

  @override
  int get debatesTablePageNumber {
    _$debatesTablePageNumberAtom.reportRead();
    return super.debatesTablePageNumber;
  }

  @override
  set debatesTablePageNumber(int value) {
    _$debatesTablePageNumberAtom.reportWrite(value, super.debatesTablePageNumber, () {
      super.debatesTablePageNumber = value;
    });
  }

  final _$issuesTablePageNumberAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.issuesTablePageNumber');

  @override
  int get issuesTablePageNumber {
    _$issuesTablePageNumberAtom.reportRead();
    return super.issuesTablePageNumber;
  }

  @override
  set issuesTablePageNumber(int value) {
    _$issuesTablePageNumberAtom.reportWrite(value, super.issuesTablePageNumber, () {
      super.issuesTablePageNumber = value;
    });
  }

  final _$debatesSortColumnIndexAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.debatesSortColumnIndex');

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

  final _$debatesSortColumnNameAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.debatesSortColumnName');

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

  final _$debatesSortAscAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.debatesSortAsc');

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

  final _$debatesSortCompareAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.debatesSortCompare');

  @override
  Comparator<dynamic> get debatesSortCompare {
    _$debatesSortCompareAtom.reportRead();
    return super.debatesSortCompare;
  }

  @override
  set debatesSortCompare(Comparator<dynamic> value) {
    _$debatesSortCompareAtom.reportWrite(value, super.debatesSortCompare, () {
      super.debatesSortCompare = value;
    });
  }

  final _$dashboardDebatesStoreFutureAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.dashboardDebatesStoreFuture');

  @override
  ObservableFuture<dynamic> get dashboardDebatesStoreFuture {
    _$dashboardDebatesStoreFutureAtom.reportRead();
    return super.dashboardDebatesStoreFuture;
  }

  @override
  set dashboardDebatesStoreFuture(ObservableFuture<dynamic> value) {
    _$dashboardDebatesStoreFutureAtom.reportWrite(value, super.dashboardDebatesStoreFuture, () {
      super.dashboardDebatesStoreFuture = value;
    });
  }

  final _$issuesSortColumnIndexAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.issuesSortColumnIndex');

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

  final _$issuesSortColumnNameAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.issuesSortColumnName');

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

  final _$issuesSortAscAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.issuesSortAsc');

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

  final _$issuesSortCompareAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.issuesSortCompare');

  @override
  Comparator<dynamic> get issuesSortCompare {
    _$issuesSortCompareAtom.reportRead();
    return super.issuesSortCompare;
  }

  @override
  set issuesSortCompare(Comparator<dynamic> value) {
    _$issuesSortCompareAtom.reportWrite(value, super.issuesSortCompare, () {
      super.issuesSortCompare = value;
    });
  }

  final _$dashboardIssuesStoreFutureAtom = Atom(name: '_AdminAdminDashboardhomeViewPageStore.dashboardIssuesStoreFuture');

  @override
  ObservableFuture<dynamic> get dashboardIssuesStoreFuture {
    _$dashboardIssuesStoreFutureAtom.reportRead();
    return super.dashboardIssuesStoreFuture;
  }

  @override
  set dashboardIssuesStoreFuture(ObservableFuture<dynamic> value) {
    _$dashboardIssuesStoreFutureAtom.reportWrite(value, super.dashboardIssuesStoreFuture, () {
      super.dashboardIssuesStoreFuture = value;
    });
  }

  final _$refreshDashboardAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.refreshDashboard');

  @override
  Future<void> refreshDashboard(AdminDashboardStore targetStore) {
    return _$refreshDashboardAsyncAction.run(() => super.refreshDashboard(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminDebateCreateCommentAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminDebateCreateComment');

  @override
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateCommentAsyncAction.run(() => super.edemokraciaAdminDebateCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminIssueCreateDebateAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminIssueCreateDebate');

  @override
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) {
    return _$edemokraciaAdminIssueCreateDebateAsyncAction.run(() => super.edemokraciaAdminIssueCreateDebate(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCreateArgumentAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminDebateCreateArgument');

  @override
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateArgumentAsyncAction.run(() => super.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDashboardCreateUserAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminDashboardCreateUser');

  @override
  Future<AdminUserStore> edemokraciaAdminDashboardCreateUser(AdminCreateUserInputStore targetStore) {
    return _$edemokraciaAdminDashboardCreateUserAsyncAction.run(() => super.edemokraciaAdminDashboardCreateUser(targetStore));
  }

  final _$edemokraciaAdminDashboardCreateIssueAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminDashboardCreateIssue');

  @override
  Future<AdminIssueStore> edemokraciaAdminDashboardCreateIssue(AdminCreateIssueInputStore targetStore) {
    return _$edemokraciaAdminDashboardCreateIssueAsyncAction.run(() => super.edemokraciaAdminDashboardCreateIssue(targetStore));
  }

  final _$edemokraciaAdminIssueCreateCommentAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminIssueCreateComment');

  @override
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) {
    return _$edemokraciaAdminIssueCreateCommentAsyncAction.run(() => super.edemokraciaAdminIssueCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCloseDebateAsyncAction = AsyncAction('_AdminAdminDashboardhomeViewPageStore.edemokraciaAdminDebateCloseDebate');

  @override
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCloseDebateAsyncAction.run(() => super.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore));
  }

  final _$_AdminAdminDashboardhomeViewPageStoreActionController = ActionController(name: '_AdminAdminDashboardhomeViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminAdminDashboardhomeViewConfig pageConfig) {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesTableNextPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.debatesTableNextPage');
    try {
      return super.debatesTableNextPage();
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesTablePreviousPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.debatesTablePreviousPage');
    try {
      return super.debatesTablePreviousPage();
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesTableNextPage() {
    final _$actionInfo = _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.issuesTableNextPage');
    try {
      return super.issuesTableNextPage();
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesTablePreviousPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.issuesTablePreviousPage');
    try {
      return super.issuesTablePreviousPage();
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDashboardStore store) {
    final _$actionInfo = _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.debatesSetSort');
    try {
      return super.debatesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDashboardStore store) {
    final _$actionInfo = _$_AdminAdminDashboardhomeViewPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeViewPageStore.issuesSetSort');
    try {
      return super.issuesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDashboardhomeViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
debatesTablePageNumber: ${debatesTablePageNumber},
issuesTablePageNumber: ${issuesTablePageNumber},
debatesSortColumnIndex: ${debatesSortColumnIndex},
debatesSortColumnName: ${debatesSortColumnName},
debatesSortAsc: ${debatesSortAsc},
debatesSortCompare: ${debatesSortCompare},
dashboardDebatesStoreFuture: ${dashboardDebatesStoreFuture},
issuesSortColumnIndex: ${issuesSortColumnIndex},
issuesSortColumnName: ${issuesSortColumnName},
issuesSortAsc: ${issuesSortAsc},
issuesSortCompare: ${issuesSortCompare},
dashboardIssuesStoreFuture: ${dashboardIssuesStoreFuture},
debatesTableItemsRangeStart: ${debatesTableItemsRangeStart},
debatesTableItemsRangeEnd: ${debatesTableItemsRangeEnd},
debatesTablePreviousEnable: ${debatesTablePreviousEnable},
debatesTableNextEnable: ${debatesTableNextEnable},
debatesTablePagingList: ${debatesTablePagingList},
issuesTableItemsRangeStart: ${issuesTableItemsRangeStart},
issuesTableItemsRangeEnd: ${issuesTableItemsRangeEnd},
issuesTablePreviousEnable: ${issuesTablePreviousEnable},
issuesTableNextEnable: ${issuesTableNextEnable},
issuesTablePagingList: ${issuesTablePagingList}
    ''';
  }
}
