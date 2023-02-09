//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::Comment behaviours:  REFRESH

part of admin.repository;

class CommentRepository {
  /// REFRESH (Reload with Signed ID)
  Future<CommentStore> edemokraciaCommentGetByIdentifier(CommentStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerComment();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final commentResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesCommentRefreshInstanceEdemokraciaComment(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createCommentStoreFromEdemokraciaComment(commentResponse);
  }

  /// OPERATION voteDown
  Future<void> edemokraciaCommentVoteDown(CommentStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesCommentVoteDown(ownerStore.internal__signedIdentifier, null);
  }

  /// OPERATION voteUp
  Future<void> edemokraciaCommentVoteUp(CommentStore ownerStore) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesCommentVoteUp(ownerStore.internal__signedIdentifier, null);
  }
}
