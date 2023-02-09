//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/navigation/navigation_store.dart'
// Template name: lib/ui/navigation/navigation_store.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:edemokracia/admin/rest/package.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/repository/package.dart';
import 'package:edemokracia/admin/store/package.dart';
import 'package:edemokracia/admin/error/package.dart';
import '../routes/router.gr.dart';
import 'package:mobx/mobx.dart';

part 'navigation_store.g.dart';

class NavigationStore extends _NavigationStore with _$NavigationStore {}

abstract class _NavigationStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();

  @action
  Future<AdminDashboardStore> getDashboardhome() async {
    return await _actorRepository.edemokraciaAdminAdminDashboardhomeGet(mask: '{}');
  }
}
