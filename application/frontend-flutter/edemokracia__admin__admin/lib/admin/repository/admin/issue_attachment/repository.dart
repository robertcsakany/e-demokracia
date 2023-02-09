//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::IssueAttachment behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminIssueAttachmentRepository {
  /// TEMPLATE (Default)
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminIssueAttachmentGetTemplateIssueAttachment();
    return AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentGetByIdentifier(AdminIssueAttachmentStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssueAttachment();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueAttachmentResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueAttachmentRefreshInstanceEdemokraciaAdminIssueAttachment(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(issueAttachmentResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentValidateForUpdate(AdminIssueAttachmentStore target) async {
    final issueAttachmentRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueAttachmentForCreateAndUpdateFromAdminIssueAttachmentStore(target);
    final issueAttachmentResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueAttachmentValidateUpdateInstanceEdemokraciaAdminIssueAttachment(target.internal__signedIdentifier, issueAttachmentRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(issueAttachmentResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminIssueAttachmentDelete(AdminIssueAttachmentStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueAttachmentDeleteInstanceEdemokraciaAdminIssueAttachment(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentUpdate(AdminIssueAttachmentStore target) async {
    final issueAttachmentRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueAttachmentForCreateAndUpdateFromAdminIssueAttachmentStore(target);
    final issueAttachmentResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueAttachmentUpdateInstanceEdemokraciaAdminIssueAttachment(target.internal__signedIdentifier, issueAttachmentRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(issueAttachmentResponse);
  }
}
