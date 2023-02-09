// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.con.cons.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminConConsViewPageStore on _AdminConConsViewPageStore, Store {
  Computed<int> _$consTableItemsRangeStartComputed;

  @override
  int get consTableItemsRangeStart =>
      (_$consTableItemsRangeStartComputed ??= Computed<int>(() => super.consTableItemsRangeStart, name: '_AdminConConsViewPageStore.consTableItemsRangeStart'))
          .value;
  Computed<int> _$consTableItemsRangeEndComputed;

  @override
  int get consTableItemsRangeEnd =>
      (_$consTableItemsRangeEndComputed ??= Computed<int>(() => super.consTableItemsRangeEnd, name: '_AdminConConsViewPageStore.consTableItemsRangeEnd')).value;
  Computed<bool> _$consTablePreviousEnableComputed;

  @override
  bool get consTablePreviousEnable =>
      (_$consTablePreviousEnableComputed ??= Computed<bool>(() => super.consTablePreviousEnable, name: '_AdminConConsViewPageStore.consTablePreviousEnable'))
          .value;
  Computed<bool> _$consTableNextEnableComputed;

  @override
  bool get consTableNextEnable =>
      (_$consTableNextEnableComputed ??= Computed<bool>(() => super.consTableNextEnable, name: '_AdminConConsViewPageStore.consTableNextEnable')).value;
  Computed<List<AdminConStore>> _$consTablePagingListComputed;

  @override
  List<AdminConStore> get consTablePagingList =>
      (_$consTablePagingListComputed ??= Computed<List<AdminConStore>>(() => super.consTablePagingList, name: '_AdminConConsViewPageStore.consTablePagingList'))
          .value;
  Computed<int> _$prosTableItemsRangeStartComputed;

  @override
  int get prosTableItemsRangeStart =>
      (_$prosTableItemsRangeStartComputed ??= Computed<int>(() => super.prosTableItemsRangeStart, name: '_AdminConConsViewPageStore.prosTableItemsRangeStart'))
          .value;
  Computed<int> _$prosTableItemsRangeEndComputed;

  @override
  int get prosTableItemsRangeEnd =>
      (_$prosTableItemsRangeEndComputed ??= Computed<int>(() => super.prosTableItemsRangeEnd, name: '_AdminConConsViewPageStore.prosTableItemsRangeEnd')).value;
  Computed<bool> _$prosTablePreviousEnableComputed;

  @override
  bool get prosTablePreviousEnable =>
      (_$prosTablePreviousEnableComputed ??= Computed<bool>(() => super.prosTablePreviousEnable, name: '_AdminConConsViewPageStore.prosTablePreviousEnable'))
          .value;
  Computed<bool> _$prosTableNextEnableComputed;

  @override
  bool get prosTableNextEnable =>
      (_$prosTableNextEnableComputed ??= Computed<bool>(() => super.prosTableNextEnable, name: '_AdminConConsViewPageStore.prosTableNextEnable')).value;
  Computed<List<AdminProStore>> _$prosTablePagingListComputed;

  @override
  List<AdminProStore> get prosTablePagingList =>
      (_$prosTablePagingListComputed ??= Computed<List<AdminProStore>>(() => super.prosTablePagingList, name: '_AdminConConsViewPageStore.prosTablePagingList'))
          .value;
  Computed<int> _$commentsTableItemsRangeStartComputed;

  @override
  int get commentsTableItemsRangeStart => (_$commentsTableItemsRangeStartComputed ??=
          Computed<int>(() => super.commentsTableItemsRangeStart, name: '_AdminConConsViewPageStore.commentsTableItemsRangeStart'))
      .value;
  Computed<int> _$commentsTableItemsRangeEndComputed;

  @override
  int get commentsTableItemsRangeEnd => (_$commentsTableItemsRangeEndComputed ??=
          Computed<int>(() => super.commentsTableItemsRangeEnd, name: '_AdminConConsViewPageStore.commentsTableItemsRangeEnd'))
      .value;
  Computed<bool> _$commentsTablePreviousEnableComputed;

  @override
  bool get commentsTablePreviousEnable => (_$commentsTablePreviousEnableComputed ??=
          Computed<bool>(() => super.commentsTablePreviousEnable, name: '_AdminConConsViewPageStore.commentsTablePreviousEnable'))
      .value;
  Computed<bool> _$commentsTableNextEnableComputed;

  @override
  bool get commentsTableNextEnable =>
      (_$commentsTableNextEnableComputed ??= Computed<bool>(() => super.commentsTableNextEnable, name: '_AdminConConsViewPageStore.commentsTableNextEnable'))
          .value;
  Computed<List<AdminCommentStore>> _$commentsTablePagingListComputed;

  @override
  List<AdminCommentStore> get commentsTablePagingList => (_$commentsTablePagingListComputed ??=
          Computed<List<AdminCommentStore>>(() => super.commentsTablePagingList, name: '_AdminConConsViewPageStore.commentsTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminConConsViewPageStore.targetStore');

  @override
  AdminConStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminConStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$consTablePageNumberAtom = Atom(name: '_AdminConConsViewPageStore.consTablePageNumber');

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

  final _$prosTablePageNumberAtom = Atom(name: '_AdminConConsViewPageStore.prosTablePageNumber');

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

  final _$commentsTablePageNumberAtom = Atom(name: '_AdminConConsViewPageStore.commentsTablePageNumber');

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

  final _$commentsSortColumnIndexAtom = Atom(name: '_AdminConConsViewPageStore.commentsSortColumnIndex');

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

  final _$commentsSortColumnNameAtom = Atom(name: '_AdminConConsViewPageStore.commentsSortColumnName');

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

  final _$commentsSortAscAtom = Atom(name: '_AdminConConsViewPageStore.commentsSortAsc');

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

  final _$commentsSortCompareAtom = Atom(name: '_AdminConConsViewPageStore.commentsSortCompare');

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

  final _$conCommentsStoreFutureAtom = Atom(name: '_AdminConConsViewPageStore.conCommentsStoreFuture');

  @override
  ObservableFuture<dynamic> get conCommentsStoreFuture {
    _$conCommentsStoreFutureAtom.reportRead();
    return super.conCommentsStoreFuture;
  }

  @override
  set conCommentsStoreFuture(ObservableFuture<dynamic> value) {
    _$conCommentsStoreFutureAtom.reportWrite(value, super.conCommentsStoreFuture, () {
      super.conCommentsStoreFuture = value;
    });
  }

  final _$consSortColumnIndexAtom = Atom(name: '_AdminConConsViewPageStore.consSortColumnIndex');

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

  final _$consSortColumnNameAtom = Atom(name: '_AdminConConsViewPageStore.consSortColumnName');

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

  final _$consSortAscAtom = Atom(name: '_AdminConConsViewPageStore.consSortAsc');

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

  final _$consSortCompareAtom = Atom(name: '_AdminConConsViewPageStore.consSortCompare');

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

  final _$conConsStoreFutureAtom = Atom(name: '_AdminConConsViewPageStore.conConsStoreFuture');

  @override
  ObservableFuture<dynamic> get conConsStoreFuture {
    _$conConsStoreFutureAtom.reportRead();
    return super.conConsStoreFuture;
  }

  @override
  set conConsStoreFuture(ObservableFuture<dynamic> value) {
    _$conConsStoreFutureAtom.reportWrite(value, super.conConsStoreFuture, () {
      super.conConsStoreFuture = value;
    });
  }

  final _$conCreatedByStoreFutureAtom = Atom(name: '_AdminConConsViewPageStore.conCreatedByStoreFuture');

  @override
  ObservableFuture<dynamic> get conCreatedByStoreFuture {
    _$conCreatedByStoreFutureAtom.reportRead();
    return super.conCreatedByStoreFuture;
  }

  @override
  set conCreatedByStoreFuture(ObservableFuture<dynamic> value) {
    _$conCreatedByStoreFutureAtom.reportWrite(value, super.conCreatedByStoreFuture, () {
      super.conCreatedByStoreFuture = value;
    });
  }

  final _$prosSortColumnIndexAtom = Atom(name: '_AdminConConsViewPageStore.prosSortColumnIndex');

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

  final _$prosSortColumnNameAtom = Atom(name: '_AdminConConsViewPageStore.prosSortColumnName');

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

  final _$prosSortAscAtom = Atom(name: '_AdminConConsViewPageStore.prosSortAsc');

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

  final _$prosSortCompareAtom = Atom(name: '_AdminConConsViewPageStore.prosSortCompare');

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

  final _$conProsStoreFutureAtom = Atom(name: '_AdminConConsViewPageStore.conProsStoreFuture');

  @override
  ObservableFuture<dynamic> get conProsStoreFuture {
    _$conProsStoreFutureAtom.reportRead();
    return super.conProsStoreFuture;
  }

  @override
  set conProsStoreFuture(ObservableFuture<dynamic> value) {
    _$conProsStoreFutureAtom.reportWrite(value, super.conProsStoreFuture, () {
      super.conProsStoreFuture = value;
    });
  }

  final _$refreshConAsyncAction = AsyncAction('_AdminConConsViewPageStore.refreshCon');

  @override
  Future<void> refreshCon(AdminConStore targetStore) {
    return _$refreshConAsyncAction.run(() => super.refreshCon(targetStore));
  }

  final _$updateConAsyncAction = AsyncAction('_AdminConConsViewPageStore.updateCon');

  @override
  Future<void> updateCon(AdminConStore newTargetStore, AdminConStore oldTargetStore) {
    return _$updateConAsyncAction.run(() => super.updateCon(newTargetStore, oldTargetStore));
  }

  final _$deleteConAsyncAction = AsyncAction('_AdminConConsViewPageStore.deleteCon');

  @override
  Future<void> deleteCon(AdminConStore targetStore) {
    return _$deleteConAsyncAction.run(() => super.deleteCon(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminConConsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$deleteConsConAsyncAction = AsyncAction('_AdminConConsViewPageStore.deleteConsCon');

  @override
  Future<void> deleteConsCon(AdminConStore targetStore, AdminConStore ownerStore) {
    return _$deleteConsConAsyncAction.run(() => super.deleteConsCon(targetStore, ownerStore));
  }

  final _$updateConsConAsyncAction = AsyncAction('_AdminConConsViewPageStore.updateConsCon');

  @override
  Future<void> updateConsCon(AdminConStore targetStore, AdminConStore ownerStore) {
    return _$updateConsConAsyncAction.run(() => super.updateConsCon(targetStore, ownerStore));
  }

  final _$deleteProsProAsyncAction = AsyncAction('_AdminConConsViewPageStore.deleteProsPro');

  @override
  Future<void> deleteProsPro(AdminProStore targetStore, AdminConStore ownerStore) {
    return _$deleteProsProAsyncAction.run(() => super.deleteProsPro(targetStore, ownerStore));
  }

  final _$updateProsProAsyncAction = AsyncAction('_AdminConConsViewPageStore.updateProsPro');

  @override
  Future<void> updateProsPro(AdminProStore targetStore, AdminConStore ownerStore) {
    return _$updateProsProAsyncAction.run(() => super.updateProsPro(targetStore, ownerStore));
  }

  final _$edemokraciaAdminCommentVoteDownAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminCommentVoteDown');

  @override
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteDownAsyncAction.run(() => super.edemokraciaAdminCommentVoteDown(ownerStore));
  }

  final _$edemokraciaAdminProCreateSubArgumentAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminProCreateSubArgument');

  @override
  Future<void> edemokraciaAdminProCreateSubArgument(CreateArgumentInputStore targetStore, AdminProStore ownerStore) {
    return _$edemokraciaAdminProCreateSubArgumentAsyncAction.run(() => super.edemokraciaAdminProCreateSubArgument(targetStore, ownerStore));
  }

  final _$edemokraciaAdminConVoteUpAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminConVoteUp');

  @override
  Future<void> edemokraciaAdminConVoteUp(AdminConStore ownerStore) {
    return _$edemokraciaAdminConVoteUpAsyncAction.run(() => super.edemokraciaAdminConVoteUp(ownerStore));
  }

  final _$edemokraciaAdminCommentVoteUpAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminCommentVoteUp');

  @override
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) {
    return _$edemokraciaAdminCommentVoteUpAsyncAction.run(() => super.edemokraciaAdminCommentVoteUp(ownerStore));
  }

  final _$edemokraciaAdminConCreateCommentAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminConCreateComment');

  @override
  Future<void> edemokraciaAdminConCreateComment(CreateCommentInputStore targetStore, AdminConStore ownerStore) {
    return _$edemokraciaAdminConCreateCommentAsyncAction.run(() => super.edemokraciaAdminConCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminProVoteUpAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminProVoteUp');

  @override
  Future<void> edemokraciaAdminProVoteUp(AdminProStore ownerStore) {
    return _$edemokraciaAdminProVoteUpAsyncAction.run(() => super.edemokraciaAdminProVoteUp(ownerStore));
  }

  final _$edemokraciaAdminConCreateSubArgumentAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminConCreateSubArgument');

  @override
  Future<void> edemokraciaAdminConCreateSubArgument(CreateArgumentInputStore targetStore, AdminConStore ownerStore) {
    return _$edemokraciaAdminConCreateSubArgumentAsyncAction.run(() => super.edemokraciaAdminConCreateSubArgument(targetStore, ownerStore));
  }

  final _$edemokraciaAdminProCreateCommentAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminProCreateComment');

  @override
  Future<void> edemokraciaAdminProCreateComment(CreateCommentInputStore targetStore, AdminProStore ownerStore) {
    return _$edemokraciaAdminProCreateCommentAsyncAction.run(() => super.edemokraciaAdminProCreateComment(targetStore, ownerStore));
  }

  final _$edemokraciaAdminProVoteDownAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminProVoteDown');

  @override
  Future<void> edemokraciaAdminProVoteDown(AdminProStore ownerStore) {
    return _$edemokraciaAdminProVoteDownAsyncAction.run(() => super.edemokraciaAdminProVoteDown(ownerStore));
  }

  final _$edemokraciaAdminConVoteDownAsyncAction = AsyncAction('_AdminConConsViewPageStore.edemokraciaAdminConVoteDown');

  @override
  Future<void> edemokraciaAdminConVoteDown(AdminConStore ownerStore) {
    return _$edemokraciaAdminConVoteDownAsyncAction.run(() => super.edemokraciaAdminConVoteDown(ownerStore));
  }

  final _$_AdminConConsViewPageStoreActionController = ActionController(name: '_AdminConConsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminConConsViewConfig pageConfig) {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consTableNextPage() {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.consTableNextPage');
    try {
      return super.consTableNextPage();
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consTablePreviousPage() {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.consTablePreviousPage');
    try {
      return super.consTablePreviousPage();
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosTableNextPage() {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.prosTableNextPage');
    try {
      return super.prosTableNextPage();
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosTablePreviousPage() {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.prosTablePreviousPage');
    try {
      return super.prosTablePreviousPage();
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsTableNextPage() {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.commentsTableNextPage');
    try {
      return super.commentsTableNextPage();
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsTablePreviousPage() {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.commentsTablePreviousPage');
    try {
      return super.commentsTablePreviousPage();
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminConStore store) {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.commentsSetSort');
    try {
      return super.commentsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminConStore store) {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.consSetSort');
    try {
      return super.consSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminConStore store) {
    final _$actionInfo = _$_AdminConConsViewPageStoreActionController.startAction(name: '_AdminConConsViewPageStore.prosSetSort');
    try {
      return super.prosSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminConConsViewPageStoreActionController.endAction(_$actionInfo);
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
conCommentsStoreFuture: ${conCommentsStoreFuture},
consSortColumnIndex: ${consSortColumnIndex},
consSortColumnName: ${consSortColumnName},
consSortAsc: ${consSortAsc},
consSortCompare: ${consSortCompare},
conConsStoreFuture: ${conConsStoreFuture},
conCreatedByStoreFuture: ${conCreatedByStoreFuture},
prosSortColumnIndex: ${prosSortColumnIndex},
prosSortColumnName: ${prosSortColumnName},
prosSortAsc: ${prosSortAsc},
prosSortCompare: ${prosSortCompare},
conProsStoreFuture: ${conProsStoreFuture},
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
