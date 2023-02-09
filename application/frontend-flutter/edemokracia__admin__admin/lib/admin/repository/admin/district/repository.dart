//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::District behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminDistrictRepository {
  /// TEMPLATE (Default)
  Future<AdminDistrictStore> edemokraciaAdminDistrictDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminDistrictGetTemplateDistrict();
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<AdminDistrictStore> edemokraciaAdminDistrictGetByIdentifier(AdminDistrictStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDistrict();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final districtResponse = await locator<JudoApiClient>()
        .edemokraciaAdminDistrictRefreshInstanceEdemokraciaAdminDistrict(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(districtResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminDistrictStore> edemokraciaAdminDistrictValidateForUpdate(AdminDistrictStore target) async {
    final districtRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminDistrictForCreateAndUpdateFromAdminDistrictStore(target);
    final districtResponse = await locator<JudoApiClient>()
        .edemokraciaAdminDistrictValidateUpdateInstanceEdemokraciaAdminDistrict(target.internal__signedIdentifier, districtRequest);
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(districtResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminDistrictDelete(AdminDistrictStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminDistrictDeleteInstanceEdemokraciaAdminDistrict(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminDistrictStore> edemokraciaAdminDistrictUpdate(AdminDistrictStore target) async {
    final districtRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminDistrictForCreateAndUpdateFromAdminDistrictStore(target);
    final districtResponse =
        await locator<JudoApiClient>().edemokraciaAdminDistrictUpdateInstanceEdemokraciaAdminDistrict(target.internal__signedIdentifier, districtRequest);
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(districtResponse);
  }
}
