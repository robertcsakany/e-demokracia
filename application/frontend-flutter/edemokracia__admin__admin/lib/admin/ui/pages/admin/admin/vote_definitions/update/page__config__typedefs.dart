//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.vote_definitions.update;

typedef AdminAdminVoteDefinitionsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminVoteDefinitionsUpdatePageStore pageStore,
});

typedef AdminAdminVoteDefinitionsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminVoteDefinitionsUpdatePageStore pageStore,
  AdminVoteDefinitionStore targetStore,
});

typedef AdminAdminVoteDefinitionsUpdatePostTitleChanged = Function(dynamic value,
    {AdminAdminVoteDefinitionsUpdatePageStore pageStore, AdminVoteDefinitionStore targetStore});

typedef AdminAdminVoteDefinitionsUpdatePostCloseAtChanged = Function(dynamic value,
    {AdminAdminVoteDefinitionsUpdatePageStore pageStore, AdminVoteDefinitionStore targetStore});

typedef AdminAdminVoteDefinitionsUpdatePostStatusChanged = Function(dynamic value,
    {AdminAdminVoteDefinitionsUpdatePageStore pageStore, AdminVoteDefinitionStore targetStore});

typedef AdminAdminVoteDefinitionsUpdatePostCreatedChanged = Function(dynamic value,
    {AdminAdminVoteDefinitionsUpdatePageStore pageStore, AdminVoteDefinitionStore targetStore});

typedef AdminAdminVoteDefinitionsUpdatePostDescriptionChanged = Function(dynamic value,
    {AdminAdminVoteDefinitionsUpdatePageStore pageStore, AdminVoteDefinitionStore targetStore});

typedef AdminAdminVoteDefinitionsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminVoteDefinitionsUpdatePageStore pageStore,
  AdminVoteDefinitionStore targetStore,
);
