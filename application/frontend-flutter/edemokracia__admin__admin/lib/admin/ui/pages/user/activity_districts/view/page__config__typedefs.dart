//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.activity_districts.view;

typedef UserActivityDistrictsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserActivityDistrictsViewPageStore pageStore,
});

typedef UserActivityDistrictsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserActivityDistrictsViewPageStore pageStore,
  UserStore ownerStore,
  DistrictStore targetStore,
});

typedef UserActivityDistrictsViewPageTitleGenerator = String Function(
  BuildContext context,
  UserActivityDistrictsViewPageStore pageStore,
  DistrictStore targetStore,
);
