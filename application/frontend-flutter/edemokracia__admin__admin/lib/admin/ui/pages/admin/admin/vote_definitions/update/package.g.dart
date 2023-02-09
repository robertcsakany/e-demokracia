// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.ui.pages.admin.admin.vote_definitions.update;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AdminAdminVoteDefinitionsUpdatePageStore on _AdminAdminVoteDefinitionsUpdatePageStore, Store {
  final _$targetStoreAtom = Atom(name: '_AdminAdminVoteDefinitionsUpdatePageStore.targetStore');

  @override
  AdminVoteDefinitionStore get targetStore {
    _$targetStoreAtom.reportRead();
    return super.targetStore;
  }

  @override
  set targetStore(AdminVoteDefinitionStore value) {
    _$targetStoreAtom.reportWrite(value, super.targetStore, () {
      super.targetStore = value;
    });
  }

  final _$refreshVoteDefinitionAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsUpdatePageStore.refreshVoteDefinition');

  @override
  Future<void> refreshVoteDefinition(AdminVoteDefinitionStore targetStore) {
    return _$refreshVoteDefinitionAsyncAction.run(() => super.refreshVoteDefinition(targetStore));
  }

  final _$validateAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsUpdatePageStore.validate');

  @override
  Future<AdminVoteDefinitionStore> validate(AdminVoteDefinitionStore targetStore) {
    return _$validateAsyncAction.run(() => super.validate(targetStore));
  }

  final _$uploadFileAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsUpdatePageStore.uploadFile');

  @override
  Future<String> uploadFile(String attributePath, PlatformFile file) {
    return _$uploadFileAsyncAction.run(() => super.uploadFile(attributePath, file));
  }

  final _$downloadFileAsyncAction = AsyncAction('_AdminAdminVoteDefinitionsUpdatePageStore.downloadFile');

  @override
  Future<void> downloadFile(String downloadToken) {
    return _$downloadFileAsyncAction.run(() => super.downloadFile(downloadToken));
  }

  final _$_AdminAdminVoteDefinitionsUpdatePageStoreActionController = ActionController(name: '_AdminAdminVoteDefinitionsUpdatePageStore');

  @override
  void initSortAggregatedLists(BuildContext context, AdminAdminVoteDefinitionsUpdateConfig pageConfig) {
    final _$actionInfo =
        _$_AdminAdminVoteDefinitionsUpdatePageStoreActionController.startAction(name: '_AdminAdminVoteDefinitionsUpdatePageStore.initSortAggregatedLists');
    try {
      return super.initSortAggregatedLists(context, pageConfig);
    } finally {
      _$_AdminAdminVoteDefinitionsUpdatePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
targetStore: ${targetStore}
    ''';
  }
}
