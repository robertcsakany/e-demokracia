// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.dashboardhome.dashboard;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminDashboardhomeDashboardPageStore on _AdminAdminDashboardhomeDashboardPageStore, Store {
  Computed<int> _$debatesTableItemsRangeStartComputed;

  @override
  int get debatesTableItemsRangeStart => (_$debatesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.debatesTableItemsRangeStart, name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTableItemsRangeStart'))
      .value;
  Computed<int> _$debatesTableItemsRangeEndComputed;

  @override
  int get debatesTableItemsRangeEnd => (_$debatesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.debatesTableItemsRangeEnd, name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$debatesTablePreviousEnableComputed;

  @override
  bool get debatesTablePreviousEnable => (_$debatesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.debatesTablePreviousEnable, name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTablePreviousEnable'))
      .value;
  Computed<bool> _$debatesTableNextEnableComputed;

  @override
  bool get debatesTableNextEnable => (_$debatesTableNextEnableComputed ??=
          Computed<bool>(() => super.debatesTableNextEnable, name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTableNextEnable'))
      .value;
  Computed<List<AdminDebateStore>> _$debatesTablePagingListComputed;

  @override
  List<AdminDebateStore> get debatesTablePagingList => (_$debatesTablePagingListComputed ??=
          Computed<List<AdminDebateStore>>(() => super.debatesTablePagingList, name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTablePagingList'))
      .value;
  Computed<int> _$issuesTableItemsRangeStartComputed;

  @override
  int get issuesTableItemsRangeStart => (_$issuesTableItemsRangeStartComputed ??=
          Computed<int>(() => super.issuesTableItemsRangeStart, name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTableItemsRangeStart'))
      .value;
  Computed<int> _$issuesTableItemsRangeEndComputed;

  @override
  int get issuesTableItemsRangeEnd => (_$issuesTableItemsRangeEndComputed ??=
          Computed<int>(() => super.issuesTableItemsRangeEnd, name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTableItemsRangeEnd'))
      .value;
  Computed<bool> _$issuesTablePreviousEnableComputed;

  @override
  bool get issuesTablePreviousEnable => (_$issuesTablePreviousEnableComputed ??=
          Computed<bool>(() => super.issuesTablePreviousEnable, name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTablePreviousEnable'))
      .value;
  Computed<bool> _$issuesTableNextEnableComputed;

  @override
  bool get issuesTableNextEnable => (_$issuesTableNextEnableComputed ??=
          Computed<bool>(() => super.issuesTableNextEnable, name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTableNextEnable'))
      .value;
  Computed<List<AdminIssueStore>> _$issuesTablePagingListComputed;

  @override
  List<AdminIssueStore> get issuesTablePagingList => (_$issuesTablePagingListComputed ??=
          Computed<List<AdminIssueStore>>(() => super.issuesTablePagingList, name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.targetStore');

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

  final _$dashboardhomeStoreFutureAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.dashboardhomeStoreFuture');

  @override
  ObservableFuture<dynamic> get dashboardhomeStoreFuture {
    _$dashboardhomeStoreFutureAtom.reportRead();
    return super.dashboardhomeStoreFuture;
  }

  @override
  set dashboardhomeStoreFuture(ObservableFuture<dynamic> value) {
    _$dashboardhomeStoreFutureAtom.reportWrite(value, super.dashboardhomeStoreFuture, () {
      super.dashboardhomeStoreFuture = value;
    });
  }

  final _$getterStatusAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.getterStatus');

  @override
  FutureStatus get getterStatus {
    _$getterStatusAtom.reportRead();
    return super.getterStatus;
  }

  @override
  set getterStatus(FutureStatus value) {
    _$getterStatusAtom.reportWrite(value, super.getterStatus, () {
      super.getterStatus = value;
    });
  }

  final _$debatesTablePageNumberAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTablePageNumber');

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

  final _$issuesTablePageNumberAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTablePageNumber');

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

  final _$debatesSortColumnIndexAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesSortColumnIndex');

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

  final _$debatesSortColumnNameAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesSortColumnName');

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

  final _$debatesSortAscAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesSortAsc');

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

  final _$debatesSortCompareAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesSortCompare');

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

  final _$dashboardDebatesStoreFutureAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.dashboardDebatesStoreFuture');

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

  final _$issuesSortColumnIndexAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesSortColumnIndex');

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

  final _$issuesSortColumnNameAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesSortColumnName');

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

  final _$issuesSortAscAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesSortAsc');

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

  final _$issuesSortCompareAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesSortCompare');

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

  final _$dashboardIssuesStoreFutureAtom = Atom(name: '_AdminAdminDashboardhomeDashboardPageStore.dashboardIssuesStoreFuture');

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

  final _$getDashboardhomeAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.getDashboardhome');

  @override
  Future<AdminDashboardStore> getDashboardhome() {
    return _$getDashboardhomeAsyncAction.run(() => super.getDashboardhome());
  }

  final _$getSingleAssociationsForDashboardViewAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.getSingleAssociationsForDashboardView');

  @override
  Future<void> getSingleAssociationsForDashboardView(AdminDashboardStore targetStore) {
    return _$getSingleAssociationsForDashboardViewAsyncAction.run(() => super.getSingleAssociationsForDashboardView(targetStore));
  }

  final _$refreshDashboardAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.refreshDashboard');

  @override
  Future<void> refreshDashboard(AdminDashboardStore targetStore) {
    return _$refreshDashboardAsyncAction.run(() => super.refreshDashboard(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$edemokraciaAdminDebateCreateCommentAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminDebateCreateComment');

  @override
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateCommentAsyncAction.run(() => super.edemokraciaAdminDebateCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminIssueCreateDebateAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminIssueCreateDebate');

  @override
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) {
    return _$edemokraciaAdminIssueCreateDebateAsyncAction.run(() => super.edemokraciaAdminIssueCreateDebate(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCreateArgumentAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminDebateCreateArgument');

  @override
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCreateArgumentAsyncAction.run(() => super.edemokraciaAdminDebateCreateArgument(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDashboardCreateUserAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminDashboardCreateUser');

  @override
  Future<AdminUserStore> edemokraciaAdminDashboardCreateUser(AdminCreateUserInputStore targetStore) {
    return _$edemokraciaAdminDashboardCreateUserAsyncAction.run(() => super.edemokraciaAdminDashboardCreateUser(targetStore));
  }

  final _$edemokraciaAdminDashboardCreateIssueAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminDashboardCreateIssue');

  @override
  Future<AdminIssueStore> edemokraciaAdminDashboardCreateIssue(AdminCreateIssueInputStore targetStore) {
    return _$edemokraciaAdminDashboardCreateIssueAsyncAction.run(() => super.edemokraciaAdminDashboardCreateIssue(targetStore));
  }

  final _$edemokraciaAdminIssueCreateCommentAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminIssueCreateComment');

  @override
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) {
    return _$edemokraciaAdminIssueCreateCommentAsyncAction.run(() => super.edemokraciaAdminIssueCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminDebateCloseDebateAsyncAction = AsyncAction('_AdminAdminDashboardhomeDashboardPageStore.edemokraciaAdminDebateCloseDebate');

  @override
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) {
    return _$edemokraciaAdminDebateCloseDebateAsyncAction.run(() => super.edemokraciaAdminDebateCloseDebate(targetStore, ownerStore));
  }

  final _$_AdminAdminDashboardhomeDashboardPageStoreActionController = ActionController(name: '_AdminAdminDashboardhomeDashboardPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminAdminDashboardhomeDashboardConfig pageConfig) {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getterStatusSetFulfilled() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.getterStatusSetFulfilled');
    try {
      return super.getterStatusSetFulfilled();
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getterStatusSetRejected() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.getterStatusSetRejected');
    try {
      return super.getterStatusSetRejected();
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesTableNextPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTableNextPage');
    try {
      return super.debatesTableNextPage();
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesTablePreviousPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesTablePreviousPage');
    try {
      return super.debatesTablePreviousPage();
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesTableNextPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTableNextPage');
    try {
      return super.issuesTableNextPage();
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesTablePreviousPage() {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesTablePreviousPage');
    try {
      return super.issuesTablePreviousPage();
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debatesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDashboardStore store) {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.debatesSetSort');
    try {
      return super.debatesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void issuesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDashboardStore store) {
    final _$actionInfo =
        _$_AdminAdminDashboardhomeDashboardPageStoreActionController.startAction(name: '_AdminAdminDashboardhomeDashboardPageStore.issuesSetSort');
    try {
      return super.issuesSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDashboardhomeDashboardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
dashboardhomeStoreFuture: ${dashboardhomeStoreFuture},
getterStatus: ${getterStatus},
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
