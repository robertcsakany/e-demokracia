//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: subcategories
//   Relation owner: edemokracia::admin::IssueCategory
//   Relation target: edemokracia::admin::IssueCategory
//   Access: false
//
//    Relation: edemokracia::admin::IssueCategory.subcategories (edemokracia::admin::IssueCategory) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::IssueCategory behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminIssueCategoryRepositoryForSubcategories {
  /// GET Collection
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminIssueCategorySubcategoriesList(AdminIssueCategoryStore owner,
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
        await locator<JudoApiClient>().edemokraciaAdminIssueCategoryListSubcategories(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return issueCategoryListResponse
        .map<AdminIssueCategoryStore>(AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory)
        .toList();
  }

  /// CREATE
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategorySubcategoriesCreate(AdminIssueCategoryStore owner, AdminIssueCategoryStore target) async {
    final issueCategoryForCreateAndUpdateRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueCategoryForCreateAndUpdateFromAdminIssueCategoryStore(target);
    final issueCategoryResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueCategoryCreateInstanceSubcategories(owner.internal__signedIdentifier, issueCategoryForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(issueCategoryResponse);
  }

  /// VALIDATE CREATE
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategorySubcategoriesValidateForCreate(
      AdminIssueCategoryStore owner, AdminIssueCategoryStore target) async {
    final issueCategoryForCreateAndUpdateRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueCategoryForCreateAndUpdateFromAdminIssueCategoryStore(target);
    final issueCategoryResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueCategoryValidateCreateInstanceSubcategories(owner.internal__signedIdentifier, issueCategoryForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(issueCategoryResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminIssueCategorySubcategoriesDelete(AdminIssueCategoryStore owner, AdminIssueCategoryStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategoryDelete(target);
  }

  /// UPDATE
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategorySubcategoriesUpdate(AdminIssueCategoryStore owner, AdminIssueCategoryStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategoryUpdate(target);
  }

  // Target relations
  /// GET CREATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueCategorySubcategoriesRangeOfOwnerToCreate(AdminIssueCategoryStore target,
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
  Future<List<AdminUserStore>> edemokraciaAdminIssueCategorySubcategoriesRangeOfOwnerToUpdate(AdminIssueCategoryStore target,
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
  Future<void> edemokraciaAdminIssueCategorySubcategoriesSetOwner(
      AdminIssueCategoryStore owner, AdminIssueCategoryStore target, AdminUserStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategorySetOwner(target, selected);
  }

  /// UNSET owner
  Future<void> edemokraciaAdminIssueCategorySubcategoriesUnsetOwner(AdminIssueCategoryStore owner, AdminIssueCategoryStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminIssueCategoryUnsetOwner(target);
  }
}
