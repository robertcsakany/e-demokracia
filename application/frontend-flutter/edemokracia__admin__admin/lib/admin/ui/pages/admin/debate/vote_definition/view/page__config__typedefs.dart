//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.vote_definition.view;

typedef AdminDebateVoteDefinitionViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateVoteDefinitionViewPageStore pageStore,
});

typedef AdminDebateVoteDefinitionViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateVoteDefinitionViewPageStore pageStore,
  AdminDebateStore ownerStore,
  AdminVoteDefinitionStore targetStore,
});

typedef AdminDebateVoteDefinitionViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCell = DataCell Function(
  SelectAnswerVoteSelectionStore targetStore,
  BuildContext context,
);

typedef AdminDebateVoteDefinitionViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  SelectAnswerVoteSelectionStore targetStore,
  AdminDebateVoteDefinitionViewPageStore pageStore,
);

typedef AdminDebateVoteDefinitionViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateVoteDefinitionViewPageStore pageStore,
  AdminVoteDefinitionStore targetStore,
);
