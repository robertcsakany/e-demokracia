//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.county.cities.view;

typedef CountyCitiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  CountyCitiesViewPageStore pageStore,
});

typedef CountyCitiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  CountyCitiesViewPageStore pageStore,
  CountyStore ownerStore,
  CityStore targetStore,
});

typedef CountyCitiesViewPageTitleGenerator = String Function(
  BuildContext context,
  CountyCitiesViewPageStore pageStore,
  CityStore targetStore,
);
