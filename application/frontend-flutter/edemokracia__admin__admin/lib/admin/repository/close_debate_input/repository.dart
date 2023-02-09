//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::CloseDebateInput behaviours:  TEMPLATE

part of admin.repository;

class CloseDebateInputRepository {
  /// TEMPLATE (Default)
  Future<CloseDebateInputStore> edemokraciaCloseDebateInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaCloseDebateInputGetTemplateCloseDebateInput();
    return AdminAdminRepositoryStoreMapper.createCloseDebateInputStoreFromEdemokraciaCloseDebateInput(response);
  }
}
