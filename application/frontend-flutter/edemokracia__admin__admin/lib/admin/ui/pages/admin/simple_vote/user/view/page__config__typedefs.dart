//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.simple_vote.user.view;

typedef AdminSimpleVoteUserViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminSimpleVoteUserViewPageStore pageStore,
});

typedef AdminSimpleVoteUserViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminSimpleVoteUserViewPageStore pageStore,
  AdminSimpleVoteStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminSimpleVoteUserViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminSimpleVoteUserViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminSimpleVoteUserViewPageStore pageStore,
);
typedef AdminSimpleVoteUserViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminSimpleVoteUserViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminSimpleVoteUserViewPageStore pageStore,
);
typedef AdminSimpleVoteUserViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminSimpleVoteUserViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminSimpleVoteUserViewPageStore pageStore,
);

typedef AdminSimpleVoteUserViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminSimpleVoteUserViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminSimpleVoteUserViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminSimpleVoteUserViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminSimpleVoteUserViewPageStore pageStore,
  AdminUserStore targetStore,
);
