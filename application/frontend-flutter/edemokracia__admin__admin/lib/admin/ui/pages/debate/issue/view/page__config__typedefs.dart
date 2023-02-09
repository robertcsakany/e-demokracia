//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.debate.issue.view;

typedef DebateIssueViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  DebateIssueViewPageStore pageStore,
});

typedef DebateIssueViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  DebateIssueViewPageStore pageStore,
  DebateStore ownerStore,
  IssueStore targetStore,
});

typedef DebateIssueViewPageTitleGenerator = String Function(
  BuildContext context,
  DebateIssueViewPageStore pageStore,
  IssueStore targetStore,
);
