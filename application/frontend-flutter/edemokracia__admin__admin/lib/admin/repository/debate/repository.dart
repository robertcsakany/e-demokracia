//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::Debate behaviours:  REFRESH

part of admin.repository;

class DebateRepository {
  /// REFRESH (Reload with Signed ID)
  Future<DebateStore> edemokraciaDebateGetByIdentifier(DebateStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerDebate();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final debateResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesDebateRefreshInstanceEdemokraciaDebate(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createDebateStoreFromEdemokraciaDebate(debateResponse);
  }

  /// OPERATION closeDebate
  Future<VoteDefinitionStore> edemokraciaDebateCloseDebate(CloseDebateInputStore targetStore, DebateStore ownerStore) async {
    final edemokraciaCloseDebateInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCloseDebateInputFromCloseDebateInputStore(targetStore);
    final edemokraciaVoteDefinitionOutput = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesDebateCloseDebate(ownerStore.internal__signedIdentifier, edemokraciaCloseDebateInputInput);

    return AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition(edemokraciaVoteDefinitionOutput);
  }

  /// OPERATION createArgument
  Future<void> edemokraciaDebateCreateArgument(CreateArgumentInputStore targetStore, DebateStore ownerStore) async {
    final edemokraciaCreateArgumentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesDebateCreateArgument(ownerStore.internal__signedIdentifier, edemokraciaCreateArgumentInputInput);
  }

  /// OPERATION createComment
  Future<void> edemokraciaDebateCreateComment(CreateCommentInputStore targetStore, DebateStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesDebateCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }
}
