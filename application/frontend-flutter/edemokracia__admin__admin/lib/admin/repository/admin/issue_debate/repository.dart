//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::IssueDebate behaviours:  REFRESH

part of admin.repository;

class AdminIssueDebateRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminIssueDebateStore> edemokraciaAdminIssueDebateGetByIdentifier(AdminIssueDebateStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssueDebate();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueDebateResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueDebateRefreshInstanceEdemokraciaAdminIssueDebate(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminIssueDebateStoreFromEdemokraciaAdminIssueDebate(issueDebateResponse);
  }
}
