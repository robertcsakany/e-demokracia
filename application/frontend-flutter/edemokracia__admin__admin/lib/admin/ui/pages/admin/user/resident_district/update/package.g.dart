// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.resident_district.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserResidentDistrictUpdatePageStore on _AdminUserResidentDistrictUpdatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminUserResidentDistrictUpdatePageStore.targetStore');

  @override
  AdminDistrictStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminDistrictStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshDistrictAsyncAction = AsyncAction('_AdminUserResidentDistrictUpdatePageStore.refreshDistrict');

  @override
  Future<void> refreshDistrict(AdminDistrictStore targetStore) {
    return _$refreshDistrictAsyncAction.run(() => super.refreshDistrict(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminUserResidentDistrictUpdatePageStore.validate');

  @override
  Future<AdminDistrictStore> validate(AdminDistrictStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminUserResidentDistrictUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserResidentDistrictUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminUserResidentDistrictUpdatePageStoreActionController = ActionController(name: '_AdminUserResidentDistrictUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserResidentDistrictUpdateConfig pageConfig) {
    final _$actionInfo =
        _$_AdminUserResidentDistrictUpdatePageStoreActionController.startAction(name: '_AdminUserResidentDistrictUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserResidentDistrictUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
