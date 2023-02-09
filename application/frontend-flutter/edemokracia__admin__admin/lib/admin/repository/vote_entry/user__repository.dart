//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: user
//   Relation owner: edemokracia::VoteEntry
//   Relation target: edemokracia::User
//   Access: false
//
//    Relation: edemokracia::VoteEntry.user (edemokracia::User) behaviours:  LIST  SET  RANGE  REFRESH
//    TransferObject: edemokracia::User behaviours:  REFRESH

part of admin.repository;

class VoteEntryRepositoryForUser {
  /// GET SINGLE
  Future<UserStore> edemokraciaVoteEntryUserGet(VoteEntryStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final userResponse = await locator<JudoApiClient>().edemokraciaVoteEntryListUser(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createUserStoreFromEdemokraciaUser(userResponse);
  }

  // Target relations

}
