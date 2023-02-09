//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::Issue behaviours:  REFRESH

part of admin.repository;

class IssueRepository {
  /// REFRESH (Reload with Signed ID)
  Future<IssueStore> edemokraciaIssueGetByIdentifier(IssueStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerIssue();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesIssueRefreshInstanceEdemokraciaIssue(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createIssueStoreFromEdemokraciaIssue(issueResponse);
  }

  /// OPERATION createComment
  Future<void> edemokraciaIssueCreateComment(CreateCommentInputStore targetStore, IssueStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesIssueCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }

  /// OPERATION createDebate
  Future<DebateStore> edemokraciaIssueCreateDebate(CreateDebateInputStore targetStore, IssueStore ownerStore) async {
    final edemokraciaCreateDebateInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateDebateInputFromCreateDebateInputStore(targetStore);
    final edemokraciaDebateOutput = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesIssueCreateDebate(ownerStore.internal__signedIdentifier, edemokraciaCreateDebateInputInput);

    return AdminAdminRepositoryStoreMapper.createDebateStoreFromEdemokraciaDebate(edemokraciaDebateOutput);
  }
}
