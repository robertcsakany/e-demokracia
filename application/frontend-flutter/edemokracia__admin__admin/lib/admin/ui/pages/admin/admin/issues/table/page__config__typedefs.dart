//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.issues.table;

typedef AdminAdminIssuesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminIssuesTablePageStore pageStore,
});

typedef AdminAdminIssuesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminIssuesTablePageStore pageStore,
});

typedef AdminAdminIssuesTablePageAdminAdminIssuesTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesTablePageAdminAdminIssuesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueStore targetStore,
  AdminAdminIssuesTablePageStore pageStore,
);

typedef AdminAdminIssuesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminIssuesTablePageStore pageStore,
);
