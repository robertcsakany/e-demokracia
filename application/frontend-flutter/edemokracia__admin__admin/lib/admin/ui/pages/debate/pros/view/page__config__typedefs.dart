//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.debate.pros.view;

typedef DebateProsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  DebateProsViewPageStore pageStore,
});

typedef DebateProsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  DebateProsViewPageStore pageStore,
  DebateStore ownerStore,
  ProStore targetStore,
});

typedef DebateProsViewPageTitleGenerator = String Function(
  BuildContext context,
  DebateProsViewPageStore pageStore,
  ProStore targetStore,
);
