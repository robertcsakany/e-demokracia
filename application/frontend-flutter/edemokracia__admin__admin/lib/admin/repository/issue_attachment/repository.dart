//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::IssueAttachment behaviours:  REFRESH

part of admin.repository;

class IssueAttachmentRepository {
  /// REFRESH (Reload with Signed ID)
  Future<IssueAttachmentStore> edemokraciaIssueAttachmentGetByIdentifier(IssueAttachmentStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerIssueAttachment();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueAttachmentResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesIssueAttachmentRefreshInstanceEdemokraciaIssueAttachment(target.internal__signedIdentifier,
            input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createIssueAttachmentStoreFromEdemokraciaIssueAttachment(issueAttachmentResponse);
  }
}
