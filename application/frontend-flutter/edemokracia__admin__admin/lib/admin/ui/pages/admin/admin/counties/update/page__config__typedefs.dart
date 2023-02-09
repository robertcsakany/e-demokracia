//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.counties.update;

typedef AdminAdminCountiesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCountiesUpdatePageStore pageStore,
});

typedef AdminAdminCountiesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCountiesUpdatePageStore pageStore,
  AdminCountyStore targetStore,
});

typedef AdminAdminCountiesUpdatePostNameChanged = Function(dynamic value, {AdminAdminCountiesUpdatePageStore pageStore, AdminCountyStore targetStore});

typedef AdminAdminCountiesUpdatePageAdminCountyCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminAdminCountiesUpdatePageAdminCountyCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminAdminCountiesUpdatePageStore pageStore,
);

typedef AdminAdminCountiesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCountiesUpdatePageStore pageStore,
  AdminCountyStore targetStore,
);
