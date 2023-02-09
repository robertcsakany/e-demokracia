// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.debates.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminDebatesUpdatePageStore on _AdminAdminDebatesUpdatePageStore, Store {
  Computed<int> _$consTableItemsRangeStartComputed;

  @override
  int get consTableItemsRangeStart => (_$consTableItemsRangeStartComputed ??=
          Computed<int>(() => super.consTableItemsRangeStart, name: '_AdminAdminDebatesUpdatePageStore.consTableItemsRangeStart'))
      .value;
  Computed<int> _$consTableItemsRangeEndComputed;

  @override
  int get consTableItemsRangeEnd =>
      (_$consTableItemsRangeEndComputed ??= Computed<int>(() => super.consTableItemsRangeEnd, name: '_AdminAdminDebatesUpdatePageStore.consTableItemsRangeEnd'))
          .value;
  Computed<bool> _$consTablePreviousEnableComputed;

  @override
  bool get consTablePreviousEnable => (_$consTablePreviousEnableComputed ??=
          Computed<bool>(() => super.consTablePreviousEnable, name: '_AdminAdminDebatesUpdatePageStore.consTablePreviousEnable'))
      .value;
  Computed<bool> _$consTableNextEnableComputed;

  @override
  bool get consTableNextEnable =>
      (_$consTableNextEnableComputed ??= Computed<bool>(() => super.consTableNextEnable, name: '_AdminAdminDebatesUpdatePageStore.consTableNextEnable')).value;
  Computed<List<AdminConStore>> _$consTablePagingListComputed;

  @override
  List<AdminConStore> get consTablePagingList => (_$consTablePagingListComputed ??=
          Computed<List<AdminConStore>>(() => super.consTablePagingList, name: '_AdminAdminDebatesUpdatePageStore.consTablePagingList'))
      .value;
  Computed<int> _$prosTableItemsRangeStartComputed;

  @override
  int get prosTableItemsRangeStart => (_$prosTableItemsRangeStartComputed ??=
          Computed<int>(() => super.prosTableItemsRangeStart, name: '_AdminAdminDebatesUpdatePageStore.prosTableItemsRangeStart'))
      .value;
  Computed<int> _$prosTableItemsRangeEndComputed;

  @override
  int get prosTableItemsRangeEnd =>
      (_$prosTableItemsRangeEndComputed ??= Computed<int>(() => super.prosTableItemsRangeEnd, name: '_AdminAdminDebatesUpdatePageStore.prosTableItemsRangeEnd'))
          .value;
  Computed<bool> _$prosTablePreviousEnableComputed;

  @override
  bool get prosTablePreviousEnable => (_$prosTablePreviousEnableComputed ??=
          Computed<bool>(() => super.prosTablePreviousEnable, name: '_AdminAdminDebatesUpdatePageStore.prosTablePreviousEnable'))
      .value;
  Computed<bool> _$prosTableNextEnableComputed;

  @override
  bool get prosTableNextEnable =>
      (_$prosTableNextEnableComputed ??= Computed<bool>(() => super.prosTableNextEnable, name: '_AdminAdminDebatesUpdatePageStore.prosTableNextEnable')).value;
  Computed<List<AdminProStore>> _$prosTablePagingListComputed;

  @override
  List<AdminProStore> get prosTablePagingList => (_$prosTablePagingListComputed ??=
          Computed<List<AdminProStore>>(() => super.prosTablePagingList, name: '_AdminAdminDebatesUpdatePageStore.prosTablePagingList'))
      .value;
  Computed<int> _$commentsTableItemsRangeStartComputed;

  @override
  int get commentsTableItemsRangeStart => (_$commentsTableItemsRangeStartComputed ??=
          Computed<int>(() => super.commentsTableItemsRangeStart, name: '_AdminAdminDebatesUpdatePageStore.commentsTableItemsRangeStart'))
      .value;
  Computed<int> _$commentsTableItemsRangeEndComputed;

  @override
  int get commentsTableItemsRangeEnd => (_$commentsTableItemsRangeEndComputed ??=
          Computed<int>(() => super.commentsTableItemsRangeEnd, name: '_AdminAdminDebatesUpdatePageStore.commentsTableItemsRangeEnd'))
      .value;
  Computed<bool> _$commentsTablePreviousEnableComputed;

  @override
  bool get commentsTablePreviousEnable => (_$commentsTablePreviousEnableComputed ??=
          Computed<bool>(() => super.commentsTablePreviousEnable, name: '_AdminAdminDebatesUpdatePageStore.commentsTablePreviousEnable'))
      .value;
  Computed<bool> _$commentsTableNextEnableComputed;

  @override
  bool get commentsTableNextEnable => (_$commentsTableNextEnableComputed ??=
          Computed<bool>(() => super.commentsTableNextEnable, name: '_AdminAdminDebatesUpdatePageStore.commentsTableNextEnable'))
      .value;
  Computed<List<AdminCommentStore>> _$commentsTablePagingListComputed;

  @override
  List<AdminCommentStore> get commentsTablePagingList => (_$commentsTablePagingListComputed ??=
          Computed<List<AdminCommentStore>>(() => super.commentsTablePagingList, name: '_AdminAdminDebatesUpdatePageStore.commentsTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.targetStore');

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

  final _$consTablePageNumberAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.consTablePageNumber');

  @override
  int get consTablePageNumber {
    _$consTablePageNumberAtom.reportRead();
    return super.consTablePageNumber;
  }

  @override
  set consTablePageNumber(int value) {
    _$consTablePageNumberAtom.reportWrite(value, super.consTablePageNumber, () {
      super.consTablePageNumber = value;
    });
  }

  final _$prosTablePageNumberAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.prosTablePageNumber');

  @override
  int get prosTablePageNumber {
    _$prosTablePageNumberAtom.reportRead();
    return super.prosTablePageNumber;
  }

  @override
  set prosTablePageNumber(int value) {
    _$prosTablePageNumberAtom.reportWrite(value, super.prosTablePageNumber, () {
      super.prosTablePageNumber = value;
    });
  }

  final _$commentsTablePageNumberAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.commentsTablePageNumber');

  @override
  int get commentsTablePageNumber {
    _$commentsTablePageNumberAtom.reportRead();
    return super.commentsTablePageNumber;
  }

  @override
  set commentsTablePageNumber(int value) {
    _$commentsTablePageNumberAtom.reportWrite(value, super.commentsTablePageNumber, () {
      super.commentsTablePageNumber = value;
    });
  }

  final _$commentsSortColumnIndexAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.commentsSortColumnIndex');

  @override
  int get commentsSortColumnIndex {
    _$commentsSortColumnIndexAtom.reportRead();
    return super.commentsSortColumnIndex;
  }

  @override
  set commentsSortColumnIndex(int value) {
    _$commentsSortColumnIndexAtom.reportWrite(value, super.commentsSortColumnIndex, () {
      super.commentsSortColumnIndex = value;
    });
  }

  final _$commentsSortColumnNameAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.commentsSortColumnName');

  @override
  String get commentsSortColumnName {
    _$commentsSortColumnNameAtom.reportRead();
    return super.commentsSortColumnName;
  }

  @override
  set commentsSortColumnName(String value) {
    _$commentsSortColumnNameAtom.reportWrite(value, super.commentsSortColumnName, () {
      super.commentsSortColumnName = value;
    });
  }

  final _$commentsSortAscAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.commentsSortAsc');

  @override
  bool get commentsSortAsc {
    _$commentsSortAscAtom.reportRead();
    return super.commentsSortAsc;
  }

  @override
  set commentsSortAsc(bool value) {
    _$commentsSortAscAtom.reportWrite(value, super.commentsSortAsc, () {
      super.commentsSortAsc = value;
    });
  }

  final _$commentsSortCompareAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.commentsSortCompare');

  @override
  Comparator<dynamic> get commentsSortCompare {
    _$commentsSortCompareAtom.reportRead();
    return super.commentsSortCompare;
  }

  @override
  set commentsSortCompare(Comparator<dynamic> value) {
    _$commentsSortCompareAtom.reportWrite(value, super.commentsSortCompare, () {
      super.commentsSortCompare = value;
    });
  }

  final _$debateCommentsStoreFutureAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.debateCommentsStoreFuture');

  @override
  ObservableFuture<dynamic> get debateCommentsStoreFuture {
    _$debateCommentsStoreFutureAtom.reportRead();
    return super.debateCommentsStoreFuture;
  }

  @override
  set debateCommentsStoreFuture(ObservableFuture<dynamic> value) {
    _$debateCommentsStoreFutureAtom.reportWrite(value, super.debateCommentsStoreFuture, () {
      super.debateCommentsStoreFuture = value;
    });
  }

  final _$consSortColumnIndexAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.consSortColumnIndex');

  @override
  int get consSortColumnIndex {
    _$consSortColumnIndexAtom.reportRead();
    return super.consSortColumnIndex;
  }

  @override
  set consSortColumnIndex(int value) {
    _$consSortColumnIndexAtom.reportWrite(value, super.consSortColumnIndex, () {
      super.consSortColumnIndex = value;
    });
  }

  final _$consSortColumnNameAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.consSortColumnName');

  @override
  String get consSortColumnName {
    _$consSortColumnNameAtom.reportRead();
    return super.consSortColumnName;
  }

  @override
  set consSortColumnName(String value) {
    _$consSortColumnNameAtom.reportWrite(value, super.consSortColumnName, () {
      super.consSortColumnName = value;
    });
  }

  final _$consSortAscAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.consSortAsc');

  @override
  bool get consSortAsc {
    _$consSortAscAtom.reportRead();
    return super.consSortAsc;
  }

  @override
  set consSortAsc(bool value) {
    _$consSortAscAtom.reportWrite(value, super.consSortAsc, () {
      super.consSortAsc = value;
    });
  }

  final _$consSortCompareAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.consSortCompare');

  @override
  Comparator<dynamic> get consSortCompare {
    _$consSortCompareAtom.reportRead();
    return super.consSortCompare;
  }

  @override
  set consSortCompare(Comparator<dynamic> value) {
    _$consSortCompareAtom.reportWrite(value, super.consSortCompare, () {
      super.consSortCompare = value;
    });
  }

  final _$debateConsStoreFutureAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.debateConsStoreFuture');

  @override
  ObservableFuture<dynamic> get debateConsStoreFuture {
    _$debateConsStoreFutureAtom.reportRead();
    return super.debateConsStoreFuture;
  }

  @override
  set debateConsStoreFuture(ObservableFuture<dynamic> value) {
    _$debateConsStoreFutureAtom.reportWrite(value, super.debateConsStoreFuture, () {
      super.debateConsStoreFuture = value;
    });
  }

  final _$debateCreatedByStoreFutureAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.debateCreatedByStoreFuture');

  @override
  ObservableFuture<dynamic> get debateCreatedByStoreFuture {
    _$debateCreatedByStoreFutureAtom.reportRead();
    return super.debateCreatedByStoreFuture;
  }

  @override
  set debateCreatedByStoreFuture(ObservableFuture<dynamic> value) {
    _$debateCreatedByStoreFutureAtom.reportWrite(value, super.debateCreatedByStoreFuture, () {
      super.debateCreatedByStoreFuture = value;
    });
  }

  final _$debateIssueStoreFutureAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.debateIssueStoreFuture');

  @override
  ObservableFuture<dynamic> get debateIssueStoreFuture {
    _$debateIssueStoreFutureAtom.reportRead();
    return super.debateIssueStoreFuture;
  }

  @override
  set debateIssueStoreFuture(ObservableFuture<dynamic> value) {
    _$debateIssueStoreFutureAtom.reportWrite(value, super.debateIssueStoreFuture, () {
      super.debateIssueStoreFuture = value;
    });
  }

  final _$prosSortColumnIndexAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.prosSortColumnIndex');

  @override
  int get prosSortColumnIndex {
    _$prosSortColumnIndexAtom.reportRead();
    return super.prosSortColumnIndex;
  }

  @override
  set prosSortColumnIndex(int value) {
    _$prosSortColumnIndexAtom.reportWrite(value, super.prosSortColumnIndex, () {
      super.prosSortColumnIndex = value;
    });
  }

  final _$prosSortColumnNameAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.prosSortColumnName');

  @override
  String get prosSortColumnName {
    _$prosSortColumnNameAtom.reportRead();
    return super.prosSortColumnName;
  }

  @override
  set prosSortColumnName(String value) {
    _$prosSortColumnNameAtom.reportWrite(value, super.prosSortColumnName, () {
      super.prosSortColumnName = value;
    });
  }

  final _$prosSortAscAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.prosSortAsc');

  @override
  bool get prosSortAsc {
    _$prosSortAscAtom.reportRead();
    return super.prosSortAsc;
  }

  @override
  set prosSortAsc(bool value) {
    _$prosSortAscAtom.reportWrite(value, super.prosSortAsc, () {
      super.prosSortAsc = value;
    });
  }

  final _$prosSortCompareAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.prosSortCompare');

  @override
  Comparator<dynamic> get prosSortCompare {
    _$prosSortCompareAtom.reportRead();
    return super.prosSortCompare;
  }

  @override
  set prosSortCompare(Comparator<dynamic> value) {
    _$prosSortCompareAtom.reportWrite(value, super.prosSortCompare, () {
      super.prosSortCompare = value;
    });
  }

  final _$debateProsStoreFutureAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.debateProsStoreFuture');

  @override
  ObservableFuture<dynamic> get debateProsStoreFuture {
    _$debateProsStoreFutureAtom.reportRead();
    return super.debateProsStoreFuture;
  }

  @override
  set debateProsStoreFuture(ObservableFuture<dynamic> value) {
    _$debateProsStoreFutureAtom.reportWrite(value, super.debateProsStoreFuture, () {
      super.debateProsStoreFuture = value;
    });
  }

  final _$debateVoteDefinitionStoreFutureAtom = Atom(name: '_AdminAdminDebatesUpdatePageStore.debateVoteDefinitionStoreFuture');

  @override
  ObservableFuture<dynamic> get debateVoteDefinitionStoreFuture {
    _$debateVoteDefinitionStoreFutureAtom.reportRead();
    return super.debateVoteDefinitionStoreFuture;
  }

  @override
  set debateVoteDefinitionStoreFuture(ObservableFuture<dynamic> value) {
    _$debateVoteDefinitionStoreFutureAtom.reportWrite(value, super.debateVoteDefinitionStoreFuture, () {
      super.debateVoteDefinitionStoreFuture = value;
    });
  }

  final _$refreshDebateAsyncAction = AsyncAction('_AdminAdminDebatesUpdatePageStore.refreshDebate');

  @override
  Future<void> refreshDebate(AdminDebateStore targetStore) {
    return _$refreshDebateAsyncAction.run(() => super.refreshDebate(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminAdminDebatesUpdatePageStore.validate');

  @override
  Future<AdminDebateStore> validate(AdminDebateStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminAdminDebatesUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminDebatesUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminAdminDebatesUpdatePageStoreActionController = ActionController(name: '_AdminAdminDebatesUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminAdminDebatesUpdateConfig pageConfig) {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consTableNextPage() {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.consTableNextPage');
    try {
      return super.consTableNextPage();
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consTablePreviousPage() {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.consTablePreviousPage');
    try {
      return super.consTablePreviousPage();
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosTableNextPage() {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.prosTableNextPage');
    try {
      return super.prosTableNextPage();
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosTablePreviousPage() {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.prosTablePreviousPage');
    try {
      return super.prosTablePreviousPage();
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsTableNextPage() {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.commentsTableNextPage');
    try {
      return super.commentsTableNextPage();
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsTablePreviousPage() {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.commentsTablePreviousPage');
    try {
      return super.commentsTablePreviousPage();
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDebateStore store) {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.commentsSetSort');
    try {
      return super.commentsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDebateStore store) {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.consSetSort');
    try {
      return super.consSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminDebateStore store) {
    final _$actionInfo = _$_AdminAdminDebatesUpdatePageStoreActionController.startAction(name: '_AdminAdminDebatesUpdatePageStore.prosSetSort');
    try {
      return super.prosSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminAdminDebatesUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
consTablePageNumber: ${consTablePageNumber},
prosTablePageNumber: ${prosTablePageNumber},
commentsTablePageNumber: ${commentsTablePageNumber},
commentsSortColumnIndex: ${commentsSortColumnIndex},
commentsSortColumnName: ${commentsSortColumnName},
commentsSortAsc: ${commentsSortAsc},
commentsSortCompare: ${commentsSortCompare},
debateCommentsStoreFuture: ${debateCommentsStoreFuture},
consSortColumnIndex: ${consSortColumnIndex},
consSortColumnName: ${consSortColumnName},
consSortAsc: ${consSortAsc},
consSortCompare: ${consSortCompare},
debateConsStoreFuture: ${debateConsStoreFuture},
debateCreatedByStoreFuture: ${debateCreatedByStoreFuture},
debateIssueStoreFuture: ${debateIssueStoreFuture},
prosSortColumnIndex: ${prosSortColumnIndex},
prosSortColumnName: ${prosSortColumnName},
prosSortAsc: ${prosSortAsc},
prosSortCompare: ${prosSortCompare},
debateProsStoreFuture: ${debateProsStoreFuture},
debateVoteDefinitionStoreFuture: ${debateVoteDefinitionStoreFuture},
consTableItemsRangeStart: ${consTableItemsRangeStart},
consTableItemsRangeEnd: ${consTableItemsRangeEnd},
consTablePreviousEnable: ${consTablePreviousEnable},
consTableNextEnable: ${consTableNextEnable},
consTablePagingList: ${consTablePagingList},
prosTableItemsRangeStart: ${prosTableItemsRangeStart},
prosTableItemsRangeEnd: ${prosTableItemsRangeEnd},
prosTablePreviousEnable: ${prosTablePreviousEnable},
prosTableNextEnable: ${prosTableNextEnable},
prosTablePagingList: ${prosTablePagingList},
commentsTableItemsRangeStart: ${commentsTableItemsRangeStart},
commentsTableItemsRangeEnd: ${commentsTableItemsRangeEnd},
commentsTablePreviousEnable: ${commentsTablePreviousEnable},
commentsTableNextEnable: ${commentsTableNextEnable},
commentsTablePagingList: ${commentsTablePagingList}
    ''';
  }
}
