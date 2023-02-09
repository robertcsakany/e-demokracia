// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.resident_district.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserResidentDistrictViewPageStore on _AdminUserResidentDistrictViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminUserResidentDistrictViewPageStore.targetStore');

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

  final _$refreshDistrictAsyncAction = AsyncAction('_AdminUserResidentDistrictViewPageStore.refreshDistrict');

  @override
  Future<void> refreshDistrict(AdminDistrictStore targetStore) {
    return _$refreshDistrictAsyncAction.run(() => super.refreshDistrict(targetStore));
  }

  final _$updateDistrictAsyncAction = AsyncAction('_AdminUserResidentDistrictViewPageStore.updateDistrict');

  @override
  Future<void> updateDistrict(AdminDistrictStore newTargetStore, AdminDistrictStore oldTargetStore) {
    return _$updateDistrictAsyncAction.run(() => super.updateDistrict(newTargetStore, oldTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserResidentDistrictViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminUserResidentDistrictViewPageStoreActionController = ActionController(name: '_AdminUserResidentDistrictViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserResidentDistrictViewConfig pageConfig) {
    final _$actionInfo =
        _$_AdminUserResidentDistrictViewPageStoreActionController.startAction(name: '_AdminUserResidentDistrictViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserResidentDistrictViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
