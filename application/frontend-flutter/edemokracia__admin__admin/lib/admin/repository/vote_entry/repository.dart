//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::VoteEntry behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class VoteEntryRepository {
  /// TEMPLATE (Default)
  Future<VoteEntryStore> edemokraciaVoteEntryDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesVoteEntryGetTemplateVoteEntry();
    return AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<VoteEntryStore> edemokraciaVoteEntryGetByIdentifier(VoteEntryStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteEntry();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final voteEntryResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteEntryRefreshInstanceEdemokraciaVoteEntry(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry(voteEntryResponse);
  }

  /// VALIDATE UPDATE
  Future<VoteEntryStore> edemokraciaVoteEntryValidateForUpdate(VoteEntryStore target) async {
    final voteEntryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaVoteEntryForCreateAndUpdateFromVoteEntryStore(target);
    final voteEntryResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteEntryValidateUpdateInstanceEdemokraciaVoteEntry(target.internal__signedIdentifier, voteEntryRequest);
    return AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry(voteEntryResponse);
  }

  /// DELETE
  Future<void> edemokraciaVoteEntryDelete(VoteEntryStore target) async {
    return await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesVoteEntryDeleteInstanceEdemokraciaVoteEntry(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<VoteEntryStore> edemokraciaVoteEntryUpdate(VoteEntryStore target) async {
    final voteEntryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaVoteEntryForCreateAndUpdateFromVoteEntryStore(target);
    final voteEntryResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteEntryUpdateInstanceEdemokraciaVoteEntry(target.internal__signedIdentifier, voteEntryRequest);
    return AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry(voteEntryResponse);
  }

  /// GET CREATE RANGE FOR user
  Future<List<UserStore>> edemokraciaVoteEntryRangeOfUserToCreate(VoteEntryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, UserStore lastItem, bool reverse}) async {
    var voteEntryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteEntryUserFromVoteEntryStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerUser();
    var seek = EdemokraciaExtensionSeekUser();

    var orderBy = EdemokraciaExtensionOrderingTypeUser();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeUserAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'userName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.userName.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesUser(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteEntryRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaVoteEntryGetRangeReferenceUser(input: voteEntryRequest);

    return userListResponse.map<UserStore>(AdminAdminRepositoryStoreMapper.createUserStoreFromEdemokraciaUser).toList();
  }

  /// GET UPDATE RANGE FOR user
  Future<List<UserStore>> edemokraciaVoteEntryRangeOfUserToUpdate(VoteEntryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, UserStore lastItem, bool reverse}) async {
    var voteEntryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteEntryUserFromVoteEntryStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerUser();
    var seek = EdemokraciaExtensionSeekUser();

    var orderBy = EdemokraciaExtensionOrderingTypeUser();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeUserAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'userName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.userName.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesUser(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteEntryRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> userListResponse = await locator<JudoApiClient>().edemokraciaVoteEntryGetRangeReferenceUser(input: voteEntryRequest);

    return userListResponse.map<UserStore>(AdminAdminRepositoryStoreMapper.createUserStoreFromEdemokraciaUser).toList();
  }

  /// SET user (Single)
  Future<void> edemokraciaVoteEntrySetUser(VoteEntryStore target, UserStore selected) async {
    return await locator<JudoApiClient>().edemokraciaVoteEntrySetReferenceUser(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// GET CREATE RANGE FOR voteDefinition
  Future<List<VoteDefinitionStore>> edemokraciaVoteEntryRangeOfVoteDefinitionToCreate(VoteEntryStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      VoteDefinitionStore lastItem,
      bool reverse}) async {
    var voteEntryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteEntryVoteDefinitionFromVoteEntryStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteDefinition();
    var seek = EdemokraciaExtensionSeekVoteDefinition();

    var orderBy = EdemokraciaExtensionOrderingTypeVoteDefinition();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'created') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.created.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isRatingType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isRatingType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isSelectAnswerType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isSelectAnswerType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isYesNoAbstainType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isYesNoAbstainType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isYesNoType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isYesNoType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'status') {
          var filter = repository_filters[filter_key.VoteStatus](element);
          queryCustomizer.status.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesVoteDefinition(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteEntryRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> voteDefinitionListResponse = await locator<JudoApiClient>().edemokraciaVoteEntryGetRangeReferenceVoteDefinition(input: voteEntryRequest);

    return voteDefinitionListResponse.map<VoteDefinitionStore>(AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition).toList();
  }

  /// GET UPDATE RANGE FOR voteDefinition
  Future<List<VoteDefinitionStore>> edemokraciaVoteEntryRangeOfVoteDefinitionToUpdate(VoteEntryStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      VoteDefinitionStore lastItem,
      bool reverse}) async {
    var voteEntryRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteEntryVoteDefinitionFromVoteEntryStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteDefinition();
    var seek = EdemokraciaExtensionSeekVoteDefinition();

    var orderBy = EdemokraciaExtensionOrderingTypeVoteDefinition();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'created') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.created.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isRatingType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isRatingType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isSelectAnswerType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isSelectAnswerType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isYesNoAbstainType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isYesNoAbstainType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isYesNoType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isYesNoType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'status') {
          var filter = repository_filters[filter_key.VoteStatus](element);
          queryCustomizer.status.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesVoteDefinition(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteEntryRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> voteDefinitionListResponse = await locator<JudoApiClient>().edemokraciaVoteEntryGetRangeReferenceVoteDefinition(input: voteEntryRequest);

    return voteDefinitionListResponse.map<VoteDefinitionStore>(AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition).toList();
  }

  /// SET voteDefinition (Single)
  Future<void> edemokraciaVoteEntrySetVoteDefinition(VoteEntryStore target, VoteDefinitionStore selected) async {
    return await locator<JudoApiClient>().edemokraciaVoteEntrySetReferenceVoteDefinition(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }
}
