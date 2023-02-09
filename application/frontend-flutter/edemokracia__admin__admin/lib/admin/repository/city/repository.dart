//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::City behaviours:  REFRESH

part of admin.repository;

class CityRepository {
  /// REFRESH (Reload with Signed ID)
  Future<CityStore> edemokraciaCityGetByIdentifier(CityStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCity();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final cityResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesCityRefreshInstanceEdemokraciaCity(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createCityStoreFromEdemokraciaCity(cityResponse);
  }
}
