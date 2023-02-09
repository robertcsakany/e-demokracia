//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.vote_definitions.table;

typedef AdminAdminVoteDefinitionsTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminVoteDefinitionsTablePageStore pageStore,
});

typedef AdminAdminVoteDefinitionsTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminVoteDefinitionsTablePageStore pageStore,
});

typedef AdminAdminVoteDefinitionsTablePageAdminAdminVoteDefinitionsTableDataCell = DataCell Function(
  AdminVoteDefinitionStore targetStore,
  BuildContext context,
);

typedef AdminAdminVoteDefinitionsTablePageAdminAdminVoteDefinitionsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminVoteDefinitionStore targetStore,
  AdminAdminVoteDefinitionsTablePageStore pageStore,
);

typedef AdminAdminVoteDefinitionsTablePageAdminVoteDefinitionVoteSelectAnswerTableDataCell = DataCell Function(
  SelectAnswerVoteSelectionStore targetStore,
  BuildContext context,
);

typedef AdminAdminVoteDefinitionsTablePageAdminVoteDefinitionVoteSelectAnswerTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  SelectAnswerVoteSelectionStore targetStore,
  AdminAdminVoteDefinitionsTablePageStore pageStore,
);

typedef AdminAdminVoteDefinitionsTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminVoteDefinitionsTablePageStore pageStore,
);
