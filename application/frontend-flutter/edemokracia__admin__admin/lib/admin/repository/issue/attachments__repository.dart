//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: attachments
//   Relation owner: edemokracia::Issue
//   Relation target: edemokracia::IssueAttachment
//   Access: false
//
//    Relation: edemokracia::Issue.attachments (edemokracia::IssueAttachment) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::IssueAttachment behaviours:  REFRESH

part of admin.repository;

class IssueRepositoryForAttachments {
  /// GET Collection
  Future<List<IssueAttachmentStore>> edemokraciaIssueAttachmentsList(IssueStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      IssueAttachmentStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerIssueAttachment();
    var seek = EdemokraciaExtensionSeekIssueAttachment();

    var orderBy = EdemokraciaExtensionOrderingTypeIssueAttachment();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesIssueAttachment(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> issueAttachmentListResponse =
        await locator<JudoApiClient>().edemokraciaIssueListAttachments(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return issueAttachmentListResponse
        .map<IssueAttachmentStore>(AdminAdminRepositoryStoreMapper.createIssueAttachmentStoreFromEdemokraciaIssueAttachment)
        .toList();
  }

  // Target relations

}
