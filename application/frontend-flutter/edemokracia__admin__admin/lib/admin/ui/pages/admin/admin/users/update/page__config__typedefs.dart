//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.users.update;

typedef AdminAdminUsersUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminUsersUpdatePageStore pageStore,
});

typedef AdminAdminUsersUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminUsersUpdatePageStore pageStore,
  AdminUserStore targetStore,
});

typedef AdminAdminUsersUpdatePostUserNameChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePostIsAdminChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePostCreatedChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePostFirstNameChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePostLastNameChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePostEmailChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePostPhoneChanged = Function(dynamic value, {AdminAdminUsersUpdatePageStore pageStore, AdminUserStore targetStore});

typedef AdminAdminUsersUpdatePageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersUpdatePageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminAdminUsersUpdatePageStore pageStore,
);
typedef AdminAdminUsersUpdatePageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersUpdatePageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminAdminUsersUpdatePageStore pageStore,
);
typedef AdminAdminUsersUpdatePageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersUpdatePageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminAdminUsersUpdatePageStore pageStore,
);

typedef AdminAdminUsersUpdatePageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminAdminUsersUpdatePageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminAdminUsersUpdatePageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminUsersUpdatePageStore pageStore,
  AdminUserStore targetStore,
);
