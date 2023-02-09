//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: debate
//   Relation owner: edemokracia::admin::VoteDefinition
//   Relation target: edemokracia::admin::Debate
//   Access: false
//
//    Relation: edemokracia::admin::VoteDefinition.debate (edemokracia::admin::Debate) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::Debate behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminVoteDefinitionRepositoryForDebate {
  /// GET SINGLE
  Future<AdminDebateStore> edemokraciaAdminVoteDefinitionDebateGet(AdminVoteDefinitionStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDebate();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final debateResponse =
        await locator<JudoApiClient>().edemokraciaAdminVoteDefinitionListDebate(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminDebateStoreFromEdemokraciaAdminDebate(debateResponse);
  }

  // Target relations

}
