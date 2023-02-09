//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.activity_counties.update;

typedef AdminUserActivityCountiesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserActivityCountiesUpdatePageStore pageStore,
});

typedef AdminUserActivityCountiesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserActivityCountiesUpdatePageStore pageStore,
  AdminCountyStore targetStore,
});

typedef AdminUserActivityCountiesUpdatePostNameChanged = Function(dynamic value,
    {AdminUserActivityCountiesUpdatePageStore pageStore, AdminCountyStore targetStore});

typedef AdminUserActivityCountiesUpdatePageAdminCountyCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminUserActivityCountiesUpdatePageAdminCountyCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminUserActivityCountiesUpdatePageStore pageStore,
);

typedef AdminUserActivityCountiesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminUserActivityCountiesUpdatePageStore pageStore,
  AdminCountyStore targetStore,
);
