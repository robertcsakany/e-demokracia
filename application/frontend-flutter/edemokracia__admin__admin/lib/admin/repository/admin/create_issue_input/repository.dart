//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::CreateIssueInput behaviours:  TEMPLATE

part of admin.repository;

class AdminCreateIssueInputRepository {
  /// TEMPLATE (Default)
  Future<AdminCreateIssueInputStore> edemokraciaAdminCreateIssueInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminCreateIssueInputGetTemplateCreateIssueInput();
    return AdminAdminRepositoryStoreMapper.createAdminCreateIssueInputStoreFromEdemokraciaAdminCreateIssueInput(response);
  }
}
