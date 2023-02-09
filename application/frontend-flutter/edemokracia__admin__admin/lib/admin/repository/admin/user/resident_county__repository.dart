//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: residentCounty
//   Relation owner: edemokracia::admin::User
//   Relation target: edemokracia::admin::County
//   Access: false
//
//    Relation: edemokracia::admin::User.residentCounty (edemokracia::admin::County) behaviours:  LIST  SET  UNSET  RANGE  REFRESH  UPDATE  VALIDATE_UPDATE
//    TransferObject: edemokracia::admin::County behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminUserRepositoryForResidentCounty {
  /// GET SINGLE
  Future<AdminCountyStore> edemokraciaAdminUserResidentCountyGet(AdminUserStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCounty();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final countyResponse =
        await locator<JudoApiClient>().edemokraciaAdminUserListResidentCounty(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(countyResponse);
  }

  /// UPDATE
  Future<AdminCountyStore> edemokraciaAdminUserResidentCountyUpdate(AdminUserStore owner, AdminCountyStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminCountyUpdate(target);
  }

  // Target relations

}
