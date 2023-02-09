//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: residentCity
//   Relation owner: edemokracia::admin::User
//   Relation target: edemokracia::admin::City
//   Access: false
//
//    Relation: edemokracia::admin::User.residentCity (edemokracia::admin::City) behaviours:  LIST  SET  UNSET  RANGE  REFRESH  UPDATE  VALIDATE_UPDATE
//    TransferObject: edemokracia::admin::City behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminUserRepositoryForResidentCity {
  /// GET SINGLE
  Future<AdminCityStore> edemokraciaAdminUserResidentCityGet(AdminUserStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCity();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final cityResponse = await locator<JudoApiClient>().edemokraciaAdminUserListResidentCity(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity(cityResponse);
  }

  /// UPDATE
  Future<AdminCityStore> edemokraciaAdminUserResidentCityUpdate(AdminUserStore owner, AdminCityStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminCityUpdate(target);
  }

  // Target relations

}
