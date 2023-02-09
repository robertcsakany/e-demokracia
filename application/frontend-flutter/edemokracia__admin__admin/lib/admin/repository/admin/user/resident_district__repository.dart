//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: residentDistrict
//   Relation owner: edemokracia::admin::User
//   Relation target: edemokracia::admin::District
//   Access: false
//
//    Relation: edemokracia::admin::User.residentDistrict (edemokracia::admin::District) behaviours:  LIST  SET  UNSET  RANGE  REFRESH  UPDATE  VALIDATE_UPDATE
//    TransferObject: edemokracia::admin::District behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminUserRepositoryForResidentDistrict {
  /// GET SINGLE
  Future<AdminDistrictStore> edemokraciaAdminUserResidentDistrictGet(AdminUserStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDistrict();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final districtResponse =
        await locator<JudoApiClient>().edemokraciaAdminUserListResidentDistrict(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(districtResponse);
  }

  /// UPDATE
  Future<AdminDistrictStore> edemokraciaAdminUserResidentDistrictUpdate(AdminUserStore owner, AdminDistrictStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminDistrictUpdate(target);
  }

  // Target relations

}
