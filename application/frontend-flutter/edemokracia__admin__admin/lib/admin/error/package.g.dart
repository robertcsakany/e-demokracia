// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.error;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MessageHandler on _MessageHandler, Store {
  final _$messageStackAtom = Atom(name: '_MessageHandler.messageStack');

  @override
  ObservableList<JudoMessage> get messageStack {
    _$messageStackAtom.reportRead();
    return super.messageStack;
  }

  @override
  set messageStack(ObservableList<JudoMessage> value) {
    _$messageStackAtom.reportWrite(value, super.messageStack, () {
      super.messageStack = value;
    });
  }

  final _$_MessageHandlerActionController = ActionController(name: '_MessageHandler');

  @override
  void handleApiException(BuildContext context, dynamic exception, String callName, [Map<String, ValidationError> validationMap]) {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler.handleApiException');
    try {
      return super.handleApiException(context, exception, callName, validationMap);
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showUnexpectedErrorMessage(BuildContext context, String callName) {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler.showUnexpectedErrorMessage');
    try {
      return super.showUnexpectedErrorMessage(context, callName);
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showSuccessMessage(BuildContext context, String message, [String callName]) {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler.showSuccessMessage');
    try {
      return super.showSuccessMessage(context, message, callName);
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showInfoMessage(BuildContext context, String message, [String callName]) {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler.showInfoMessage');
    try {
      return super.showInfoMessage(context, message, callName);
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _pushMessage(JudoMessage message) {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler._pushMessage');
    try {
      return super._pushMessage(message);
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void popMessage() {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler.popMessage');
    try {
      return super.popMessage();
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _removeMessageDelayed(JudoMessage message, int milliseconds) {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler._removeMessageDelayed');
    try {
      return super._removeMessageDelayed(message, milliseconds);
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _clearMessageStack() {
    final _$actionInfo = _$_MessageHandlerActionController.startAction(name: '_MessageHandler._clearMessageStack');
    try {
      return super._clearMessageStack();
    } finally {
      _$_MessageHandlerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messageStack: ${messageStack}
    ''';
  }
}

mixin _$ValidationError on _ValidationError, Store {
  final _$messageAtom = Atom(name: '_ValidationError.message');

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  final _$_ValidationErrorActionController = ActionController(name: '_ValidationError');

  @override
  void setMessage(String newMessage) {
    final _$actionInfo = _$_ValidationErrorActionController.startAction(name: '_ValidationError.setMessage');
    try {
      return super.setMessage(newMessage);
    } finally {
      _$_ValidationErrorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearMessage() {
    final _$actionInfo = _$_ValidationErrorActionController.startAction(name: '_ValidationError.clearMessage');
    try {
      return super.clearMessage();
    } finally {
      _$_ValidationErrorActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
message: ${message}
    ''';
  }
}
