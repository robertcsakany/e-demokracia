//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.created_by.view;

typedef AdminIssueCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreatedByViewPageStore pageStore,
});

typedef AdminIssueCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCreatedByViewPageStore pageStore,
  AdminIssueStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminIssueCreatedByViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminIssueCreatedByViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminIssueCreatedByViewPageStore pageStore,
);
typedef AdminIssueCreatedByViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminIssueCreatedByViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminIssueCreatedByViewPageStore pageStore,
);
typedef AdminIssueCreatedByViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminIssueCreatedByViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminIssueCreatedByViewPageStore pageStore,
);

typedef AdminIssueCreatedByViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminIssueCreatedByViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminIssueCreatedByViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminIssueCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCreatedByViewPageStore pageStore,
  AdminUserStore targetStore,
);
