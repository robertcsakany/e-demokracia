//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::YesNoAbstainVoteInput behaviours:  TEMPLATE

part of admin.repository;

class YesNoAbstainVoteInputRepository {
  /// TEMPLATE (Default)
  Future<YesNoAbstainVoteInputStore> edemokraciaYesNoAbstainVoteInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaYesNoAbstainVoteInputGetTemplateYesNoAbstainVoteInput();
    return AdminAdminRepositoryStoreMapper.createYesNoAbstainVoteInputStoreFromEdemokraciaYesNoAbstainVoteInput(response);
  }
}
