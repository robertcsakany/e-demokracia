//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::YesNoVoteInput behaviours:  TEMPLATE

part of admin.repository;

class YesNoVoteInputRepository {
  /// TEMPLATE (Default)
  Future<YesNoVoteInputStore> edemokraciaYesNoVoteInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaYesNoVoteInputGetTemplateYesNoVoteInput();
    return AdminAdminRepositoryStoreMapper.createYesNoVoteInputStoreFromEdemokraciaYesNoVoteInput(response);
  }
}
