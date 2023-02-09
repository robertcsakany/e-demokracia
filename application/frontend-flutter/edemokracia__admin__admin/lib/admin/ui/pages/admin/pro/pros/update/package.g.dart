// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.pro.pros.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminProProsUpdatePageStore on _AdminProProsUpdatePageStore, Store {
  Computed<int> _$consTableItemsRangeStartComputed;

  @override
  int get consTableItemsRangeStart => (_$consTableItemsRangeStartComputed ??=
          Computed<int>(() => super.consTableItemsRangeStart, name: '_AdminProProsUpdatePageStore.consTableItemsRangeStart'))
      .value;
  Computed<int> _$consTableItemsRangeEndComputed;

  @override
  int get consTableItemsRangeEnd =>
      (_$consTableItemsRangeEndComputed ??= Computed<int>(() => super.consTableItemsRangeEnd, name: '_AdminProProsUpdatePageStore.consTableItemsRangeEnd'))
          .value;
  Computed<bool> _$consTablePreviousEnableComputed;

  @override
  bool get consTablePreviousEnable =>
      (_$consTablePreviousEnableComputed ??= Computed<bool>(() => super.consTablePreviousEnable, name: '_AdminProProsUpdatePageStore.consTablePreviousEnable'))
          .value;
  Computed<bool> _$consTableNextEnableComputed;

  @override
  bool get consTableNextEnable =>
      (_$consTableNextEnableComputed ??= Computed<bool>(() => super.consTableNextEnable, name: '_AdminProProsUpdatePageStore.consTableNextEnable')).value;
  Computed<List<AdminConStore>> _$consTablePagingListComputed;

  @override
  List<AdminConStore> get consTablePagingList => (_$consTablePagingListComputed ??=
          Computed<List<AdminConStore>>(() => super.consTablePagingList, name: '_AdminProProsUpdatePageStore.consTablePagingList'))
      .value;
  Computed<int> _$prosTableItemsRangeStartComputed;

  @override
  int get prosTableItemsRangeStart => (_$prosTableItemsRangeStartComputed ??=
          Computed<int>(() => super.prosTableItemsRangeStart, name: '_AdminProProsUpdatePageStore.prosTableItemsRangeStart'))
      .value;
  Computed<int> _$prosTableItemsRangeEndComputed;

  @override
  int get prosTableItemsRangeEnd =>
      (_$prosTableItemsRangeEndComputed ??= Computed<int>(() => super.prosTableItemsRangeEnd, name: '_AdminProProsUpdatePageStore.prosTableItemsRangeEnd'))
          .value;
  Computed<bool> _$prosTablePreviousEnableComputed;

  @override
  bool get prosTablePreviousEnable =>
      (_$prosTablePreviousEnableComputed ??= Computed<bool>(() => super.prosTablePreviousEnable, name: '_AdminProProsUpdatePageStore.prosTablePreviousEnable'))
          .value;
  Computed<bool> _$prosTableNextEnableComputed;

  @override
  bool get prosTableNextEnable =>
      (_$prosTableNextEnableComputed ??= Computed<bool>(() => super.prosTableNextEnable, name: '_AdminProProsUpdatePageStore.prosTableNextEnable')).value;
  Computed<List<AdminProStore>> _$prosTablePagingListComputed;

  @override
  List<AdminProStore> get prosTablePagingList => (_$prosTablePagingListComputed ??=
          Computed<List<AdminProStore>>(() => super.prosTablePagingList, name: '_AdminProProsUpdatePageStore.prosTablePagingList'))
      .value;
  Computed<int> _$commentsTableItemsRangeStartComputed;

  @override
  int get commentsTableItemsRangeStart => (_$commentsTableItemsRangeStartComputed ??=
          Computed<int>(() => super.commentsTableItemsRangeStart, name: '_AdminProProsUpdatePageStore.commentsTableItemsRangeStart'))
      .value;
  Computed<int> _$commentsTableItemsRangeEndComputed;

  @override
  int get commentsTableItemsRangeEnd => (_$commentsTableItemsRangeEndComputed ??=
          Computed<int>(() => super.commentsTableItemsRangeEnd, name: '_AdminProProsUpdatePageStore.commentsTableItemsRangeEnd'))
      .value;
  Computed<bool> _$commentsTablePreviousEnableComputed;

  @override
  bool get commentsTablePreviousEnable => (_$commentsTablePreviousEnableComputed ??=
          Computed<bool>(() => super.commentsTablePreviousEnable, name: '_AdminProProsUpdatePageStore.commentsTablePreviousEnable'))
      .value;
  Computed<bool> _$commentsTableNextEnableComputed;

  @override
  bool get commentsTableNextEnable =>
      (_$commentsTableNextEnableComputed ??= Computed<bool>(() => super.commentsTableNextEnable, name: '_AdminProProsUpdatePageStore.commentsTableNextEnable'))
          .value;
  Computed<List<AdminCommentStore>> _$commentsTablePagingListComputed;

  @override
  List<AdminCommentStore> get commentsTablePagingList => (_$commentsTablePagingListComputed ??=
          Computed<List<AdminCommentStore>>(() => super.commentsTablePagingList, name: '_AdminProProsUpdatePageStore.commentsTablePagingList'))
      .value;

  final _$targetStoreAtom = Atom(name: '_AdminProProsUpdatePageStore.targetStore');

  @override
  AdminProStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminProStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$consTablePageNumberAtom = Atom(name: '_AdminProProsUpdatePageStore.consTablePageNumber');

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

  final _$prosTablePageNumberAtom = Atom(name: '_AdminProProsUpdatePageStore.prosTablePageNumber');

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

  final _$commentsTablePageNumberAtom = Atom(name: '_AdminProProsUpdatePageStore.commentsTablePageNumber');

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

  final _$commentsSortColumnIndexAtom = Atom(name: '_AdminProProsUpdatePageStore.commentsSortColumnIndex');

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

  final _$commentsSortColumnNameAtom = Atom(name: '_AdminProProsUpdatePageStore.commentsSortColumnName');

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

  final _$commentsSortAscAtom = Atom(name: '_AdminProProsUpdatePageStore.commentsSortAsc');

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

  final _$commentsSortCompareAtom = Atom(name: '_AdminProProsUpdatePageStore.commentsSortCompare');

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

  final _$proCommentsStoreFutureAtom = Atom(name: '_AdminProProsUpdatePageStore.proCommentsStoreFuture');

  @override
  ObservableFuture<dynamic> get proCommentsStoreFuture {
    _$proCommentsStoreFutureAtom.reportRead();
    return super.proCommentsStoreFuture;
  }

  @override
  set proCommentsStoreFuture(ObservableFuture<dynamic> value) {
    _$proCommentsStoreFutureAtom.reportWrite(value, super.proCommentsStoreFuture, () {
      super.proCommentsStoreFuture = value;
    });
  }

  final _$consSortColumnIndexAtom = Atom(name: '_AdminProProsUpdatePageStore.consSortColumnIndex');

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

  final _$consSortColumnNameAtom = Atom(name: '_AdminProProsUpdatePageStore.consSortColumnName');

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

  final _$consSortAscAtom = Atom(name: '_AdminProProsUpdatePageStore.consSortAsc');

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

  final _$consSortCompareAtom = Atom(name: '_AdminProProsUpdatePageStore.consSortCompare');

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

  final _$proConsStoreFutureAtom = Atom(name: '_AdminProProsUpdatePageStore.proConsStoreFuture');

  @override
  ObservableFuture<dynamic> get proConsStoreFuture {
    _$proConsStoreFutureAtom.reportRead();
    return super.proConsStoreFuture;
  }

  @override
  set proConsStoreFuture(ObservableFuture<dynamic> value) {
    _$proConsStoreFutureAtom.reportWrite(value, super.proConsStoreFuture, () {
      super.proConsStoreFuture = value;
    });
  }

  final _$proCreatedByStoreFutureAtom = Atom(name: '_AdminProProsUpdatePageStore.proCreatedByStoreFuture');

  @override
  ObservableFuture<dynamic> get proCreatedByStoreFuture {
    _$proCreatedByStoreFutureAtom.reportRead();
    return super.proCreatedByStoreFuture;
  }

  @override
  set proCreatedByStoreFuture(ObservableFuture<dynamic> value) {
    _$proCreatedByStoreFutureAtom.reportWrite(value, super.proCreatedByStoreFuture, () {
      super.proCreatedByStoreFuture = value;
    });
  }

  final _$prosSortColumnIndexAtom = Atom(name: '_AdminProProsUpdatePageStore.prosSortColumnIndex');

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

  final _$prosSortColumnNameAtom = Atom(name: '_AdminProProsUpdatePageStore.prosSortColumnName');

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

  final _$prosSortAscAtom = Atom(name: '_AdminProProsUpdatePageStore.prosSortAsc');

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

  final _$prosSortCompareAtom = Atom(name: '_AdminProProsUpdatePageStore.prosSortCompare');

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

  final _$proProsStoreFutureAtom = Atom(name: '_AdminProProsUpdatePageStore.proProsStoreFuture');

  @override
  ObservableFuture<dynamic> get proProsStoreFuture {
    _$proProsStoreFutureAtom.reportRead();
    return super.proProsStoreFuture;
  }

  @override
  set proProsStoreFuture(ObservableFuture<dynamic> value) {
    _$proProsStoreFutureAtom.reportWrite(value, super.proProsStoreFuture, () {
      super.proProsStoreFuture = value;
    });
  }

  final _$refreshProAsyncAction = AsyncAction('_AdminProProsUpdatePageStore.refreshPro');

  @override
  Future<void> refreshPro(AdminProStore targetStore) {
    return _$refreshProAsyncAction.run(() => super.refreshPro(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminProProsUpdatePageStore.validate');

  @override
  Future<AdminProStore> validate(AdminProStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminProProsUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminProProsUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminProProsUpdatePageStoreActionController = ActionController(name: '_AdminProProsUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminProProsUpdateConfig pageConfig) {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consTableNextPage() {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.consTableNextPage');
    try {
      return super.consTableNextPage();
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consTablePreviousPage() {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.consTablePreviousPage');
    try {
      return super.consTablePreviousPage();
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosTableNextPage() {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.prosTableNextPage');
    try {
      return super.prosTableNextPage();
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosTablePreviousPage() {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.prosTablePreviousPage');
    try {
      return super.prosTablePreviousPage();
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsTableNextPage() {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.commentsTableNextPage');
    try {
      return super.commentsTableNextPage();
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsTablePreviousPage() {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.commentsTablePreviousPage');
    try {
      return super.commentsTablePreviousPage();
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminProStore store) {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.commentsSetSort');
    try {
      return super.commentsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void consSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminProStore store) {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.consSetSort');
    try {
      return super.consSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void prosSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, AdminProStore store) {
    final _$actionInfo = _$_AdminProProsUpdatePageStoreActionController.startAction(name: '_AdminProProsUpdatePageStore.prosSetSort');
    try {
      return super.prosSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_AdminProProsUpdatePageStoreActionController.endAction(_$actionInfo);
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
proCommentsStoreFuture: ${proCommentsStoreFuture},
consSortColumnIndex: ${consSortColumnIndex},
consSortColumnName: ${consSortColumnName},
consSortAsc: ${consSortAsc},
consSortCompare: ${consSortCompare},
proConsStoreFuture: ${proConsStoreFuture},
proCreatedByStoreFuture: ${proCreatedByStoreFuture},
prosSortColumnIndex: ${prosSortColumnIndex},
prosSortColumnName: ${prosSortColumnName},
prosSortAsc: ${prosSortAsc},
prosSortCompare: ${prosSortCompare},
proProsStoreFuture: ${proProsStoreFuture},
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
