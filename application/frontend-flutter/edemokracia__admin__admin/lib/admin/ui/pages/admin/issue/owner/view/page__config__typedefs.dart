//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.owner.view;

typedef AdminIssueOwnerViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueOwnerViewPageStore pageStore,
});

typedef AdminIssueOwnerViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueOwnerViewPageStore pageStore,
  AdminIssueStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminIssueOwnerViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminIssueOwnerViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminIssueOwnerViewPageStore pageStore,
);
typedef AdminIssueOwnerViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminIssueOwnerViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminIssueOwnerViewPageStore pageStore,
);
typedef AdminIssueOwnerViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminIssueOwnerViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminIssueOwnerViewPageStore pageStore,
);

typedef AdminIssueOwnerViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminIssueOwnerViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminIssueOwnerViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminIssueOwnerViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueOwnerViewPageStore pageStore,
  AdminUserStore targetStore,
);
