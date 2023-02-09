//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.con.created_by.view;

typedef ConCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ConCreatedByViewPageStore pageStore,
});

typedef ConCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ConCreatedByViewPageStore pageStore,
  ConStore ownerStore,
  UserStore targetStore,
});

typedef ConCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  ConCreatedByViewPageStore pageStore,
  UserStore targetStore,
);
