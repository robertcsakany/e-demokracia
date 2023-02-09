//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::User behaviours:  REFRESH

part of admin.repository;

class UserRepository {
  /// REFRESH (Reload with Signed ID)
  Future<UserStore> edemokraciaUserGetByIdentifier(UserStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final userResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesUserRefreshInstanceEdemokraciaUser(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createUserStoreFromEdemokraciaUser(userResponse);
  }
}
