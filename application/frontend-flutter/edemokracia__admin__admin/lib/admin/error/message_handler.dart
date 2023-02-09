//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/error/message_handler.dart'
// Template name: lib/error/message_handler.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.error;

@lazySingleton
class MessageHandler extends _MessageHandler with _$MessageHandler {}

abstract class _MessageHandler with Store {
  final dispose = reaction((_) => locator<NavigationState>().breadcrumbItems.length, (_) => locator<MessageHandler>()._clearMessageStack());

  @observable
  ObservableList<JudoMessage> messageStack = <JudoMessage>[].asObservable();

  @action
  void handleApiException(BuildContext context, dynamic exception, String callName, [Map<String, ValidationError> validationMap]) {
    if (context == null || exception == null) {
      print('Context not registered or exception is null');
      return;
    }

    try {
      if (exception is ApiException && exception.message != null) {
        var decodedJson = json.decode(exception.message);
        if (exception.code == 422) {
          showCustomErrorFault(context, JudoMessage.customErrorMessage(decodedJson), callName);
        } else if (exception.code == 400) {
          _pushMessage(JudoMessage.fromList(context, decodedJson, callName, validationMap));
        } else {
          _pushMessage(JudoMessage.fromJson(context, decodedJson, callName));
        }
      } else {
        showUnexpectedErrorMessage(context, callName);
      }
    } on FormatException {
      showUnexpectedErrorMessage(context, callName);
    }
  }

  @action
  void showUnexpectedErrorMessage(BuildContext context, String callName) {
    _pushMessage(JudoMessage(AppLocalizations.of(context).lookUpValue(context, callName ?? ''),
        AppLocalizations.of(context).lookUpValue(context, 'Something went wrong. Please contact with the system admins.'), MessageLevel.error));
  }

  @action
  void showSuccessMessage(BuildContext context, String message, [String callName]) {
    _pushMessage(JudoMessage(
        AppLocalizations.of(context).lookUpValue(context, callName ?? ''), AppLocalizations.of(context).lookUpValue(context, message), MessageLevel.success));
  }

  @action
  void showInfoMessage(BuildContext context, String message, [String callName]) {
    _pushMessage(JudoMessage(
        AppLocalizations.of(context).lookUpValue(context, callName ?? ''), AppLocalizations.of(context).lookUpValue(context, message), MessageLevel.info));
  }

  @action
  void _pushMessage(JudoMessage message) {
    messageStack.insert(0, message);

    switch (message.messageLevel) {
      case MessageLevel.error:
        break;
      case MessageLevel.info:
        _removeMessageDelayed(message, 1500);
        break;
      case MessageLevel.warning:
        _removeMessageDelayed(message, 3000);
        break;
      case MessageLevel.success:
        _removeMessageDelayed(message, 4500);
        break;
    }

    messageStack = messageStack;
  }

  @action
  void popMessage() {
    if (messageStack.isNotEmpty) {
      messageStack.removeAt(0);
      messageStack = messageStack;
    }
  }

  @action
  void _removeMessageDelayed(JudoMessage message, int milliseconds) {
    Future.delayed(Duration(milliseconds: milliseconds), () {
      messageStack.remove(message);
      messageStack = messageStack;
    });
  }

  @action
  void _clearMessageStack() {
    if (messageStack.isNotEmpty) {
      messageStack.clear();
      messageStack = messageStack;
    }
  }

  void showCustomErrorFault(BuildContext context, Map<String, dynamic> faultMap, String callName) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Theme.of(context).errorColor,
                  size: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    AppLocalizations.of(context).lookUpValue(context, 'Error'),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  AppLocalizations.of(context).lookUpValue(context, callName),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
        content: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: faultMap.entries
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '- ' + AppLocalizations.of(context).lookUpValue(context, e.key) + ':',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  AppLocalizations.of(context).lookUpValue(context, e.value.toString()),
                                  style: TextStyle(fontWeight: FontWeight.w400, color: Theme.of(context).primaryColor),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: Text('Ok'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
