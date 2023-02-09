//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.debates.update;

typedef AdminAdminDebatesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminDebatesUpdatePageStore pageStore,
});

typedef AdminAdminDebatesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminDebatesUpdatePageStore pageStore,
  AdminDebateStore targetStore,
});

typedef AdminAdminDebatesUpdatePostTitleChanged = Function(dynamic value, {AdminAdminDebatesUpdatePageStore pageStore, AdminDebateStore targetStore});

typedef AdminAdminDebatesUpdatePostStatusChanged = Function(dynamic value, {AdminAdminDebatesUpdatePageStore pageStore, AdminDebateStore targetStore});

typedef AdminAdminDebatesUpdatePostCloseAtChanged = Function(dynamic value, {AdminAdminDebatesUpdatePageStore pageStore, AdminDebateStore targetStore});

typedef AdminAdminDebatesUpdatePostDescriptionChanged = Function(dynamic value, {AdminAdminDebatesUpdatePageStore pageStore, AdminDebateStore targetStore});

typedef AdminAdminDebatesUpdatePageAdminDebateConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesUpdatePageAdminDebateConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminAdminDebatesUpdatePageStore pageStore,
);
typedef AdminAdminDebatesUpdatePageAdminDebateProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesUpdatePageAdminDebateProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminAdminDebatesUpdatePageStore pageStore,
);
typedef AdminAdminDebatesUpdatePageAdminDebateCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesUpdatePageAdminDebateCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminAdminDebatesUpdatePageStore pageStore,
);

typedef AdminAdminDebatesUpdatePageAdminDebateCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);
typedef AdminAdminDebatesUpdatePageAdminDebateIssueTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);
typedef AdminAdminDebatesUpdatePageAdminDebateVoteDefinitionTableDataCell = DataCell Function(
  AdminVoteDefinitionStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminDebatesUpdatePageStore pageStore,
  AdminDebateStore targetStore,
);
