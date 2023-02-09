//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.vote_definition.debate.table;

typedef AdminVoteDefinitionDebateTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionDebateTablePageStore pageStore,
});

typedef AdminVoteDefinitionDebateTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminVoteDefinitionDebateTablePageStore pageStore,
  AdminVoteDefinitionStore ownerStore,
});

typedef AdminVoteDefinitionDebateTablePageAdminVoteDefinitionDebateTableDataCell = DataCell Function(
  AdminDebateStore targetStore,
  BuildContext context,
);

typedef AdminVoteDefinitionDebateTablePageAdminVoteDefinitionDebateTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDebateStore targetStore,
  AdminVoteDefinitionDebateTablePageStore pageStore,
);

typedef AdminVoteDefinitionDebateTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminVoteDefinitionDebateTablePageStore pageStore,
);
