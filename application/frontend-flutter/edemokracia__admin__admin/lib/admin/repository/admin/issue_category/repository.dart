//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::IssueCategory behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminIssueCategoryRepository {
  /// TEMPLATE (Default)
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategoryDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminIssueCategoryGetTemplateIssueCategory();
    return AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategoryGetByIdentifier(AdminIssueCategoryStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssueCategory();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueCategoryResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueCategoryRefreshInstanceEdemokraciaAdminIssueCategory(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(issueCategoryResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategoryValidateForUpdate(AdminIssueCategoryStore target) async {
    final issueCategoryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueCategoryForCreateAndUpdateFromAdminIssueCategoryStore(target);
    final issueCategoryResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueCategoryValidateUpdateInstanceEdemokraciaAdminIssueCategory(target.internal__signedIdentifier, issueCategoryRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(issueCategoryResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminIssueCategoryDelete(AdminIssueCategoryStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueCategoryDeleteInstanceEdemokraciaAdminIssueCategory(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminIssueCategoryStore> edemokraciaAdminIssueCategoryUpdate(AdminIssueCategoryStore target) async {
    final issueCategoryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueCategoryForCreateAndUpdateFromAdminIssueCategoryStore(target);
    final issueCategoryResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueCategoryUpdateInstanceEdemokraciaAdminIssueCategory(target.internal__signedIdentifier, issueCategoryRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(issueCategoryResponse);
  }

  /// GET CREATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueCategoryRangeOfOwnerToCreate(AdminIssueCategoryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    var issueCategoryRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputIssueCategoryOwnerFromAdminIssueCategoryStore(target);
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerUser();
    var seek = EdemokraciaExtensionAdminSeekUser();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeUser();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'email') {
          var filter = repository_filters[filter_key.Email](element);
          queryCustomizer.email.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'firstName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.firstName.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isAdmin') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isAdmin.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'lastName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.lastName.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'phone') {
          var filter = repository_filters[filter_key.Phone](element);
          queryCustomizer.phone.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'representation') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.representation.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'userName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.userName.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminUser(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    issueCategoryRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaAdminIssueCategoryGetRangeReferenceOwner(input: issueCategoryRequest);

    return userListResponse.map<AdminUserStore>(AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser).toList();
  }

  /// GET UPDATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueCategoryRangeOfOwnerToUpdate(AdminIssueCategoryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    var issueCategoryRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputIssueCategoryOwnerFromAdminIssueCategoryStore(target);
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerUser();
    var seek = EdemokraciaExtensionAdminSeekUser();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeUser();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'email') {
          var filter = repository_filters[filter_key.Email](element);
          queryCustomizer.email.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'firstName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.firstName.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isAdmin') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isAdmin.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'lastName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.lastName.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'phone') {
          var filter = repository_filters[filter_key.Phone](element);
          queryCustomizer.phone.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'representation') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.representation.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'userName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.userName.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminUser(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    issueCategoryRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaAdminIssueCategoryGetRangeReferenceOwner(input: issueCategoryRequest);

    return userListResponse.map<AdminUserStore>(AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser).toList();
  }

  /// SET owner (Single)
  Future<void> edemokraciaAdminIssueCategorySetOwner(AdminIssueCategoryStore target, AdminUserStore selected) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueCategorySetReferenceOwner(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// UNSET owner
  Future<void> edemokraciaAdminIssueCategoryUnsetOwner(AdminIssueCategoryStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueCategoryUnsetReferenceOwner(target.internal__signedIdentifier);
  }
}
