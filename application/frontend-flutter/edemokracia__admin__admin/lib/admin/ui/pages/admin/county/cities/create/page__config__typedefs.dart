//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.county.cities.create;

typedef AdminCountyCitiesCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCountyCitiesCreatePageStore pageStore,
});

typedef AdminCountyCitiesCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCountyCitiesCreatePageStore pageStore,
  AdminCountyStore ownerStore,
  AdminCityStore targetStore,
});

typedef AdminCountyCitiesCreatePostNameChanged = Function(dynamic value, {AdminCountyCitiesCreatePageStore pageStore, AdminCityStore targetStore});

typedef AdminCountyCitiesCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminCountyCitiesCreatePageStore pageStore,
  AdminCityStore targetStore,
);
