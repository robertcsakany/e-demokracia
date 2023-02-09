//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.debates.view;

typedef AdminAdminDebatesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminDebatesViewPageStore pageStore,
});

typedef AdminAdminDebatesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminDebatesViewPageStore pageStore,
  AdminDebateStore targetStore,
});

typedef AdminAdminDebatesViewPageAdminDebateConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesViewPageAdminDebateConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminAdminDebatesViewPageStore pageStore,
);
typedef AdminAdminDebatesViewPageAdminDebateProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesViewPageAdminDebateProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminAdminDebatesViewPageStore pageStore,
);
typedef AdminAdminDebatesViewPageAdminDebateCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesViewPageAdminDebateCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminAdminDebatesViewPageStore pageStore,
);

typedef AdminAdminDebatesViewPageAdminDebateCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);
typedef AdminAdminDebatesViewPageAdminDebateIssueTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);
typedef AdminAdminDebatesViewPageAdminDebateVoteDefinitionTableDataCell = DataCell Function(
  AdminVoteDefinitionStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminDebatesViewPageStore pageStore,
  AdminDebateStore targetStore,
);
