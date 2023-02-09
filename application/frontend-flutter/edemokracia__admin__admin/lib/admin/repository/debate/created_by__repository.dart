//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: createdBy
//   Relation owner: edemokracia::Debate
//   Relation target: edemokracia::User
//   Access: false
//
//    Relation: edemokracia::Debate.createdBy (edemokracia::User) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::User behaviours:  REFRESH

part of admin.repository;

class DebateRepositoryForCreatedBy {
  /// GET SINGLE
  Future<UserStore> edemokraciaDebateCreatedByGet(DebateStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final userResponse = await locator<JudoApiClient>().edemokraciaDebateListCreatedBy(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createUserStoreFromEdemokraciaUser(userResponse);
  }

  // Target relations

}
