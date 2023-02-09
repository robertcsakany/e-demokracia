//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::Con behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminConRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminConStore> edemokraciaAdminConGetByIdentifier(AdminConStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCon();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final conResponse = await locator<JudoApiClient>()
        .edemokraciaAdminConRefreshInstanceEdemokraciaAdminCon(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminConStoreFromEdemokraciaAdminCon(conResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminConStore> edemokraciaAdminConValidateForUpdate(AdminConStore target) async {
    final conRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminConForCreateAndUpdateFromAdminConStore(target);
    final conResponse =
        await locator<JudoApiClient>().edemokraciaAdminConValidateUpdateInstanceEdemokraciaAdminCon(target.internal__signedIdentifier, conRequest);
    return AdminAdminRepositoryStoreMapper.createAdminConStoreFromEdemokraciaAdminCon(conResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminConDelete(AdminConStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminConDeleteInstanceEdemokraciaAdminCon(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminConStore> edemokraciaAdminConUpdate(AdminConStore target) async {
    final conRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminConForCreateAndUpdateFromAdminConStore(target);
    final conResponse = await locator<JudoApiClient>().edemokraciaAdminConUpdateInstanceEdemokraciaAdminCon(target.internal__signedIdentifier, conRequest);
    return AdminAdminRepositoryStoreMapper.createAdminConStoreFromEdemokraciaAdminCon(conResponse);
  }

  /// OPERATION createComment
  Future<void> edemokraciaAdminConCreateComment(CreateCommentInputStore targetStore, AdminConStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminConCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }

  /// OPERATION createSubArgument
  Future<void> edemokraciaAdminConCreateSubArgument(CreateArgumentInputStore targetStore, AdminConStore ownerStore) async {
    final edemokraciaCreateArgumentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminConCreateSubArgument(ownerStore.internal__signedIdentifier, edemokraciaCreateArgumentInputInput);
  }

  /// OPERATION voteDown
  Future<void> edemokraciaAdminConVoteDown(AdminConStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaAdminConVoteDown(ownerStore.internal__signedIdentifier, null);
  }

  /// OPERATION voteUp
  Future<void> edemokraciaAdminConVoteUp(AdminConStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaAdminConVoteUp(ownerStore.internal__signedIdentifier, null);
  }
}
