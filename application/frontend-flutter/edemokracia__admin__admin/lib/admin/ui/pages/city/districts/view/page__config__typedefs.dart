//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.city.districts.view;

typedef CityDistrictsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  CityDistrictsViewPageStore pageStore,
});

typedef CityDistrictsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  CityDistrictsViewPageStore pageStore,
  CityStore ownerStore,
  DistrictStore targetStore,
});

typedef CityDistrictsViewPageTitleGenerator = String Function(
  BuildContext context,
  CityDistrictsViewPageStore pageStore,
  DistrictStore targetStore,
);
