//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: issue
//   Relation owner: edemokracia::Debate
//   Relation target: edemokracia::Issue
//   Access: false
//
//    Relation: edemokracia::Debate.issue (edemokracia::Issue) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::Issue behaviours:  REFRESH

part of admin.repository;

class DebateRepositoryForIssue {
  /// GET SINGLE
  Future<IssueStore> edemokraciaDebateIssueGet(DebateStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerIssue();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final issueResponse = await locator<JudoApiClient>().edemokraciaDebateListIssue(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createIssueStoreFromEdemokraciaIssue(issueResponse);
  }

  // Target relations

}
