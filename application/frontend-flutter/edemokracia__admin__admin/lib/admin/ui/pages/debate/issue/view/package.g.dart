// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.debate.issue.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DebateIssueViewPageStore on _DebateIssueViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_DebateIssueViewPageStore.targetStore');

  @override
  IssueStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(IssueStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$attachmentsSortColumnIndexAtom = Atom(name: '_DebateIssueViewPageStore.attachmentsSortColumnIndex');

  @override
  int get attachmentsSortColumnIndex {
    _$attachmentsSortColumnIndexAtom.reportRead();
    return super.attachmentsSortColumnIndex;
  }

  @override
  set attachmentsSortColumnIndex(int value) {
    _$attachmentsSortColumnIndexAtom.reportWrite(value, super.attachmentsSortColumnIndex, () {
      super.attachmentsSortColumnIndex = value;
    });
  }

  final _$attachmentsSortColumnNameAtom = Atom(name: '_DebateIssueViewPageStore.attachmentsSortColumnName');

  @override
  String get attachmentsSortColumnName {
    _$attachmentsSortColumnNameAtom.reportRead();
    return super.attachmentsSortColumnName;
  }

  @override
  set attachmentsSortColumnName(String value) {
    _$attachmentsSortColumnNameAtom.reportWrite(value, super.attachmentsSortColumnName, () {
      super.attachmentsSortColumnName = value;
    });
  }

  final _$attachmentsSortAscAtom = Atom(name: '_DebateIssueViewPageStore.attachmentsSortAsc');

  @override
  bool get attachmentsSortAsc {
    _$attachmentsSortAscAtom.reportRead();
    return super.attachmentsSortAsc;
  }

  @override
  set attachmentsSortAsc(bool value) {
    _$attachmentsSortAscAtom.reportWrite(value, super.attachmentsSortAsc, () {
      super.attachmentsSortAsc = value;
    });
  }

  final _$attachmentsSortCompareAtom = Atom(name: '_DebateIssueViewPageStore.attachmentsSortCompare');

  @override
  Comparator<dynamic> get attachmentsSortCompare {
    _$attachmentsSortCompareAtom.reportRead();
    return super.attachmentsSortCompare;
  }

  @override
  set attachmentsSortCompare(Comparator<dynamic> value) {
    _$attachmentsSortCompareAtom.reportWrite(value, super.attachmentsSortCompare, () {
      super.attachmentsSortCompare = value;
    });
  }

  final _$issueAttachmentsStoreFutureAtom = Atom(name: '_DebateIssueViewPageStore.issueAttachmentsStoreFuture');

  @override
  ObservableFuture<dynamic> get issueAttachmentsStoreFuture {
    _$issueAttachmentsStoreFutureAtom.reportRead();
    return super.issueAttachmentsStoreFuture;
  }

  @override
  set issueAttachmentsStoreFuture(ObservableFuture<dynamic> value) {
    _$issueAttachmentsStoreFutureAtom.reportWrite(value, super.issueAttachmentsStoreFuture, () {
      super.issueAttachmentsStoreFuture = value;
    });
  }

  final _$commentsSortColumnIndexAtom = Atom(name: '_DebateIssueViewPageStore.commentsSortColumnIndex');

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

  final _$commentsSortColumnNameAtom = Atom(name: '_DebateIssueViewPageStore.commentsSortColumnName');

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

  final _$commentsSortAscAtom = Atom(name: '_DebateIssueViewPageStore.commentsSortAsc');

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

  final _$commentsSortCompareAtom = Atom(name: '_DebateIssueViewPageStore.commentsSortCompare');

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

  final _$issueCommentsStoreFutureAtom = Atom(name: '_DebateIssueViewPageStore.issueCommentsStoreFuture');

  @override
  ObservableFuture<dynamic> get issueCommentsStoreFuture {
    _$issueCommentsStoreFutureAtom.reportRead();
    return super.issueCommentsStoreFuture;
  }

  @override
  set issueCommentsStoreFuture(ObservableFuture<dynamic> value) {
    _$issueCommentsStoreFutureAtom.reportWrite(value, super.issueCommentsStoreFuture, () {
      super.issueCommentsStoreFuture = value;
    });
  }

  final _$refreshIssueAsyncAction = AsyncAction('_DebateIssueViewPageStore.refreshIssue');

  @override
  Future<void> refreshIssue(IssueStore targetStore) {
    return _$refreshIssueAsyncAction.run(() => super.refreshIssue(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_DebateIssueViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_DebateIssueViewPageStoreActionController = ActionController(name: '_DebateIssueViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, DebateIssueViewConfig pageConfig) {
    final _$actionInfo = _$_DebateIssueViewPageStoreActionController.startAction(name: '_DebateIssueViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_DebateIssueViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void attachmentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, IssueStore store) {
    final _$actionInfo = _$_DebateIssueViewPageStoreActionController.startAction(name: '_DebateIssueViewPageStore.attachmentsSetSort');
    try {
      return super.attachmentsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_DebateIssueViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator<dynamic> sortCompare, IssueStore store) {
    final _$actionInfo = _$_DebateIssueViewPageStoreActionController.startAction(name: '_DebateIssueViewPageStore.commentsSetSort');
    try {
      return super.commentsSetSort(context, sortColumnName, sortColumnIndex, asc, sortCompare, store);
    } finally {
      _$_DebateIssueViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
attachmentsSortColumnIndex: ${attachmentsSortColumnIndex},
attachmentsSortColumnName: ${attachmentsSortColumnName},
attachmentsSortAsc: ${attachmentsSortAsc},
attachmentsSortCompare: ${attachmentsSortCompare},
issueAttachmentsStoreFuture: ${issueAttachmentsStoreFuture},
commentsSortColumnIndex: ${commentsSortColumnIndex},
commentsSortColumnName: ${commentsSortColumnName},
commentsSortAsc: ${commentsSortAsc},
commentsSortCompare: ${commentsSortCompare},
issueCommentsStoreFuture: ${issueCommentsStoreFuture}
    ''';
  }
}
