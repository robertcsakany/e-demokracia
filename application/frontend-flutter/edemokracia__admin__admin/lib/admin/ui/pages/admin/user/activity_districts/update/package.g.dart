// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.activity_districts.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserActivityDistrictsUpdatePageStore on _AdminUserActivityDistrictsUpdatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminUserActivityDistrictsUpdatePageStore.targetStore');

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

  final _$refreshDistrictAsyncAction = AsyncAction('_AdminUserActivityDistrictsUpdatePageStore.refreshDistrict');

  @override
  Future<void> refreshDistrict(AdminDistrictStore targetStore) {
    return _$refreshDistrictAsyncAction.run(() => super.refreshDistrict(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminUserActivityDistrictsUpdatePageStore.validate');

  @override
  Future<AdminDistrictStore> validate(AdminDistrictStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminUserActivityDistrictsUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserActivityDistrictsUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminUserActivityDistrictsUpdatePageStoreActionController = ActionController(name: '_AdminUserActivityDistrictsUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserActivityDistrictsUpdateConfig pageConfig) {
    final _$actionInfo =
        _$_AdminUserActivityDistrictsUpdatePageStoreActionController.startAction(name: '_AdminUserActivityDistrictsUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserActivityDistrictsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
