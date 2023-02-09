//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.resident_city.view;

typedef UserResidentCityViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserResidentCityViewPageStore pageStore,
});

typedef UserResidentCityViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserResidentCityViewPageStore pageStore,
  UserStore ownerStore,
  CityStore targetStore,
});

typedef UserResidentCityViewPageTitleGenerator = String Function(
  BuildContext context,
  UserResidentCityViewPageStore pageStore,
  CityStore targetStore,
);
