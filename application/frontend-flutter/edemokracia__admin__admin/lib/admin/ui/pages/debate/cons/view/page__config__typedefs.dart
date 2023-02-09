//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.debate.cons.view;

typedef DebateConsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  DebateConsViewPageStore pageStore,
});

typedef DebateConsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  DebateConsViewPageStore pageStore,
  DebateStore ownerStore,
  ConStore targetStore,
});

typedef DebateConsViewPageTitleGenerator = String Function(
  BuildContext context,
  DebateConsViewPageStore pageStore,
  ConStore targetStore,
);
