// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.city.districts.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminCityDistrictsViewPageStore on _AdminCityDistrictsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminCityDistrictsViewPageStore.targetStore');

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

  final _$refreshDistrictAsyncAction = AsyncAction('_AdminCityDistrictsViewPageStore.refreshDistrict');

  @override
  Future<void> refreshDistrict(AdminDistrictStore targetStore) {
    return _$refreshDistrictAsyncAction.run(() => super.refreshDistrict(targetStore));
  }

  final _$updateDistrictAsyncAction = AsyncAction('_AdminCityDistrictsViewPageStore.updateDistrict');

  @override
  Future<void> updateDistrict(AdminDistrictStore newTargetStore, AdminDistrictStore oldTargetStore) {
    return _$updateDistrictAsyncAction.run(() => super.updateDistrict(newTargetStore, oldTargetStore));
  }

  final _$deleteDistrictAsyncAction = AsyncAction('_AdminCityDistrictsViewPageStore.deleteDistrict');

  @override
  Future<void> deleteDistrict(AdminDistrictStore targetStore) {
    return _$deleteDistrictAsyncAction.run(() => super.deleteDistrict(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminCityDistrictsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminCityDistrictsViewPageStoreActionController = ActionController(name: '_AdminCityDistrictsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminCityDistrictsViewConfig pageConfig) {
    final _$actionInfo = _$_AdminCityDistrictsViewPageStoreActionController.startAction(name: '_AdminCityDistrictsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminCityDistrictsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
