//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::CreateCommentInput behaviours:  TEMPLATE

part of admin.repository;

class CreateCommentInputRepository {
  /// TEMPLATE (Default)
  Future<CreateCommentInputStore> edemokraciaCreateCommentInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaCreateCommentInputGetTemplateCreateCommentInput();
    return AdminAdminRepositoryStoreMapper.createCreateCommentInputStoreFromEdemokraciaCreateCommentInput(response);
  }
}
