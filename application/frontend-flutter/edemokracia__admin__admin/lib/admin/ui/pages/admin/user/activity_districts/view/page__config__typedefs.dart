//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.activity_districts.view;

typedef AdminUserActivityDistrictsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserActivityDistrictsViewPageStore pageStore,
});

typedef AdminUserActivityDistrictsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserActivityDistrictsViewPageStore pageStore,
  AdminUserStore ownerStore,
  AdminDistrictStore targetStore,
});

typedef AdminUserActivityDistrictsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminUserActivityDistrictsViewPageStore pageStore,
  AdminDistrictStore targetStore,
);
