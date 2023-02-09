//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::Comment behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminCommentRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminCommentStore> edemokraciaAdminCommentGetByIdentifier(AdminCommentStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerComment();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final commentResponse = await locator<JudoApiClient>()
        .edemokraciaAdminCommentRefreshInstanceEdemokraciaAdminComment(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminCommentStoreFromEdemokraciaAdminComment(commentResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminCommentStore> edemokraciaAdminCommentValidateForUpdate(AdminCommentStore target) async {
    final commentRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCommentForCreateAndUpdateFromAdminCommentStore(target);
    final commentResponse =
        await locator<JudoApiClient>().edemokraciaAdminCommentValidateUpdateInstanceEdemokraciaAdminComment(target.internal__signedIdentifier, commentRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCommentStoreFromEdemokraciaAdminComment(commentResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminCommentDelete(AdminCommentStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminCommentDeleteInstanceEdemokraciaAdminComment(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminCommentStore> edemokraciaAdminCommentUpdate(AdminCommentStore target) async {
    final commentRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCommentForCreateAndUpdateFromAdminCommentStore(target);
    final commentResponse =
        await locator<JudoApiClient>().edemokraciaAdminCommentUpdateInstanceEdemokraciaAdminComment(target.internal__signedIdentifier, commentRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCommentStoreFromEdemokraciaAdminComment(commentResponse);
  }

  /// OPERATION voteDown
  Future<void> edemokraciaAdminCommentVoteDown(AdminCommentStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaAdminCommentVoteDown(ownerStore.internal__signedIdentifier, null);
  }

  /// OPERATION voteUp
  Future<void> edemokraciaAdminCommentVoteUp(AdminCommentStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaAdminCommentVoteUp(ownerStore.internal__signedIdentifier, null);
  }
}
