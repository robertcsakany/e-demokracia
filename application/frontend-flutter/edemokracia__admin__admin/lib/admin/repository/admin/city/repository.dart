//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::City behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminCityRepository {
  /// TEMPLATE (Default)
  Future<AdminCityStore> edemokraciaAdminCityDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminCityGetTemplateCity();
    return AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<AdminCityStore> edemokraciaAdminCityGetByIdentifier(AdminCityStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCity();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final cityResponse = await locator<JudoApiClient>()
        .edemokraciaAdminCityRefreshInstanceEdemokraciaAdminCity(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity(cityResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminCityStore> edemokraciaAdminCityValidateForUpdate(AdminCityStore target) async {
    final cityRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCityForCreateAndUpdateFromAdminCityStore(target);
    final cityResponse =
        await locator<JudoApiClient>().edemokraciaAdminCityValidateUpdateInstanceEdemokraciaAdminCity(target.internal__signedIdentifier, cityRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity(cityResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminCityDelete(AdminCityStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminCityDeleteInstanceEdemokraciaAdminCity(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminCityStore> edemokraciaAdminCityUpdate(AdminCityStore target) async {
    final cityRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCityForCreateAndUpdateFromAdminCityStore(target);
    final cityResponse = await locator<JudoApiClient>().edemokraciaAdminCityUpdateInstanceEdemokraciaAdminCity(target.internal__signedIdentifier, cityRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity(cityResponse);
  }
}
