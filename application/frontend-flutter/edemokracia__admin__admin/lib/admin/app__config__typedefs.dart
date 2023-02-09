import 'dart:ui';
import 'package:auto_route/auto_route_annotations.dart';

class AppConfigType {
  static const List<AutoRoute> additionalRoutes = [];

  const AppConfigType();

  Locale localeResolutionCallback(Locale locale, Iterable<Locale> supportedLocales) {
    return locale;
  }
}
