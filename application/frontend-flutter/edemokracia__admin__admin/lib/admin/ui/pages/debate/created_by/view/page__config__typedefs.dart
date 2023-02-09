//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.debate.created_by.view;

typedef DebateCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  DebateCreatedByViewPageStore pageStore,
});

typedef DebateCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  DebateCreatedByViewPageStore pageStore,
  DebateStore ownerStore,
  UserStore targetStore,
});

typedef DebateCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  DebateCreatedByViewPageStore pageStore,
  UserStore targetStore,
);
