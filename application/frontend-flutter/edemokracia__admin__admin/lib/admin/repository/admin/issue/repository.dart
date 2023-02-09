//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::Issue behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminIssueRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminIssueStore> edemokraciaAdminIssueGetByIdentifier(AdminIssueStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerIssue();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final issueResponse = await locator<JudoApiClient>()
        .edemokraciaAdminIssueRefreshInstanceEdemokraciaAdminIssue(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminIssueStoreFromEdemokraciaAdminIssue(issueResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminIssueStore> edemokraciaAdminIssueValidateForUpdate(AdminIssueStore target) async {
    final issueRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueForCreateAndUpdateFromAdminIssueStore(target);
    final issueResponse =
        await locator<JudoApiClient>().edemokraciaAdminIssueValidateUpdateInstanceEdemokraciaAdminIssue(target.internal__signedIdentifier, issueRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueStoreFromEdemokraciaAdminIssue(issueResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminIssueDelete(AdminIssueStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueDeleteInstanceEdemokraciaAdminIssue(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminIssueStore> edemokraciaAdminIssueUpdate(AdminIssueStore target) async {
    final issueRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminIssueForCreateAndUpdateFromAdminIssueStore(target);
    final issueResponse =
        await locator<JudoApiClient>().edemokraciaAdminIssueUpdateInstanceEdemokraciaAdminIssue(target.internal__signedIdentifier, issueRequest);
    return AdminAdminRepositoryStoreMapper.createAdminIssueStoreFromEdemokraciaAdminIssue(issueResponse);
  }

  /// GET CREATE RANGE FOR categories
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminIssueRangeOfCategoriesToCreate(AdminIssueStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueCategoryStore lastItem,
      bool reverse}) async {
    var issueRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputIssueCategoriesFromAdminIssueStore(target);
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

    issueRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> issueCategoryListResponse = await locator<JudoApiClient>().edemokraciaAdminIssueGetRangeReferenceCategories(input: issueRequest);

    return issueCategoryListResponse
        .map<AdminIssueCategoryStore>(AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory)
        .toList();
  }

  /// GET UPDATE RANGE FOR categories
  Future<List<AdminIssueCategoryStore>> edemokraciaAdminIssueRangeOfCategoriesToUpdate(AdminIssueStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminIssueCategoryStore lastItem,
      bool reverse}) async {
    var issueRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputIssueCategoriesFromAdminIssueStore(target);
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

    issueRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> issueCategoryListResponse = await locator<JudoApiClient>().edemokraciaAdminIssueGetRangeReferenceCategories(input: issueRequest);

    return issueCategoryListResponse
        .map<AdminIssueCategoryStore>(AdminAdminRepositoryStoreMapper.createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory)
        .toList();
  }

  /// SET categories (Collection)
  Future<void> edemokraciaAdminIssueSetCategories(AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    List<dynamic> itemsToSet = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminIssueSetReferenceCategories(target.internal__signedIdentifier, itemsToSet);
  }

  /// ADD categories
  Future<void> edemokraciaAdminIssueAddCategories(AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    List<dynamic> itemsToAdd = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminIssueAddReferenceCategories(target.internal__signedIdentifier, itemsToAdd);
  }

  /// REMOVE categories
  Future<void> edemokraciaAdminIssueRemoveCategories(AdminIssueStore target, List<AdminIssueCategoryStore> selected) async {
    List<dynamic> itemsToRemove = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminIssueRemoveReferenceCategories(target.internal__signedIdentifier, itemsToRemove);
  }

  /// GET CREATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueRangeOfOwnerToCreate(AdminIssueStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    var issueRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputIssueOwnerFromAdminIssueStore(target);
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

    issueRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaAdminIssueGetRangeReferenceOwner(input: issueRequest);

    return userListResponse.map<AdminUserStore>(AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser).toList();
  }

  /// GET UPDATE RANGE FOR owner
  Future<List<AdminUserStore>> edemokraciaAdminIssueRangeOfOwnerToUpdate(AdminIssueStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    var issueRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputIssueOwnerFromAdminIssueStore(target);
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

    issueRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaAdminIssueGetRangeReferenceOwner(input: issueRequest);

    return userListResponse.map<AdminUserStore>(AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser).toList();
  }

  /// SET owner (Single)
  Future<void> edemokraciaAdminIssueSetOwner(AdminIssueStore target, AdminUserStore selected) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueSetReferenceOwner(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// UNSET owner
  Future<void> edemokraciaAdminIssueUnsetOwner(AdminIssueStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminIssueUnsetReferenceOwner(target.internal__signedIdentifier);
  }

  /// OPERATION createComment
  Future<void> edemokraciaAdminIssueCreateComment(CreateCommentInputStore targetStore, AdminIssueStore ownerStore) async {
    final edemokraciaCreateCommentInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateCommentInputFromCreateCommentInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminIssueCreateComment(ownerStore.internal__signedIdentifier, edemokraciaCreateCommentInputInput);
  }

  /// OPERATION createDebate
  Future<DebateStore> edemokraciaAdminIssueCreateDebate(CreateDebateInputStore targetStore, AdminIssueStore ownerStore) async {
    final edemokraciaCreateDebateInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaCreateDebateInputFromCreateDebateInputStore(targetStore);
    final edemokraciaDebateOutput =
        await locator<JudoApiClient>().edemokraciaAdminIssueCreateDebate(ownerStore.internal__signedIdentifier, edemokraciaCreateDebateInputInput);

    return AdminAdminRepositoryStoreMapper.createDebateStoreFromEdemokraciaDebate(edemokraciaDebateOutput);
  }
}
