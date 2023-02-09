//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::CreateArgumentInput behaviours:  TEMPLATE

part of admin.repository;

class CreateArgumentInputRepository {
  /// TEMPLATE (Default)
  Future<CreateArgumentInputStore> edemokraciaCreateArgumentInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaCreateArgumentInputGetTemplateCreateArgumentInput();
    return AdminAdminRepositoryStoreMapper.createCreateArgumentInputStoreFromEdemokraciaCreateArgumentInput(response);
  }
}
