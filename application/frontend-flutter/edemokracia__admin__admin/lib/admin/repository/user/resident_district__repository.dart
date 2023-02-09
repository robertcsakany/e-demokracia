//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: residentDistrict
//   Relation owner: edemokracia::User
//   Relation target: edemokracia::District
//   Access: false
//
//    Relation: edemokracia::User.residentDistrict (edemokracia::District) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::District behaviours:  REFRESH

part of admin.repository;

class UserRepositoryForResidentDistrict {
  /// GET SINGLE
  Future<DistrictStore> edemokraciaUserResidentDistrictGet(UserStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerDistrict();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final districtResponse =
        await locator<JudoApiClient>().edemokraciaUserListResidentDistrict(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createDistrictStoreFromEdemokraciaDistrict(districtResponse);
  }

  // Target relations

}
