//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.resident_county.view;

typedef UserResidentCountyViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserResidentCountyViewPageStore pageStore,
});

typedef UserResidentCountyViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserResidentCountyViewPageStore pageStore,
  UserStore ownerStore,
  CountyStore targetStore,
});

typedef UserResidentCountyViewPageTitleGenerator = String Function(
  BuildContext context,
  UserResidentCountyViewPageStore pageStore,
  CountyStore targetStore,
);
