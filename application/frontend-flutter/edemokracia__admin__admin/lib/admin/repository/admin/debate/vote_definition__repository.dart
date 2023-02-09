//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: voteDefinition
//   Relation owner: edemokracia::admin::Debate
//   Relation target: edemokracia::admin::VoteDefinition
//   Access: false
//
//    Relation: edemokracia::admin::Debate.voteDefinition (edemokracia::admin::VoteDefinition) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::VoteDefinition behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminDebateRepositoryForVoteDefinition {
  /// GET SINGLE
  Future<AdminVoteDefinitionStore> edemokraciaAdminDebateVoteDefinitionGet(AdminDebateStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerVoteDefinition();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final voteDefinitionResponse =
        await locator<JudoApiClient>().edemokraciaAdminDebateListVoteDefinition(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminVoteDefinitionStoreFromEdemokraciaAdminVoteDefinition(voteDefinitionResponse);
  }

  // Target relations

  /// GET UPDATE RANGE FOR voteSelectAnswer
  Future<List<SelectAnswerVoteSelectionStore>> edemokraciaAdminDebateVoteDefinitionRangeOfVoteSelectAnswer(AdminVoteDefinitionStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      SelectAnswerVoteSelectionStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminVoteDefinitionRangeOfVoteSelectAnswer(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }
}
