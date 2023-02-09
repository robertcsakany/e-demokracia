//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.issues.update;

typedef AdminAdminIssuesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminIssuesUpdatePageStore pageStore,
});

typedef AdminAdminIssuesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminIssuesUpdatePageStore pageStore,
  AdminIssueStore targetStore,
});

typedef AdminAdminIssuesUpdatePostTitleChanged = Function(dynamic value, {AdminAdminIssuesUpdatePageStore pageStore, AdminIssueStore targetStore});

typedef AdminAdminIssuesUpdatePostStatusChanged = Function(dynamic value, {AdminAdminIssuesUpdatePageStore pageStore, AdminIssueStore targetStore});

typedef AdminAdminIssuesUpdatePostDescriptionChanged = Function(dynamic value, {AdminAdminIssuesUpdatePageStore pageStore, AdminIssueStore targetStore});

typedef AdminAdminIssuesUpdatePageAdminIssueAttachmentsTableDataCell = DataCell Function(
  AdminIssueAttachmentStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesUpdatePageAdminIssueAttachmentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueAttachmentStore targetStore,
  AdminAdminIssuesUpdatePageStore pageStore,
);
typedef AdminAdminIssuesUpdatePageAdminIssueCategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesUpdatePageAdminIssueCategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminAdminIssuesUpdatePageStore pageStore,
);
typedef AdminAdminIssuesUpdatePageAdminIssueCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesUpdatePageAdminIssueCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminAdminIssuesUpdatePageStore pageStore,
);
typedef AdminAdminIssuesUpdatePageAdminIssueDebatesTableDataCell = DataCell Function(
  AdminIssueDebateStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesUpdatePageAdminIssueDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueDebateStore targetStore,
  AdminAdminIssuesUpdatePageStore pageStore,
);

typedef AdminAdminIssuesUpdatePageAdminIssueOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminIssuesUpdatePageStore pageStore,
  AdminIssueStore targetStore,
);
