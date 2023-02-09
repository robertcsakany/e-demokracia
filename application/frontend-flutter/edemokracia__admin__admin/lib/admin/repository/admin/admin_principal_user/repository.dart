//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::AdminPrincipalUser behaviours:  REFRESH

part of admin.repository;

class AdminAdminPrincipalUserRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminAdminPrincipalUserStore> edemokraciaAdminAdminPrincipalUserGetByIdentifier(AdminAdminPrincipalUserStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final adminPrincipalUserResponse = await locator<JudoApiClient>().edemokraciaAdminAdminPrincipalUserRefreshInstanceEdemokraciaAdminAdminPrincipalUser(
        target.internal__signedIdentifier,
        input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminAdminPrincipalUserStoreFromEdemokraciaAdminAdminPrincipalUser(adminPrincipalUserResponse);
  }
}
