//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::County behaviours:  REFRESH

part of admin.repository;

class CountyRepository {
  /// REFRESH (Reload with Signed ID)
  Future<CountyStore> edemokraciaCountyGetByIdentifier(CountyStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCounty();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final countyResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesCountyRefreshInstanceEdemokraciaCounty(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createCountyStoreFromEdemokraciaCounty(countyResponse);
  }
}
