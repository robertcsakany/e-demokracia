//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: issue
//   Relation owner: edemokracia::admin::Debate
//   Relation target: edemokracia::admin::Issue
//   Access: false
//
//    Relation: edemokracia::admin::Debate.issue (edemokracia::admin::Issue) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::Issue behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminDebateRepositoryForIssue {
  /// GET SINGLE
  Future<AdminIssueStore> edemokraciaAdminDebateIssueGet(AdminDebateStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssue();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final issueResponse = await locator<JudoApiClient>().edemokraciaAdminDebateListIssue(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminIssueStoreFromEdemokraciaAdminIssue(issueResponse);
  }

  // Target relations

  /// GET CREATE RANGE FOR categories
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminDebateIssueRangeOfCategoriesToCreate(AdminIssueStore target,
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
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminDebateIssueRangeOfCategoriesToUpdate(AdminIssueStore target,
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

  /// SET categories Collection
  Future<void> edemokraciaAdminDebateIssueSetCategories(AdminDebateStore owner, AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueSetCategories(target, selected);
  }

  /// ADD categories
  Future<void> edemokraciaAdminDebateIssueAddCategories(AdminDebateStore owner, AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueAddCategories(target, selected);
  }

  /// REMOVE categories
  Future<void> edemokraciaAdminDebateIssueRemoveCategories(AdminDebateStore owner, AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueRemoveCategories(target, selected);
  }

  /// GET CREATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminDebateIssueRangeOfOwnerToCreate(AdminIssueStore target,
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
  Future<List<AdminUserStore>> edemokraciaAdminDebateIssueRangeOfOwnerToUpdate(AdminIssueStore target,
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

  /// SET owner Single
  Future<void> edemokraciaAdminDebateIssueSetOwner(AdminDebateStore owner, AdminIssueStore target, AdminUserStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueSetOwner(target, selected);
  }

  /// UNSET owner
  Future<void> edemokraciaAdminDebateIssueUnsetOwner(AdminDebateStore owner, AdminIssueStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueUnsetOwner(target);
  }
}
