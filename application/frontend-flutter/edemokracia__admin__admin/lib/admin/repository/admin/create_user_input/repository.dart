//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::CreateUserInput behaviours:  TEMPLATE

part of admin.repository;

class AdminCreateUserInputRepository {
  /// TEMPLATE (Default)
  Future<AdminCreateUserInputStore> edemokraciaAdminCreateUserInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminCreateUserInputGetTemplateCreateUserInput();
    return AdminAdminRepositoryStoreMapper.createAdminCreateUserInputStoreFromEdemokraciaAdminCreateUserInput(response);
  }
}
