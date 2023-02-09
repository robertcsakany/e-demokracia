//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::SimpleVote behaviours:  REFRESH

part of admin.repository;

class SimpleVoteRepository {
  /// REFRESH (Reload with Signed ID)
  Future<SimpleVoteStore> edemokraciaSimpleVoteGetByIdentifier(SimpleVoteStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerSimpleVote();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final simpleVoteResponse = await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesSimpleVoteRefreshInstanceEdemokraciaSimpleVote(
        target.internal__signedIdentifier,
        input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createSimpleVoteStoreFromEdemokraciaSimpleVote(simpleVoteResponse);
  }
}
