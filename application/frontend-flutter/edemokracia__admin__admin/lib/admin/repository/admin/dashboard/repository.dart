//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::Dashboard behaviours:  REFRESH

part of admin.repository;

class AdminDashboardRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminDashboardStore> edemokraciaAdminDashboardGetByIdentifier(AdminDashboardStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDashboard();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final dashboardResponse = await locator<JudoApiClient>()
        .edemokraciaAdminDashboardRefreshInstanceEdemokraciaAdminDashboard(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminDashboardStoreFromEdemokraciaAdminDashboard(dashboardResponse);
  }

  /// OPERATION createIssue
  Future<AdminIssueStore> edemokraciaAdminDashboardCreateIssue(
    AdminCreateIssueInputStore targetStore,
  ) async {
    final edemokraciaAdminCreateIssueInputInput =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCreateIssueInputFromAdminCreateIssueInputStore(targetStore);
    final edemokraciaAdminIssueOutput = await locator<JudoApiClient>().edemokraciaAdminDashboardCreateIssue(null, edemokraciaAdminCreateIssueInputInput);

    return AdminAdminRepositoryStoreMapper.createAdminIssueStoreFromEdemokraciaAdminIssue(edemokraciaAdminIssueOutput);
  }

  /// OPERATION createUser
  Future<AdminUserStore> edemokraciaAdminDashboardCreateUser(
    AdminCreateUserInputStore targetStore,
  ) async {
    final edemokraciaAdminCreateUserInputInput =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCreateUserInputFromAdminCreateUserInputStore(targetStore);
    final edemokraciaAdminUserOutput = await locator<JudoApiClient>().edemokraciaAdminDashboardCreateUser(null, edemokraciaAdminCreateUserInputInput);

    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(edemokraciaAdminUserOutput);
  }
}
