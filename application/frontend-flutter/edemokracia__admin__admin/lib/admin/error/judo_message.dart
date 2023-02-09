//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/error/judo_message.dart'
// Template name: lib/error/judo_message.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.error;

class JudoMessage implements FloatingMessage {
  JudoMessage(this._actionCallName, this._message, this._errorLevel);

  String _actionCallName;
  String _message;
  MessageLevel _errorLevel;
  String _created = DateTime.now().toUtc().toIso8601String();

  @override
  String get actionCallName => _actionCallName;
  @override
  String get message => _message;
  @override
  MessageLevel get messageLevel => _errorLevel;

  JudoMessage.fromJson(BuildContext context, Map<String, dynamic> json, String callName) {
    if (json == null) throw FormatException();
    try {
      this._message = (json[r'code'] == null) ? null : AppLocalizations.of(context).lookUpValue(context, json[r'code']);
      String level = (json[r'level'] == null) ? null : json[r'level'];
      this._errorLevel = level.toEnum(MessageLevel.values);
      this._actionCallName = AppLocalizations.of(context).lookUpValue(context, callName);
    } on Error {
      throw FormatException();
    } on Exception {
      throw FormatException();
    }
  }

  JudoMessage.fromList(BuildContext context, List<dynamic> jsonList, String callName, Map<String, ValidationError> validationMap) {
    if (jsonList == null) throw FormatException();

    try {
      this._message = AppLocalizations.of(context).lookUpValue(context, 'Please make sure all fields are filled in correctly.');
      this._errorLevel = MessageLevel.error;
      this._actionCallName = AppLocalizations.of(context).lookUpValue(context, callName);

      jsonList.forEach((element) {
        print(element);
        _setValidationErrorMessages(validationMap, element[r'location'], AppLocalizations.of(context).lookUpValue(context, element[r'code'] ?? ''));
      });
    } on Error {
      throw FormatException();
    } on Exception {
      throw FormatException();
    }
  }

  void _setValidationErrorMessages(Map<String, ValidationError> validationMap, String attributeName, String validationMessage) {
    if (validationMap == null || attributeName == null || validationMessage == null) return;
    validationMap[attributeName]?.setMessage(validationMessage);
  }

  static Map<String, dynamic> customErrorMessage(Map<String, dynamic> json) {
    return Map<String, dynamic>.from(json.values.elementAt(0));
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is JudoMessage && runtimeType == other.runtimeType && _created == other._created;

  @override
  int get hashCode => _created.hashCode;
}
