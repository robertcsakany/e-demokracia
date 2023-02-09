//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: debates
//   Relation owner: edemokracia::admin::Issue
//   Relation target: edemokracia::admin::IssueDebate
//   Access: false
//
//    Relation: edemokracia::admin::Issue.debates (edemokracia::admin::IssueDebate) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::IssueDebate behaviours:  REFRESH

part of admin.repository;

class AdminIssueRepositoryForDebates {
  /// GET Collection
  Future<List<AdminIssueDebateStore>> edemokraciaAdminIssueDebatesList(AdminIssueStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueDebateStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssueDebate();
    var seek = EdemokraciaExtensionAdminSeekIssueDebate();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeIssueDebate();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'closeAt') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.closeAt.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'status') {
          var filter = repository_filters[filter_key.DebateStatus](element);
          queryCustomizer.status.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminIssueDebate(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> issueDebateListResponse =
        await locator<JudoApiClient>().edemokraciaAdminIssueListDebates(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return issueDebateListResponse
        .map<AdminIssueDebateStore>(AdminAdminRepositoryStoreMapper.createAdminIssueDebateStoreFromEdemokraciaAdminIssueDebate)
        .toList();
  }

  // Target relations

}
