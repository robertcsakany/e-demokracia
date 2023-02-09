//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::Pro behaviours:  REFRESH

part of admin.repository;

class ProRepository {
  /// REFRESH (Reload with Signed ID)
  Future<ProStore> edemokraciaProGetByIdentifier(ProStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerPro();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final proResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesProRefreshInstanceEdemokraciaPro(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createProStoreFromEdemokraciaPro(proResponse);
  }

  /// OPERATION createComment
  Future<void> edemokraciaProCreateComment(CreateCommentInputStore targetStore, ProStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesProCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }

  /// OPERATION createSubArgument
  Future<void> edemokraciaProCreateSubArgument(CreateArgumentInputStore targetStore, ProStore ownerStore) async {
    final edemokraciaCreateArgumentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesProCreateSubArgument(ownerStore.internal__signedIdentifier, edemokraciaCreateArgumentInputInput);
  }

  /// OPERATION voteDown
  Future<void> edemokraciaProVoteDown(ProStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesProVoteDown(ownerStore.internal__signedIdentifier, null);
  }

  /// OPERATION voteUp
  Future<void> edemokraciaProVoteUp(ProStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesProVoteUp(ownerStore.internal__signedIdentifier, null);
  }
}
