//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::IssueCategory behaviours:  REFRESH

part of admin.repository;

class IssueCategoryRepository {
  /// REFRESH (Reload with Signed ID)
  Future<IssueCategoryStore> edemokraciaIssueCategoryGetByIdentifier(IssueCategoryStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerIssueCategory();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueCategoryResponse = await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesIssueCategoryRefreshInstanceEdemokraciaIssueCategory(
        target.internal__signedIdentifier,
        input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createIssueCategoryStoreFromEdemokraciaIssueCategory(issueCategoryResponse);
  }
}
