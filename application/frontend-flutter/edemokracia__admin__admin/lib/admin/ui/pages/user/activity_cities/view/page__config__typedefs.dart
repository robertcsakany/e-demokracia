//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.activity_cities.view;

typedef UserActivityCitiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserActivityCitiesViewPageStore pageStore,
});

typedef UserActivityCitiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserActivityCitiesViewPageStore pageStore,
  UserStore ownerStore,
  CityStore targetStore,
});

typedef UserActivityCitiesViewPageTitleGenerator = String Function(
  BuildContext context,
  UserActivityCitiesViewPageStore pageStore,
  CityStore targetStore,
);
