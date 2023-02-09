// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.user.activity_districts.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminUserActivityDistrictsViewPageStore on _AdminUserActivityDistrictsViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminUserActivityDistrictsViewPageStore.targetStore');

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

  final _$refreshDistrictAsyncAction = AsyncAction('_AdminUserActivityDistrictsViewPageStore.refreshDistrict');

  @override
  Future<void> refreshDistrict(AdminDistrictStore targetStore) {
    return _$refreshDistrictAsyncAction.run(() => super.refreshDistrict(targetStore));
  }

  final _$updateDistrictAsyncAction = AsyncAction('_AdminUserActivityDistrictsViewPageStore.updateDistrict');

  @override
  Future<void> updateDistrict(AdminDistrictStore newTargetStore, AdminDistrictStore oldTargetStore) {
    return _$updateDistrictAsyncAction.run(() => super.updateDistrict(newTargetStore, oldTargetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminUserActivityDistrictsViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminUserActivityDistrictsViewPageStoreActionController = ActionController(name: '_AdminUserActivityDistrictsViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminUserActivityDistrictsViewConfig pageConfig) {
    final _$actionInfo =
        _$_AdminUserActivityDistrictsViewPageStoreActionController.startAction(name: '_AdminUserActivityDistrictsViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminUserActivityDistrictsViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
