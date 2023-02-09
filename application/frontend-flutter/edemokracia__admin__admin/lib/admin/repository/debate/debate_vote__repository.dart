//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: debateVote
//   Relation owner: edemokracia::Debate
//   Relation target: edemokracia::VoteDefinition
//   Access: false
//
//    Relation: edemokracia::Debate.debateVote (edemokracia::VoteDefinition) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::VoteDefinition behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class DebateRepositoryForDebateVote {
  /// GET SINGLE
  Future<VoteDefinitionStore> edemokraciaDebateDebateVoteGet(DebateStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteDefinition();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final voteDefinitionResponse =
        await locator<JudoApiClient>().edemokraciaDebateListDebateVote(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition(voteDefinitionResponse);
  }

  // Target relations
  /// GET CREATE RANGE FOR voteEntries
  Future<List<VoteEntryStore>> edemokraciaDebateDebateVoteRangeOfVoteEntriesToCreate(VoteDefinitionStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, VoteEntryStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteDefinitionRangeOfVoteEntriesToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR voteEntries
  Future<List<VoteEntryStore>> edemokraciaDebateDebateVoteRangeOfVoteEntriesToUpdate(VoteDefinitionStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, VoteEntryStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteDefinitionRangeOfVoteEntriesToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR voteSelectAnswer
  Future<List<SelectAnswerVoteSelectionStore>> edemokraciaDebateDebateVoteRangeOfVoteSelectAnswer(VoteDefinitionStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      SelectAnswerVoteSelectionStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteDefinitionRangeOfVoteSelectAnswer(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }
}
