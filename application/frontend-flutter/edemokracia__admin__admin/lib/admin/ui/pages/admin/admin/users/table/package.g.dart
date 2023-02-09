// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.users.table;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminUsersTablePageStore on _AdminAdminUsersTablePageStore, Store {
  Computed<int> _$getPlusRowSizeComputed;

  @override
  int get getPlusRowSize =>
      (_$getPlusRowSizeComputed ??= Computed<int>(() => super.getPlusRowSize, name: '_AdminAdminUsersTablePageStore.getPlusRowSize')).value;
  Computed<int> _$pageTableItemsRangeStartComputed;

  @override
  int get pageTableItemsRangeStart => (_$pageTableItemsRangeStartComputed ??=
          Computed<int>(() => super.pageTableItemsRangeStart, name: '_AdminAdminUsersTablePageStore.pageTableItemsRangeStart'))
      .value;
  Computed<bool> _$previousButtonEnableComputed;

  @override
  bool get previousButtonEnable =>
      (_$previousButtonEnableComputed ??= Computed<bool>(() => super.previousButtonEnable, name: '_AdminAdminUsersTablePageStore.previousButtonEnable')).value;

  final _$targetStoreAtom = Atom(name: '_AdminAdminUsersTablePageStore.targetStore');

  @override
  AdminUserStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminUserStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$pageMaxColAtom = Atom(name: '_AdminAdminUsersTablePageStore.pageMaxCol');

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

  final _$availableFilterListAtom = Atom(name: '_AdminAdminUsersTablePageStore.availableFilterList');

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

  final _$usersStoreListAtom = Atom(name: '_AdminAdminUsersTablePageStore.usersStoreList');

  @override
  List<AdminUserStore> get usersStoreList {
    _$usersStoreListAtom.reportRead();
    return super.usersStoreList;
  }

  @override
  set usersStoreList(List<AdminUserStore> value) {
    _$usersStoreListAtom.reportWrite(value, super.usersStoreList, () {
      super.usersStoreList = value;
    });
  }

  final _$nextButtonEnableAtom = Atom(name: '_AdminAdminUsersTablePageStore.nextButtonEnable');

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

  final _$nextPageCounterAtom = Atom(name: '_AdminAdminUsersTablePageStore.nextPageCounter');

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

  final _$usersSortColumnIndexAtom = Atom(name: '_AdminAdminUsersTablePageStore.usersSortColumnIndex');

  @override
  int get usersSortColumnIndex {
    _$usersSortColumnIndexAtom.reportRead();
    return super.usersSortColumnIndex;
  }

  @override
  set usersSortColumnIndex(int value) {
    _$usersSortColumnIndexAtom.reportWrite(value, super.usersSortColumnIndex, () {
      super.usersSortColumnIndex = value;
    });
  }

  final _$usersSortColumnNameAtom = Atom(name: '_AdminAdminUsersTablePageStore.usersSortColumnName');

  @override
  String get usersSortColumnName {
    _$usersSortColumnNameAtom.reportRead();
    return super.usersSortColumnName;
  }

  @override
  set usersSortColumnName(String value) {
    _$usersSortColumnNameAtom.reportWrite(value, super.usersSortColumnName, () {
      super.usersSortColumnName = value;
    });
  }

  final _$usersSortAscAtom = Atom(name: '_AdminAdminUsersTablePageStore.usersSortAsc');

  @override
  bool get usersSortAsc {
    _$usersSortAscAtom.reportRead();
    return super.usersSortAsc;
  }

  @override
  set usersSortAsc(bool value) {
    _$usersSortAscAtom.reportWrite(value, super.usersSortAsc, () {
      super.usersSortAsc = value;
    });
  }

  final _$adminUsersStoreFutureAtom = Atom(name: '_AdminAdminUsersTablePageStore.adminUsersStoreFuture');

  @override
  ObservableFuture<dynamic> get adminUsersStoreFuture {
    _$adminUsersStoreFutureAtom.reportRead();
    return super.adminUsersStoreFuture;
  }

  @override
  set adminUsersStoreFuture(ObservableFuture<dynamic> value) {
    _$adminUsersStoreFutureAtom.reportWrite(value, super.adminUsersStoreFuture, () {
      super.adminUsersStoreFuture = value;
    });
  }

  final _$getUsersAsyncAction = AsyncAction('_AdminAdminUsersTablePageStore.getUsers');

  @override
  Future<List<AdminUserStore>> getUsers({int queryLimit, bool isNext}) {
    return _$getUsersAsyncAction.run(() => super.getUsers(queryLimit: queryLimit, isNext: isNext));
  }

  final _$deleteUserAsyncAction = AsyncAction('_AdminAdminUsersTablePageStore.deleteUser');

  @override
  Future<void> deleteUser(AdminUserStore targetStore) {
    return _$deleteUserAsyncAction.run(() => super.deleteUser(targetStore));
  }

  final _$updateUserAsyncAction = AsyncAction('_AdminAdminUsersTablePageStore.updateUser');

  @override
  Future<void> updateUser(AdminUserStore newTargetStore) {
    return _$updateUserAsyncAction.run(() => super.updateUser(newTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminUsersTablePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminAdminUsersTablePageStoreActionController = ActionController(name: '_AdminAdminUsersTablePageStore');

  @override
  void setPageMaxCol(int maxCol) {
    final _$actionInfo = _$_AdminAdminUsersTablePageStoreActionController.startAction(name: '_AdminAdminUsersTablePageStore.setPageMaxCol');
    try {
      return super.setPageMaxCol(maxCol);
    } finally {
      _$_AdminAdminUsersTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewFilter(FilterStore newFilterStore) {
    final _$actionInfo = _$_AdminAdminUsersTablePageStoreActionController.startAction(name: '_AdminAdminUsersTablePageStore.addNewFilter');
    try {
      return super.addNewFilter(newFilterStore);
    } finally {
      _$_AdminAdminUsersTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void usersSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc) {
    final _$actionInfo = _$_AdminAdminUsersTablePageStoreActionController.startAction(name: '_AdminAdminUsersTablePageStore.usersSetSort');
    try {
      return super.usersSetSort(context, sortColumnName, sortColumnIndex, asc);
    } finally {
      _$_AdminAdminUsersTablePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore},
pageMaxCol: ${pageMaxCol},
availableFilterList: ${availableFilterList},
usersStoreList: ${usersStoreList},
nextButtonEnable: ${nextButtonEnable},
nextPageCounter: ${nextPageCounter},
usersSortColumnIndex: ${usersSortColumnIndex},
usersSortColumnName: ${usersSortColumnName},
usersSortAsc: ${usersSortAsc},
adminUsersStoreFuture: ${adminUsersStoreFuture},
getPlusRowSize: ${getPlusRowSize},
pageTableItemsRangeStart: ${pageTableItemsRangeStart},
previousButtonEnable: ${previousButtonEnable}
    ''';
  }
}
