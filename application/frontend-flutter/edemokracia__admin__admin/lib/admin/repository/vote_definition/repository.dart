//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::VoteDefinition behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class VoteDefinitionRepository {
  /// REFRESH (Reload with Signed ID)
  Future<VoteDefinitionStore> edemokraciaVoteDefinitionGetByIdentifier(VoteDefinitionStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteDefinition();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final voteDefinitionResponse = await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesVoteDefinitionRefreshInstanceEdemokraciaVoteDefinition(
        target.internal__signedIdentifier,
        input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition(voteDefinitionResponse);
  }

  /// VALIDATE UPDATE
  Future<VoteDefinitionStore> edemokraciaVoteDefinitionValidateForUpdate(VoteDefinitionStore target) async {
    final voteDefinitionRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaVoteDefinitionForCreateAndUpdateFromVoteDefinitionStore(target);
    final voteDefinitionResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionValidateUpdateInstanceEdemokraciaVoteDefinition(
            target.internal__signedIdentifier, voteDefinitionRequest);
    return AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition(voteDefinitionResponse);
  }

  /// DELETE
  Future<void> edemokraciaVoteDefinitionDelete(VoteDefinitionStore target) async {
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionDeleteInstanceEdemokraciaVoteDefinition(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<VoteDefinitionStore> edemokraciaVoteDefinitionUpdate(VoteDefinitionStore target) async {
    final voteDefinitionRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaVoteDefinitionForCreateAndUpdateFromVoteDefinitionStore(target);
    final voteDefinitionResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionUpdateInstanceEdemokraciaVoteDefinition(target.internal__signedIdentifier, voteDefinitionRequest);
    return AdminAdminRepositoryStoreMapper.createVoteDefinitionStoreFromEdemokraciaVoteDefinition(voteDefinitionResponse);
  }

  /// GET CREATE RANGE FOR voteEntries
  Future<List<VoteEntryStore>> edemokraciaVoteDefinitionRangeOfVoteEntriesToCreate(VoteDefinitionStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, VoteEntryStore lastItem, bool reverse}) async {
    var voteDefinitionRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteDefinitionVoteEntriesFromVoteDefinitionStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteEntry();
    var seek = EdemokraciaExtensionSeekVoteEntry();

    var orderBy = EdemokraciaExtensionOrderingTypeVoteEntry();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum.values
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
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesVoteEntry(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteDefinitionRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> voteEntryListResponse = await locator<JudoApiClient>().edemokraciaVoteDefinitionGetRangeReferenceVoteEntries(input: voteDefinitionRequest);

    return voteEntryListResponse.map<VoteEntryStore>(AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry).toList();
  }

  /// GET UPDATE RANGE FOR voteEntries
  Future<List<VoteEntryStore>> edemokraciaVoteDefinitionRangeOfVoteEntriesToUpdate(VoteDefinitionStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, VoteEntryStore lastItem, bool reverse}) async {
    var voteDefinitionRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteDefinitionVoteEntriesFromVoteDefinitionStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerVoteEntry();
    var seek = EdemokraciaExtensionSeekVoteEntry();

    var orderBy = EdemokraciaExtensionOrderingTypeVoteEntry();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum.values
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
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesVoteEntry(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteDefinitionRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> voteEntryListResponse = await locator<JudoApiClient>().edemokraciaVoteDefinitionGetRangeReferenceVoteEntries(input: voteDefinitionRequest);

    return voteEntryListResponse.map<VoteEntryStore>(AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry).toList();
  }

  /// OPERATION voteRating
  Future<void> edemokraciaVoteDefinitionVoteRating(RatingVoteInputStore targetStore, VoteDefinitionStore ownerStore) async {
    final edemokraciaRatingVoteInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaRatingVoteInputFromRatingVoteInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteRating(ownerStore.internal__signedIdentifier, edemokraciaRatingVoteInputInput);
  }

  /// OPERATION voteSelectAnswer
  Future<void> edemokraciaVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, VoteDefinitionStore ownerStore) async {
    final edemokraciaSelectAnswerVoteSelectionInput =
        AdminAdminRepositoryStoreMapper.createEdemokraciaSelectAnswerVoteSelectionFromSelectAnswerVoteSelectionStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteSelectAnswer(ownerStore.internal__signedIdentifier, edemokraciaSelectAnswerVoteSelectionInput);
  }

  /// OPERATION INPUT RANGE FOR voteSelectAnswer
  Future<List<SelectAnswerVoteSelectionStore>> edemokraciaVoteDefinitionRangeOfVoteSelectAnswer(VoteDefinitionStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      SelectAnswerVoteSelectionStore lastItem,
      bool reverse}) async {
    var voteDefinitionRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionGetRangeInputVoteDefinitionVoteSelectAnswerFromVoteDefinitionStore(target);
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection();
    var seek = EdemokraciaExtensionSeekSelectAnswerVoteSelection();

    var orderBy = EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesSelectAnswerVoteSelection(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    voteDefinitionRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> selectAnswerVoteSelectionListResponse =
        await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesVoteDefinitionGetRangeInputVoteSelectAnswer(input: voteDefinitionRequest);

    return selectAnswerVoteSelectionListResponse
        .map<SelectAnswerVoteSelectionStore>(AdminAdminRepositoryStoreMapper.createSelectAnswerVoteSelectionStoreFromEdemokraciaSelectAnswerVoteSelection)
        .toList();
  }

  /// OPERATION voteYesNo
  Future<void> edemokraciaVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, VoteDefinitionStore ownerStore) async {
    final edemokraciaYesNoVoteInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaYesNoVoteInputFromYesNoVoteInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteYesNo(ownerStore.internal__signedIdentifier, edemokraciaYesNoVoteInputInput);
  }

  /// OPERATION voteYesNoAbstain
  Future<void> edemokraciaVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, VoteDefinitionStore ownerStore) async {
    final edemokraciaYesNoAbstainVoteInputInput =
        AdminAdminRepositoryStoreMapper.createEdemokraciaYesNoAbstainVoteInputFromYesNoAbstainVoteInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteYesNoAbstain(ownerStore.internal__signedIdentifier, edemokraciaYesNoAbstainVoteInputInput);
  }
}
