//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.users.view;

typedef AdminAdminUsersViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminUsersViewPageStore pageStore,
});

typedef AdminAdminUsersViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminUsersViewPageStore pageStore,
  AdminUserStore targetStore,
});

typedef AdminAdminUsersViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminAdminUsersViewPageStore pageStore,
);
typedef AdminAdminUsersViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminAdminUsersViewPageStore pageStore,
);
typedef AdminAdminUsersViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminAdminUsersViewPageStore pageStore,
);

typedef AdminAdminUsersViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminAdminUsersViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminAdminUsersViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminUsersViewPageStore pageStore,
  AdminUserStore targetStore,
);
