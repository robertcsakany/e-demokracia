// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../error/package.dart' as _i4;
import '../repository/package.dart' as _i3;
import '../ui/navigation/navigation_registry.dart' as _i5;
import '../ui/navigation/navigation_state.dart' as _i6;
import '../ui/utilities/package.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AdminAdminRepository>(() => _i3.AdminAdminRepository());
  gh.lazySingleton<_i4.MessageHandler>(() => _i4.MessageHandler());
  gh.lazySingleton<_i5.NavigationRegistry>(() => _i5.NavigationRegistry());
  gh.lazySingleton<_i6.NavigationState>(() => _i6.NavigationState());
  gh.lazySingleton<_i7.TabService>(() => _i7.TabService());
  gh.lazySingleton<_i7.TableService>(() => _i7.TableService());
  return get;
}
