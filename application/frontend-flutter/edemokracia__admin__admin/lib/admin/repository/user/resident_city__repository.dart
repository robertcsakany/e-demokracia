//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: residentCity
//   Relation owner: edemokracia::User
//   Relation target: edemokracia::City
//   Access: false
//
//    Relation: edemokracia::User.residentCity (edemokracia::City) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::City behaviours:  REFRESH

part of admin.repository;

class UserRepositoryForResidentCity {
  /// GET SINGLE
  Future<CityStore> edemokraciaUserResidentCityGet(UserStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCity();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final cityResponse = await locator<JudoApiClient>().edemokraciaUserListResidentCity(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createCityStoreFromEdemokraciaCity(cityResponse);
  }

  // Target relations

}
