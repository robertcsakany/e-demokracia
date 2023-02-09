//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.activity_districts.update;

typedef AdminUserActivityDistrictsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserActivityDistrictsUpdatePageStore pageStore,
});

typedef AdminUserActivityDistrictsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserActivityDistrictsUpdatePageStore pageStore,
  AdminDistrictStore targetStore,
});

typedef AdminUserActivityDistrictsUpdatePostNameChanged = Function(dynamic value,
    {AdminUserActivityDistrictsUpdatePageStore pageStore, AdminDistrictStore targetStore});

typedef AdminUserActivityDistrictsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminUserActivityDistrictsUpdatePageStore pageStore,
  AdminDistrictStore targetStore,
);
