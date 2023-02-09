//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: subcategories
//   Relation owner: edemokracia::IssueCategory
//   Relation target: edemokracia::IssueCategory
//   Access: false
//
//    Relation: edemokracia::IssueCategory.subcategories (edemokracia::IssueCategory) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::IssueCategory behaviours:  REFRESH

part of admin.repository;

class IssueCategoryRepositoryForSubcategories {
  /// GET Collection
  Future<List<IssueCategoryStore>> edemokraciaIssueCategorySubcategoriesList(IssueCategoryStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      IssueCategoryStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerIssueCategory();
    var seek = EdemokraciaExtensionSeekIssueCategory();

    var orderBy = EdemokraciaExtensionOrderingTypeIssueCategory();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesIssueCategory(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> issueCategoryListResponse =
        await locator<JudoApiClient>().edemokraciaIssueCategoryListSubcategories(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return issueCategoryListResponse.map<IssueCategoryStore>(AdminAdminRepositoryStoreMapper.createIssueCategoryStoreFromEdemokraciaIssueCategory).toList();
  }

  // Target relations

}
