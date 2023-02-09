//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::CreateDebateInput behaviours:  TEMPLATE

part of admin.repository;

class CreateDebateInputRepository {
  /// TEMPLATE (Default)
  Future<CreateDebateInputStore> edemokraciaCreateDebateInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaCreateDebateInputGetTemplateCreateDebateInput();
    return AdminAdminRepositoryStoreMapper.createCreateDebateInputStoreFromEdemokraciaCreateDebateInput(response);
  }
}
