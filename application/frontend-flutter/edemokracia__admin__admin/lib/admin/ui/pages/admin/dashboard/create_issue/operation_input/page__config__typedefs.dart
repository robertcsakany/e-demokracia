//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.create_issue.operation_input;

typedef AdminDashboardCreateIssueOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateIssueOperationInputPageStore pageStore,
  AdminCreateIssueInputStore targetStore,
});

typedef AdminDashboardCreateIssueOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateIssueOperationInputPageStore pageStore,
  AdminCreateIssueInputStore targetStore,
});

typedef AdminDashboardCreateIssueOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateIssueOperationInputPageStore pageStore,
});

typedef AdminDashboardCreateIssueOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDashboardCreateIssueOperationInputPageStore pageStore,
  AdminCreateIssueInputStore targetStore,
});

typedef AdminDashboardCreateIssueOperationInputPostTitleChanged = Function(dynamic value,
    {AdminDashboardCreateIssueOperationInputPageStore pageStore, AdminCreateIssueInputStore targetStore});

typedef AdminDashboardCreateIssueOperationInputPostDescriptionChanged = Function(dynamic value,
    {AdminDashboardCreateIssueOperationInputPageStore pageStore, AdminCreateIssueInputStore targetStore});

typedef AdminDashboardCreateIssueOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDashboardCreateIssueOperationInputPageStore pageStore,
  AdminCreateIssueInputStore targetStore,
);
