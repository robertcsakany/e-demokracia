//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.comment.created_by.view;

typedef AdminCommentCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCommentCreatedByViewPageStore pageStore,
});

typedef AdminCommentCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCommentCreatedByViewPageStore pageStore,
  AdminCommentStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminCommentCreatedByViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminCommentCreatedByViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminCommentCreatedByViewPageStore pageStore,
);
typedef AdminCommentCreatedByViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminCommentCreatedByViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminCommentCreatedByViewPageStore pageStore,
);
typedef AdminCommentCreatedByViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminCommentCreatedByViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminCommentCreatedByViewPageStore pageStore,
);

typedef AdminCommentCreatedByViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminCommentCreatedByViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminCommentCreatedByViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminCommentCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminCommentCreatedByViewPageStore pageStore,
  AdminUserStore targetStore,
);
