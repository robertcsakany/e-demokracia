//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/drawer_items.dart'
// Template name: lib/ui/drawer_items.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:flutter/material.dart';
import 'package:judo_icon_helper/icons_helper.dart';
import 'package:edemokracia/admin/ui/routes/router.gr.dart';
import 'package:edemokracia/admin/utilities/package.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';

class EdemokraciaAdminAdminNavigationItems {
  static List<NavigationItem> navigationItems = [
    NavigationItem(
      route: Routes.adminAdminDashboardhomeViewPage,
      leading: Icon(getIconByString('home')),
      title: 'Dashboard',
      items: [],
    ),
    NavigationItem(
      route: Routes.adminAdminUsersTablePage,
      leading: Icon(getIconByString('account')),
      title: 'Users',
      items: [],
    ),
    NavigationItem(
      isGroup: true,
      leading: Icon(getIconByString('toy-brick')),
      title: 'Basic data',
      items: [
        NavigationItem(
          route: Routes.adminAdminCategoriesTablePage,
          leading: Icon(getIconByString('file-tree')),
          title: 'Categories',
        ),
        NavigationItem(
          route: Routes.adminAdminCountiesTablePage,
          leading: Icon(getIconByString('map')),
          title: 'Counties',
        ),
      ],
    ),
    NavigationItem(
      isGroup: true,
      leading: Icon(getIconByString('texture')),
      title: 'Issues, Debates',
      items: [
        NavigationItem(
          route: Routes.adminAdminIssuesTablePage,
          leading: Icon(getIconByString('ticket-confirmation')),
          title: 'Issues',
        ),
        NavigationItem(
          route: Routes.adminAdminDebatesTablePage,
          leading: Icon(getIconByString('wechat')),
          title: 'Debates',
        ),
      ],
    ),
    NavigationItem(
      route: Routes.adminAdminVoteDefinitionsTablePage,
      leading: Icon(getIconByString('vote')),
      title: 'Votes',
      items: [],
    ),
  ];
}
