//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.city.districts.create;

typedef AdminCityDistrictsCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCityDistrictsCreatePageStore pageStore,
});

typedef AdminCityDistrictsCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCityDistrictsCreatePageStore pageStore,
  AdminCityStore ownerStore,
  AdminDistrictStore targetStore,
});

typedef AdminCityDistrictsCreatePostNameChanged = Function(dynamic value, {AdminCityDistrictsCreatePageStore pageStore, AdminDistrictStore targetStore});

typedef AdminCityDistrictsCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminCityDistrictsCreatePageStore pageStore,
  AdminDistrictStore targetStore,
);
