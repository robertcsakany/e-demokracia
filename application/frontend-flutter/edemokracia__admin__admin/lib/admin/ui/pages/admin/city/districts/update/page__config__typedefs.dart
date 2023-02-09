//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.city.districts.update;

typedef AdminCityDistrictsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCityDistrictsUpdatePageStore pageStore,
});

typedef AdminCityDistrictsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCityDistrictsUpdatePageStore pageStore,
  AdminDistrictStore targetStore,
});

typedef AdminCityDistrictsUpdatePostNameChanged = Function(dynamic value, {AdminCityDistrictsUpdatePageStore pageStore, AdminDistrictStore targetStore});

typedef AdminCityDistrictsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminCityDistrictsUpdatePageStore pageStore,
  AdminDistrictStore targetStore,
);
