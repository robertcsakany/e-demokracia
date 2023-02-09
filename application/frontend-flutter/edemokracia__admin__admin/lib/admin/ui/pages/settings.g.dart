// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EdemokraciaAdminAdminSettingsPageStore on _EdemokraciaAdminAdminSettingsPageStore, Store {
  final _$apiUrlAtom = Atom(name: '_EdemokraciaAdminAdminSettingsPageStore.apiUrl');

  @override
  String get apiUrl {
    _$apiUrlAtom.reportRead();
    return super.apiUrl;
  }

  @override
  set apiUrl(String value) {
    _$apiUrlAtom.reportWrite(value, super.apiUrl, () {
      super.apiUrl = value;
    });
  }

  final _$loadingAtom = Atom(name: '_EdemokraciaAdminAdminSettingsPageStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loadApiUrlAsyncAction = AsyncAction('_EdemokraciaAdminAdminSettingsPageStore.loadApiUrl');

  @override
  Future<void> loadApiUrl() {
    return _$loadApiUrlAsyncAction.run(() => super.loadApiUrl());
  }

  final _$_EdemokraciaAdminAdminSettingsPageStoreActionController = ActionController(name: '_EdemokraciaAdminAdminSettingsPageStore');

  @override
  void setApiUrl(String apiUrl) {
    final _$actionInfo = _$_EdemokraciaAdminAdminSettingsPageStoreActionController.startAction(name: '_EdemokraciaAdminAdminSettingsPageStore.setApiUrl');
    try {
      return super.setApiUrl(apiUrl);
    } finally {
      _$_EdemokraciaAdminAdminSettingsPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadFinished() {
    final _$actionInfo = _$_EdemokraciaAdminAdminSettingsPageStoreActionController.startAction(name: '_EdemokraciaAdminAdminSettingsPageStore.loadFinished');
    try {
      return super.loadFinished();
    } finally {
      _$_EdemokraciaAdminAdminSettingsPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
apiUrl: ${apiUrl},
loading: ${loading}
    ''';
  }
}
