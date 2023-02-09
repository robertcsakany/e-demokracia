//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::Debate behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminDebateRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminDebateStore> edemokraciaAdminDebateGetByIdentifier(AdminDebateStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDebate();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final debateResponse = await locator<JudoApiClient>()
        .edemokraciaAdminDebateRefreshInstanceEdemokraciaAdminDebate(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminDebateStoreFromEdemokraciaAdminDebate(debateResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminDebateStore> edemokraciaAdminDebateValidateForUpdate(AdminDebateStore target) async {
    final debateRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminDebateForCreateAndUpdateFromAdminDebateStore(target);
    final debateResponse =
        await locator<JudoApiClient>().edemokraciaAdminDebateValidateUpdateInstanceEdemokraciaAdminDebate(target.internal__signedIdentifier, debateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminDebateStoreFromEdemokraciaAdminDebate(debateResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminDebateDelete(AdminDebateStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminDebateDeleteInstanceEdemokraciaAdminDebate(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminDebateStore> edemokraciaAdminDebateUpdate(AdminDebateStore target) async {
    final debateRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminDebateForCreateAndUpdateFromAdminDebateStore(target);
    final debateResponse =
        await locator<JudoApiClient>().edemokraciaAdminDebateUpdateInstanceEdemokraciaAdminDebate(target.internal__signedIdentifier, debateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminDebateStoreFromEdemokraciaAdminDebate(debateResponse);
  }

  /// OPERATION closeDebate
  Future<VoteDefinitionStore> edemokraciaAdminDebateCloseDebate(CloseDebateInputStore targetStore, AdminDebateStore ownerStore) async {
    final edemokraciaCloseDebateInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCloseDebateInputFromCloseDebateInputStore(targetStore);
    final edemokraciaVoteDefinitionOutput =
        await locator<JudoApiClient>().edemokraciaAdminDebateCloseDebate(ownerStore.internal__signedIdentifier, edemokraciaCloseDebateInputInput);

    return AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition(edemokraciaVoteDefinitionOutput);
  }

  /// OPERATION createArgument
  Future<void> edemokraciaAdminDebateCreateArgument(CreateArgumentInputStore targetStore, AdminDebateStore ownerStore) async {
    final edemokraciaCreateArgumentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminDebateCreateArgument(ownerStore.internal__signedIdentifier, edemokraciaCreateArgumentInputInput);
  }

  /// OPERATION createComment
  Future<void> edemokraciaAdminDebateCreateComment(CreateCommentInputStore targetStore, AdminDebateStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminDebateCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }
}
