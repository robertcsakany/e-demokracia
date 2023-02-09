//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue_category.owner.view;

typedef AdminIssueCategoryOwnerViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCategoryOwnerViewPageStore pageStore,
});

typedef AdminIssueCategoryOwnerViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCategoryOwnerViewPageStore pageStore,
  AdminIssueCategoryStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminIssueCategoryOwnerViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategoryOwnerViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminIssueCategoryOwnerViewPageStore pageStore,
);
typedef AdminIssueCategoryOwnerViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategoryOwnerViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminIssueCategoryOwnerViewPageStore pageStore,
);
typedef AdminIssueCategoryOwnerViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategoryOwnerViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminIssueCategoryOwnerViewPageStore pageStore,
);

typedef AdminIssueCategoryOwnerViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminIssueCategoryOwnerViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminIssueCategoryOwnerViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategoryOwnerViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCategoryOwnerViewPageStore pageStore,
  AdminUserStore targetStore,
);
