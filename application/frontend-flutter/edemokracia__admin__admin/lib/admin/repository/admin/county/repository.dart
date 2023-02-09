//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::County behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminCountyRepository {
  /// TEMPLATE (Default)
  Future<AdminCountyStore> edemokraciaAdminCountyDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminCountyGetTemplateCounty();
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<AdminCountyStore> edemokraciaAdminCountyGetByIdentifier(AdminCountyStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCounty();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final countyResponse = await locator<JudoApiClient>()
        .edemokraciaAdminCountyRefreshInstanceEdemokraciaAdminCounty(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(countyResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminCountyStore> edemokraciaAdminCountyValidateForUpdate(AdminCountyStore target) async {
    final countyRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCountyForCreateAndUpdateFromAdminCountyStore(target);
    final countyResponse =
        await locator<JudoApiClient>().edemokraciaAdminCountyValidateUpdateInstanceEdemokraciaAdminCounty(target.internal__signedIdentifier, countyRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(countyResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminCountyDelete(AdminCountyStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminCountyDeleteInstanceEdemokraciaAdminCounty(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminCountyStore> edemokraciaAdminCountyUpdate(AdminCountyStore target) async {
    final countyRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCountyForCreateAndUpdateFromAdminCountyStore(target);
    final countyResponse =
        await locator<JudoApiClient>().edemokraciaAdminCountyUpdateInstanceEdemokraciaAdminCounty(target.internal__signedIdentifier, countyRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(countyResponse);
  }
}
