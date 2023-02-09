//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/main.dart'
// Template name: main.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:edemokracia/admin/rest/package.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:edemokracia/admin/auth/auth.dart';

import 'admin/app_theme.dart';
import 'admin/injector/injector.dart';
import 'admin/app.dart';
import 'admin/utilities/package.dart';

void main() async {
  JudoComponentCustomizer.set(new AppDesignCustomizer());

  configureDependencies();

  var apiUrl = await UrlUtil.getApiUrl();

  // Call the meta data with no token refresh interceptor
  JudoApiClient _apiClient = JudoApiClient(baseOptions: BaseOptions(baseUrl: apiUrl));
  Auth _auth = Auth();
  locator.registerSingleton<JudoApiClient>(_apiClient);
  locator.registerSingleton<Auth>(_auth);

  await _auth.init(apiUrl);

  runApp(EdemokraciaAdminAdminApplication());
}
