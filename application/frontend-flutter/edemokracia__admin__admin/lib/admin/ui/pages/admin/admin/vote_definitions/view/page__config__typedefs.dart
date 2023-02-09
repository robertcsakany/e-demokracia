//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.vote_definitions.view;

typedef AdminAdminVoteDefinitionsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminVoteDefinitionsViewPageStore pageStore,
});

typedef AdminAdminVoteDefinitionsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminVoteDefinitionsViewPageStore pageStore,
  AdminVoteDefinitionStore targetStore,
});

typedef AdminAdminVoteDefinitionsViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCell = DataCell Function(
  SelectAnswerVoteSelectionStore targetStore,
  BuildContext context,
);

typedef AdminAdminVoteDefinitionsViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  SelectAnswerVoteSelectionStore targetStore,
  AdminAdminVoteDefinitionsViewPageStore pageStore,
);

typedef AdminAdminVoteDefinitionsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminVoteDefinitionsViewPageStore pageStore,
  AdminVoteDefinitionStore targetStore,
);
