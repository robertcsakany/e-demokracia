//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: issues
//   Relation owner: edemokracia::admin::Admin
//   Relation target: edemokracia::admin::Issue
//   Access: true
//
//    Relation: edemokracia::admin::Admin.issues (edemokracia::admin::Issue) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::Issue behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminAdminRepositoryForIssues {
  /// GET Collection (Access)
  Future<List<AdminIssueStore>> edemokraciaAdminAdminIssuesList(
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminIssueStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssue();
    var seek = EdemokraciaExtensionAdminSeekIssue();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeIssue();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;
        if (element.attributeName.uncapitalize() == 'created') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.created.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'representation') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.representation.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'status') {
          var filter = repository_filters[filter_key.IssueStatus](element);
          queryCustomizer.status.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminIssue(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> issueListResponse = await locator<JudoApiClient>().edemokraciaAdminAdminListIssues(null, input: queryCustomizer.toJson());
    return issueListResponse.map<AdminIssueStore>(AdminAdminRepositoryStoreMapper.createAdminIssueStoreFromEdemokraciaAdminIssue).toList();
  }

  /// DELETE (Access)
  Future<void> edemokraciaAdminAdminIssuesDelete(AdminIssueStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueDelete(target);
  }

  /// UPDATE  (Access)
  Future<AdminIssueStore> edemokraciaAdminAdminIssuesUpdate(AdminIssueStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueUpdate(target);
  }

  // Target relations

  /// GET CREATE RANGE FOR categories
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminAdminIssuesRangeOfCategoriesToCreate(AdminIssueStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueCategoryStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueRangeOfCategoriesToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR categories
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminAdminIssuesRangeOfCategoriesToUpdate(AdminIssueStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueCategoryStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueRangeOfCategoriesToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET categories (Access) Collection
  Future<void> edemokraciaAdminAdminIssuesSetCategories(AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueSetCategories(target, selected);
  }

  /// ADD categories (Access)
  Future<void> edemokraciaAdminAdminIssuesAddCategories(AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueAddCategories(target, selected);
  }

  /// REMOVE categories (Access)
  Future<void> edemokraciaAdminAdminIssuesRemoveCategories(AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueRemoveCategories(target, selected);
  }

  /// GET CREATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminAdminIssuesRangeOfOwnerToCreate(AdminIssueStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueRangeOfOwnerToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminAdminIssuesRangeOfOwnerToUpdate(AdminIssueStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueRangeOfOwnerToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET owner (Access) Single
  Future<void> edemokraciaAdminAdminIssuesSetOwner(AdminIssueStore target, AdminUserStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueSetOwner(target, selected);
  }

  /// UNSET owner (Access)
  Future<void> edemokraciaAdminAdminIssuesUnsetOwner(AdminIssueStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueUnsetOwner(target);
  }
}
