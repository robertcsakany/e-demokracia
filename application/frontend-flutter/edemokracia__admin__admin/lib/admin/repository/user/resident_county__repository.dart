//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: residentCounty
//   Relation owner: edemokracia::User
//   Relation target: edemokracia::County
//   Access: false
//
//    Relation: edemokracia::User.residentCounty (edemokracia::County) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::County behaviours:  REFRESH

part of admin.repository;

class UserRepositoryForResidentCounty {
  /// GET SINGLE
  Future<CountyStore> edemokraciaUserResidentCountyGet(UserStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCounty();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final countyResponse = await locator<JudoApiClient>().edemokraciaUserListResidentCounty(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createCountyStoreFromEdemokraciaCounty(countyResponse);
  }

  // Target relations

}
