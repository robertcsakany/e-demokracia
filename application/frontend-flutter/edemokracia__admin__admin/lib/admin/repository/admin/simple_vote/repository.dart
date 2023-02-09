//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::SimpleVote behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminSimpleVoteRepository {
  /// TEMPLATE (Default)
  Future<AdminSimpleVoteStore> edemokraciaAdminSimpleVoteDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaAdminSimpleVoteGetTemplateSimpleVote();
    return AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<AdminSimpleVoteStore> edemokraciaAdminSimpleVoteGetByIdentifier(AdminSimpleVoteStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerSimpleVote();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final simpleVoteResponse = await locator<JudoApiClient>()
        .edemokraciaAdminSimpleVoteRefreshInstanceEdemokraciaAdminSimpleVote(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(simpleVoteResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminSimpleVoteStore> edemokraciaAdminSimpleVoteValidateForUpdate(AdminSimpleVoteStore target) async {
    final simpleVoteRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminSimpleVoteForCreateAndUpdateFromAdminSimpleVoteStore(target);
    final simpleVoteResponse = await locator<JudoApiClient>()
        .edemokraciaAdminSimpleVoteValidateUpdateInstanceEdemokraciaAdminSimpleVote(target.internal__signedIdentifier, simpleVoteRequest);
    return AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(simpleVoteResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminSimpleVoteDelete(AdminSimpleVoteStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminSimpleVoteDeleteInstanceEdemokraciaAdminSimpleVote(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminSimpleVoteStore> edemokraciaAdminSimpleVoteUpdate(AdminSimpleVoteStore target) async {
    final simpleVoteRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminSimpleVoteForCreateAndUpdateFromAdminSimpleVoteStore(target);
    final simpleVoteResponse =
        await locator<JudoApiClient>().edemokraciaAdminSimpleVoteUpdateInstanceEdemokraciaAdminSimpleVote(target.internal__signedIdentifier, simpleVoteRequest);
    return AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(simpleVoteResponse);
  }

  /// GET CREATE RANGE FOR user
  Future<List<AdminUserStore>> edemokraciaAdminSimpleVoteRangeOfUserToCreate(AdminSimpleVoteStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    var simpleVoteRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputSimpleVoteUserFromAdminSimpleVoteStore(target);
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

    simpleVoteRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaAdminSimpleVoteGetRangeReferenceUser(input: simpleVoteRequest);

    return userListResponse.map<AdminUserStore>(AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser).toList();
  }

  /// GET UPDATE RANGE FOR user
  Future<List<AdminUserStore>> edemokraciaAdminSimpleVoteRangeOfUserToUpdate(AdminSimpleVoteStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    var simpleVoteRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputSimpleVoteUserFromAdminSimpleVoteStore(target);
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

    simpleVoteRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaAdminSimpleVoteGetRangeReferenceUser(input: simpleVoteRequest);

    return userListResponse.map<AdminUserStore>(AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser).toList();
  }

  /// SET user (Single)
  Future<void> edemokraciaAdminSimpleVoteSetUser(AdminSimpleVoteStore target, AdminUserStore selected) async {
    return await locator<JudoApiClient>().edemokraciaAdminSimpleVoteSetReferenceUser(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// UNSET user
  Future<void> edemokraciaAdminSimpleVoteUnsetUser(AdminSimpleVoteStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminSimpleVoteUnsetReferenceUser(target.internal__signedIdentifier);
  }
}
