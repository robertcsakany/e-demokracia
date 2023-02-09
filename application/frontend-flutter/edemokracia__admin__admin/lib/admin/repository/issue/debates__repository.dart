//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: debates
//   Relation owner: edemokracia::Issue
//   Relation target: edemokracia::Debate
//   Access: false
//
//    Relation: edemokracia::Issue.debates (edemokracia::Debate) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::Debate behaviours:  REFRESH

part of admin.repository;

class IssueRepositoryForDebates {
  /// GET Collection
  Future<List<DebateStore>> edemokraciaIssueDebatesList(IssueStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, DebateStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerDebate();
    var seek = EdemokraciaExtensionSeekDebate();

    var orderBy = EdemokraciaExtensionOrderingTypeDebate();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeDebateAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesDebate(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> debateListResponse =
        await locator<JudoApiClient>().edemokraciaIssueListDebates(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return debateListResponse.map<DebateStore>(AdminAdminRepositoryStoreMapper.createDebateStoreFromEdemokraciaDebate).toList();
  }

  // Target relations

}
