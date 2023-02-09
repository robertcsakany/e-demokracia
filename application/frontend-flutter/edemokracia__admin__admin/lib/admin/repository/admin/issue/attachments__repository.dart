//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: attachments
//   Relation owner: edemokracia::admin::Issue
//   Relation target: edemokracia::admin::IssueAttachment
//   Access: false
//
//    Relation: edemokracia::admin::Issue.attachments (edemokracia::admin::IssueAttachment) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::IssueAttachment behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminIssueRepositoryForAttachments {
  /// GET Collection
  Future<List<AdminIssueAttachmentStore>> edemokraciaAdminIssueAttachmentsList(AdminIssueStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueAttachmentStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssueAttachment();
    var seek = EdemokraciaExtensionAdminSeekIssueAttachment();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeIssueAttachment();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'link') {
          var filter = repository_filters[filter_key.URL](element);
          queryCustomizer.link.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'type') {
          var filter = repository_filters[filter_key.AttachmentType](element);
          queryCustomizer.type.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminIssueAttachment(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> issueAttachmentListResponse =
        await locator<JudoApiClient>().edemokraciaAdminIssueListAttachments(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return issueAttachmentListResponse
        .map<AdminIssueAttachmentStore>(AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment)
        .toList();
  }

  /// CREATE
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentsCreate(AdminIssueStore owner, AdminIssueAttachmentStore target) async {
    final issueAttachmentForCreateAndUpdateRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueAttachmentForCreateAndUpdateFromAdminIssueAttachmentStore(target);
    final issueAttachmentResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueCreateInstanceAttachments(owner.internal__signedIdentifier, issueAttachmentForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(issueAttachmentResponse);
  }

  /// VALIDATE CREATE
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentsValidateForCreate(AdminIssueStore owner, AdminIssueAttachmentStore target) async {
    final issueAttachmentForCreateAndUpdateRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueAttachmentForCreateAndUpdateFromAdminIssueAttachmentStore(target);
    final issueAttachmentResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueValidateCreateInstanceAttachments(owner.internal__signedIdentifier, issueAttachmentForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(issueAttachmentResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminIssueAttachmentsDelete(AdminIssueStore owner, AdminIssueAttachmentStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueAttachmentDelete(target);
  }

  /// UPDATE
  Future<AdminIssueAttachmentStore> edemokraciaAdminIssueAttachmentsUpdate(AdminIssueStore owner, AdminIssueAttachmentStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueAttachmentUpdate(target);
  }

  // Target relations

}
