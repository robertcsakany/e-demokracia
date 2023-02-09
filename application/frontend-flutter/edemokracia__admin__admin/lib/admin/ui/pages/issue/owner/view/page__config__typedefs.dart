//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue.owner.view;

typedef IssueOwnerViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueOwnerViewPageStore pageStore,
});

typedef IssueOwnerViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueOwnerViewPageStore pageStore,
  IssueStore ownerStore,
  UserStore targetStore,
});

typedef IssueOwnerViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueOwnerViewPageStore pageStore,
  UserStore targetStore,
);
