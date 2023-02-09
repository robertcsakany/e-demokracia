//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.debates.view;

typedef AdminIssueDebatesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueDebatesViewPageStore pageStore,
});

typedef AdminIssueDebatesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueDebatesViewPageStore pageStore,
  AdminIssueStore ownerStore,
  AdminIssueDebateStore targetStore,
});

typedef AdminIssueDebatesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueDebatesViewPageStore pageStore,
  AdminIssueDebateStore targetStore,
);
