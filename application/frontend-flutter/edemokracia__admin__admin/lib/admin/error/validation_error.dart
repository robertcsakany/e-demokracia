//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/error/validation_error.dart'
// Template name: lib/error/validation_error.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.error;

class ValidationError extends _ValidationError with _$ValidationError {}

abstract class _ValidationError with Store {
  @observable
  String message;

  @action
  void setMessage(String newMessage) {
    if (message != newMessage) {
      message = newMessage;
    }
  }

  @action
  void clearMessage() {
    if (message != null) {
      message = null;
    }
  }
}
