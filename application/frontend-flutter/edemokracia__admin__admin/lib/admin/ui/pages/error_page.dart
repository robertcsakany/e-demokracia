//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #pagesFolderPath(#application.actor)+'error_page.dart'
// Template name: lib/ui/pages/error_page.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages;

class EdemokraciaAdminAdminErrorPage extends StatefulWidget {
  final int errorCode;
  final String errorMessage;
  final String errorDescription;
  final Icon icon;
  final String title;
  final String stackTrace;

  EdemokraciaAdminAdminErrorPage({this.errorCode, @required this.errorMessage, this.errorDescription, this.stackTrace, this.icon, this.title});

  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<EdemokraciaAdminAdminErrorPage> {
  _ErrorPageState() {
    final navigation = locator<NavigationState>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(AppLocalizations.of(context).lookUpValue(context, widget.title ?? 'Error'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
            if (widget.icon != null) widget.icon,
            if (widget.errorCode != null) Text(widget.errorCode.toString()),
            if (widget.errorMessage != null) Text(widget.errorMessage),
            if (widget.errorDescription != null) Text(widget.errorDescription),
            if (widget.stackTrace != null) Text(widget.stackTrace),
          ]),
        ),
      )
    ]);
  }
}
