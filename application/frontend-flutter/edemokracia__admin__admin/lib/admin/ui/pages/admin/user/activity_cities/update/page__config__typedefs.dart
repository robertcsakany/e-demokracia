//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.activity_cities.update;

typedef AdminUserActivityCitiesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserActivityCitiesUpdatePageStore pageStore,
});

typedef AdminUserActivityCitiesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserActivityCitiesUpdatePageStore pageStore,
  AdminCityStore targetStore,
});

typedef AdminUserActivityCitiesUpdatePostNameChanged = Function(dynamic value, {AdminUserActivityCitiesUpdatePageStore pageStore, AdminCityStore targetStore});

typedef AdminUserActivityCitiesUpdatePageAdminCityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminUserActivityCitiesUpdatePageAdminCityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminUserActivityCitiesUpdatePageStore pageStore,
);

typedef AdminUserActivityCitiesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminUserActivityCitiesUpdatePageStore pageStore,
  AdminCityStore targetStore,
);
