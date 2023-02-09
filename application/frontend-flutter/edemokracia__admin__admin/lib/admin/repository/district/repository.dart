//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::District behaviours:  REFRESH

part of admin.repository;

class DistrictRepository {
  /// REFRESH (Reload with Signed ID)
  Future<DistrictStore> edemokraciaDistrictGetByIdentifier(DistrictStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerDistrict();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final districtResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesDistrictRefreshInstanceEdemokraciaDistrict(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createDistrictStoreFromEdemokraciaDistrict(districtResponse);
  }
}
