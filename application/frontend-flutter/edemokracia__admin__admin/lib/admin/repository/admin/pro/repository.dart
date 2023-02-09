//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::Pro behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminProRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminProStore> edemokraciaAdminProGetByIdentifier(AdminProStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerPro();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final proResponse = await locator<JudoApiClient>()
        .edemokraciaAdminProRefreshInstanceEdemokraciaAdminPro(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminProStoreFromEdemokraciaAdminPro(proResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminProStore> edemokraciaAdminProValidateForUpdate(AdminProStore target) async {
    final proRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminProForCreateAndUpdateFromAdminProStore(target);
    final proResponse =
        await locator<JudoApiClient>().edemokraciaAdminProValidateUpdateInstanceEdemokraciaAdminPro(target.internal__signedIdentifier, proRequest);
    return AdminAdminRepositoryStoreMapper.createAdminProStoreFromEdemokraciaAdminPro(proResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminProDelete(AdminProStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminProDeleteInstanceEdemokraciaAdminPro(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminProStore> edemokraciaAdminProUpdate(AdminProStore target) async {
    final proRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminProForCreateAndUpdateFromAdminProStore(target);
    final proResponse = await locator<JudoApiClient>().edemokraciaAdminProUpdateInstanceEdemokraciaAdminPro(target.internal__signedIdentifier, proRequest);
    return AdminAdminRepositoryStoreMapper.createAdminProStoreFromEdemokraciaAdminPro(proResponse);
  }

  /// OPERATION createComment
  Future<void> edemokraciaAdminProCreateComment(CreateCommentInputStore targetStore, AdminProStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminProCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }

  /// OPERATION createSubArgument
  Future<void> edemokraciaAdminProCreateSubArgument(CreateArgumentInputStore targetStore, AdminProStore ownerStore) async {
    final edemokraciaCreateArgumentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminProCreateSubArgument(ownerStore.internal__signedIdentifier, edemokraciaCreateArgumentInputInput);
  }

  /// OPERATION voteDown
  Future<void> edemokraciaAdminProVoteDown(AdminProStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaAdminProVoteDown(ownerStore.internal__signedIdentifier, null);
  }

  /// OPERATION voteUp
  Future<void> edemokraciaAdminProVoteUp(AdminProStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaAdminProVoteUp(ownerStore.internal__signedIdentifier, null);
  }
}
