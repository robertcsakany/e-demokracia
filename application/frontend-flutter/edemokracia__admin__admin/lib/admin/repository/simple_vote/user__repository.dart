//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: user
//   Relation owner: edemokracia::SimpleVote
//   Relation target: edemokracia::User
//   Access: false
//
//    Relation: edemokracia::SimpleVote.user (edemokracia::User) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::User behaviours:  REFRESH

part of admin.repository;

class SimpleVoteRepositoryForUser {
  /// GET SINGLE
  Future<UserStore> edemokraciaSimpleVoteUserGet(SimpleVoteStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final userResponse = await locator<JudoApiClient>().edemokraciaSimpleVoteListUser(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createUserStoreFromEdemokraciaUser(userResponse);
  }

  // Target relations

}
