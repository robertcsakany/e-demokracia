//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.activity_counties.view;

typedef UserActivityCountiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserActivityCountiesViewPageStore pageStore,
});

typedef UserActivityCountiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserActivityCountiesViewPageStore pageStore,
  UserStore ownerStore,
  CountyStore targetStore,
});

typedef UserActivityCountiesViewPageTitleGenerator = String Function(
  BuildContext context,
  UserActivityCountiesViewPageStore pageStore,
  CountyStore targetStore,
);
