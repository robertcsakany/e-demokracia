//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.city.districts.view;

typedef AdminCityDistrictsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCityDistrictsViewPageStore pageStore,
});

typedef AdminCityDistrictsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCityDistrictsViewPageStore pageStore,
  AdminCityStore ownerStore,
  AdminDistrictStore targetStore,
});

typedef AdminCityDistrictsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminCityDistrictsViewPageStore pageStore,
  AdminDistrictStore targetStore,
);
