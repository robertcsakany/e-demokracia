//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue.created_by.view;

typedef IssueCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueCreatedByViewPageStore pageStore,
});

typedef IssueCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueCreatedByViewPageStore pageStore,
  IssueStore ownerStore,
  UserStore targetStore,
});

typedef IssueCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueCreatedByViewPageStore pageStore,
  UserStore targetStore,
);
