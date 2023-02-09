//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.counties.create;

typedef AdminAdminCountiesCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCountiesCreatePageStore pageStore,
});

typedef AdminAdminCountiesCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCountiesCreatePageStore pageStore,
  AdminCountyStore targetStore,
});

typedef AdminAdminCountiesCreatePostNameChanged = Function(dynamic value, {AdminAdminCountiesCreatePageStore pageStore, AdminCountyStore targetStore});

typedef AdminAdminCountiesCreateCreateCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminAdminCountiesCreatePageStore pageStore,
  AdminCountyStore targetStore,
});

typedef AdminAdminCountiesCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCountiesCreatePageStore pageStore,
  AdminCountyStore targetStore,
);
