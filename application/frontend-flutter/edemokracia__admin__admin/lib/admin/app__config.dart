import 'dart:ui';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:edemokracia/admin/app__config__typedefs.dart';

class AppConfig extends AppConfigType {
  static const List<AutoRoute> additionalRoutes = [];

  const AppConfig() : super();

  Locale localeResolutionCallback(Locale locale, Iterable<Locale> supportedLocales) {
    return locale;
  }
}
