// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.user.resident_district.view;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserResidentDistrictViewPageStore on _UserResidentDistrictViewPageStore, Store {
  final _$targetStoreAtom = Atom(name: '_UserResidentDistrictViewPageStore.targetStore');

  @override
  DistrictStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(DistrictStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshDistrictAsyncAction = AsyncAction('_UserResidentDistrictViewPageStore.refreshDistrict');

  @override
  Future<void> refreshDistrict(DistrictStore targetStore) {
    return _$refreshDistrictAsyncAction.run(() => super.refreshDistrict(targetStore));
  }

  final _$downloadFileAsyncAction = AsyncAction('_UserResidentDistrictViewPageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_UserResidentDistrictViewPageStoreActionController = ActionController(name: '_UserResidentDistrictViewPageStore');

  @override
  void initSortAggregatedLists(BuildContext context, UserResidentDistrictViewConfig pageConfig) {
    final _$actionInfo = _$_UserResidentDistrictViewPageStoreActionController.startAction(name: '_UserResidentDistrictViewPageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_UserResidentDistrictViewPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
