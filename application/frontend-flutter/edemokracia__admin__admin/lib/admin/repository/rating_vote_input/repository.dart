//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::RatingVoteInput behaviours:  TEMPLATE

part of admin.repository;

class RatingVoteInputRepository {
  /// TEMPLATE (Default)
  Future<RatingVoteInputStore> edemokraciaRatingVoteInputDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaRatingVoteInputGetTemplateRatingVoteInput();
    return AdminAdminRepositoryStoreMapper.createRatingVoteInputStoreFromEdemokraciaRatingVoteInput(response);
  }
}
