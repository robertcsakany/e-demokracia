//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.pro.pros.view;

typedef ProProsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ProProsViewPageStore pageStore,
});

typedef ProProsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ProProsViewPageStore pageStore,
  ProStore ownerStore,
  ProStore targetStore,
});

typedef ProProsViewPageTitleGenerator = String Function(
  BuildContext context,
  ProProsViewPageStore pageStore,
  ProStore targetStore,
);
