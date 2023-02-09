// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthInfoStore on _AuthInfoStore, Store {
  Computed<bool> _$loggedInComputed;

  @override
  bool get loggedIn => (_$loggedInComputed ??= Computed<bool>(() => super.loggedIn, name: '_AuthInfoStore.loggedIn')).value;

  final _$authenticatedAtom = Atom(name: '_AuthInfoStore.authenticated');

  @override
  bool get authenticated {
    _$authenticatedAtom.reportRead();
    return super.authenticated;
  }

  @override
  set authenticated(bool value) {
    _$authenticatedAtom.reportWrite(value, super.authenticated, () {
      super.authenticated = value;
    });
  }

  final _$userNameAtom = Atom(name: '_AuthInfoStore.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$emailAtom = Atom(name: '_AuthInfoStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$isPrincipalAllowedAtom = Atom(name: '_AuthInfoStore.isPrincipalAllowed');

  @override
  bool get isPrincipalAllowed {
    _$isPrincipalAllowedAtom.reportRead();
    return super.isPrincipalAllowed;
  }

  @override
  set isPrincipalAllowed(bool value) {
    _$isPrincipalAllowedAtom.reportWrite(value, super.isPrincipalAllowed, () {
      super.isPrincipalAllowed = value;
    });
  }

  final _$_AuthInfoStoreActionController = ActionController(name: '_AuthInfoStore');

  @override
  void setAuthenticated(bool authenticated) {
    final _$actionInfo = _$_AuthInfoStoreActionController.startAction(name: '_AuthInfoStore.setAuthenticated');
    try {
      return super.setAuthenticated(authenticated);
    } finally {
      _$_AuthInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String userName) {
    final _$actionInfo = _$_AuthInfoStoreActionController.startAction(name: '_AuthInfoStore.setUserName');
    try {
      return super.setUserName(userName);
    } finally {
      _$_AuthInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_AuthInfoStoreActionController.startAction(name: '_AuthInfoStore.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_AuthInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsPrincipalAllowed(bool allowed) {
    final _$actionInfo = _$_AuthInfoStoreActionController.startAction(name: '_AuthInfoStore.setIsPrincipalAllowed');
    try {
      return super.setIsPrincipalAllowed(allowed);
    } finally {
      _$_AuthInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
authenticated: ${authenticated},
userName: ${userName},
email: ${email},
isPrincipalAllowed: ${isPrincipalAllowed},
loggedIn: ${loggedIn}
    ''';
  }
}
