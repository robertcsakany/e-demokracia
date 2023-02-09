//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::Con behaviours:  REFRESH

part of admin.repository;

class ConRepository {
  /// REFRESH (Reload with Signed ID)
  Future<ConStore> edemokraciaConGetByIdentifier(ConStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCon();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final conResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesConRefreshInstanceEdemokraciaCon(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createConStoreFromEdemokraciaCon(conResponse);
  }

  /// OPERATION createComment
  Future<void> edemokraciaConCreateComment(CreateCommentInputStore targetStore, ConStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesConCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }

  /// OPERATION createSubArgument
  Future<void> edemokraciaConCreateSubArgument(CreateArgumentInputStore targetStore, ConStore ownerStore) async {
    final edemokraciaCreateArgumentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesConCreateSubArgument(ownerStore.internal__signedIdentifier, edemokraciaCreateArgumentInputInput);
  }

  /// OPERATION voteDown
  Future<void> edemokraciaConVoteDown(ConStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesConVoteDown(ownerStore.internal__signedIdentifier, null);
  }

  /// OPERATION voteUp
  Future<void> edemokraciaConVoteUp(ConStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesConVoteUp(ownerStore.internal__signedIdentifier, null);
  }
}
