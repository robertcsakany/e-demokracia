//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.vote_definition.debate.view;

typedef AdminVoteDefinitionDebateViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionDebateViewPageStore pageStore,
});

typedef AdminVoteDefinitionDebateViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminVoteDefinitionDebateViewPageStore pageStore,
  AdminVoteDefinitionStore ownerStore,
  AdminDebateStore targetStore,
});

typedef AdminVoteDefinitionDebateViewPageAdminDebateConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminVoteDefinitionDebateViewPageAdminDebateConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminVoteDefinitionDebateViewPageStore pageStore,
);
typedef AdminVoteDefinitionDebateViewPageAdminDebateProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminVoteDefinitionDebateViewPageAdminDebateProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminVoteDefinitionDebateViewPageStore pageStore,
);
typedef AdminVoteDefinitionDebateViewPageAdminDebateCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminVoteDefinitionDebateViewPageAdminDebateCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminVoteDefinitionDebateViewPageStore pageStore,
);

typedef AdminVoteDefinitionDebateViewPageAdminDebateCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);
typedef AdminVoteDefinitionDebateViewPageAdminDebateIssueTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);
typedef AdminVoteDefinitionDebateViewPageAdminDebateVoteDefinitionTableDataCell = DataCell Function(
  AdminVoteDefinitionStore targetStore,
  BuildContext context,
);

typedef AdminVoteDefinitionDebateViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminVoteDefinitionDebateViewPageStore pageStore,
  AdminDebateStore targetStore,
);
