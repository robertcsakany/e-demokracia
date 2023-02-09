//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: categories
//   Relation owner: edemokracia::admin::Issue
//   Relation target: edemokracia::admin::IssueCategory
//   Access: false
//
//    Relation: edemokracia::admin::Issue.categories (edemokracia::admin::IssueCategory) behaviours:  LIST  SET  ADD  REMOVE  RANGE  REFRESH
//    TransferObject: edemokracia::admin::IssueCategory behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminIssueRepositoryForCategories {
  /// GET Collection
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminIssueCategoriesList(AdminIssueStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueCategoryStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssueCategory();
    var seek = EdemokraciaExtensionAdminSeekIssueCategory();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeIssueCategory();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminIssueCategory(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> issueCategoryListResponse =
        await locator<JudoApiClient>().edemokraciaAdminIssueListCategories(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return issueCategoryListResponse
        .map<AdminIssueCategoryStore>(AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory)
        .toList();
  }

  // Target relations
  /// GET CREATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueCategoriesRangeOfOwnerToCreate(AdminIssueCategoryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategoryRangeOfOwnerToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueCategoriesRangeOfOwnerToUpdate(AdminIssueCategoryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategoryRangeOfOwnerToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET owner Single
  Future<void> edemokraciaAdminIssueCategoriesSetOwner(AdminIssueStore owner, AdminIssueCategoryStore target, AdminUserStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategorySetOwner(target, selected);
  }

  /// UNSET owner
  Future<void> edemokraciaAdminIssueCategoriesUnsetOwner(AdminIssueStore owner, AdminIssueCategoryStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategoryUnsetOwner(target);
  }
}
