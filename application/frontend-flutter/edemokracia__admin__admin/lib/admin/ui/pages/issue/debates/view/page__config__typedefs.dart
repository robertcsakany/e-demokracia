//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue.debates.view;

typedef IssueDebatesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueDebatesViewPageStore pageStore,
});

typedef IssueDebatesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueDebatesViewPageStore pageStore,
  IssueStore ownerStore,
  DebateStore targetStore,
});

typedef IssueDebatesViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueDebatesViewPageStore pageStore,
  DebateStore targetStore,
);
