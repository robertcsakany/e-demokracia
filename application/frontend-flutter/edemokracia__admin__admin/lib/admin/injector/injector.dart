//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/injector/injector.dart'
// Template name: lib/injector/injector.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:edemokracia/admin/injector/injector.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(locator);
