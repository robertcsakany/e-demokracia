//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::VoteDefinition behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminVoteDefinitionRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminVoteDefinitionStore> edemokraciaAdminVoteDefinitionGetByIdentifier(AdminVoteDefinitionStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerVoteDefinition();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final voteDefinitionResponse = await locator<JudoApiClient>()
        .edemokraciaAdminVoteDefinitionRefreshInstanceEdemokraciaAdminVoteDefinition(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminVoteDefinitionStoreFromEdemokraciaAdminVoteDefinition(voteDefinitionResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminVoteDefinitionStore> edemokraciaAdminVoteDefinitionValidateForUpdate(AdminVoteDefinitionStore target) async {
    final voteDefinitionRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminVoteDefinitionForCreateAndUpdateFromAdminVoteDefinitionStore(target);
    final voteDefinitionResponse = await locator<JudoApiClient>()
        .edemokraciaAdminVoteDefinitionValidateUpdateInstanceEdemokraciaAdminVoteDefinition(target.internal__signedIdentifier, voteDefinitionRequest);
    return AdminAdminRepositoryStoreMapper.createAdminVoteDefinitionStoreFromEdemokraciaAdminVoteDefinition(voteDefinitionResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminVoteDefinitionDelete(AdminVoteDefinitionStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminVoteDefinitionDeleteInstanceEdemokraciaAdminVoteDefinition(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminVoteDefinitionStore> edemokraciaAdminVoteDefinitionUpdate(AdminVoteDefinitionStore target) async {
    final voteDefinitionRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminVoteDefinitionForCreateAndUpdateFromAdminVoteDefinitionStore(target);
    final voteDefinitionResponse = await locator<JudoApiClient>()
        .edemokraciaAdminVoteDefinitionUpdateInstanceEdemokraciaAdminVoteDefinition(target.internal__signedIdentifier, voteDefinitionRequest);
    return AdminAdminRepositoryStoreMapper.createAdminVoteDefinitionStoreFromEdemokraciaAdminVoteDefinition(voteDefinitionResponse);
  }

  /// OPERATION voteRating
  Future<void> edemokraciaAdminVoteDefinitionVoteRating(RatingVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    final edemokraciaRatingVoteInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaRatingVoteInputFromRatingVoteInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminVoteDefinitionVoteRating(ownerStore.internal__signedIdentifier, edemokraciaRatingVoteInputInput);
  }

  /// OPERATION voteSelectAnswer
  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    final edemokraciaSelectAnswerVoteSelectionInput =
        AdminAdminRepositoryStoreMapper.createEdemokraciaSelectAnswerVoteSelectionFromSelectAnswerVoteSelectionStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaAdminVoteDefinitionVoteSelectAnswer(ownerStore.internal__signedIdentifier, edemokraciaSelectAnswerVoteSelectionInput);
  }

  /// OPERATION INPUT RANGE FOR voteSelectAnswer
  Future<List<SelectAnswerVoteSelectionStore>> edemokraciaAdminVoteDefinitionRangeOfVoteSelectAnswer(AdminVoteDefinitionStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      SelectAnswerVoteSelectionStore lastItem,
      bool reverse}) async {
    var voteDefinitionRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputVoteDefinitionVoteSelectAnswerFromAdminVoteDefinitionStore(target);
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
        await locator<JudoApiClient>().edemokraciaAdminVoteDefinitionGetRangeInputVoteSelectAnswer(input: voteDefinitionRequest);

    return selectAnswerVoteSelectionListResponse
        .map<SelectAnswerVoteSelectionStore>(AdminAdminRepositoryStoreMapper.createSelectAnswerVoteSelectionStoreFromEdemokraciaSelectAnswerVoteSelection)
        .toList();
  }

  /// OPERATION voteYesNo
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    final edemokraciaYesNoVoteInputInput = AdminAdminRepositoryStoreMapper.createEdemokraciaYesNoVoteInputFromYesNoVoteInputStore(targetStore);
    return await locator<JudoApiClient>().edemokraciaAdminVoteDefinitionVoteYesNo(ownerStore.internal__signedIdentifier, edemokraciaYesNoVoteInputInput);
  }

  /// OPERATION voteYesNoAbstain
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    final edemokraciaYesNoAbstainVoteInputInput =
        AdminAdminRepositoryStoreMapper.createEdemokraciaYesNoAbstainVoteInputFromYesNoAbstainVoteInputStore(targetStore);
    return await locator<JudoApiClient>()
        .edemokraciaAdminVoteDefinitionVoteYesNoAbstain(ownerStore.internal__signedIdentifier, edemokraciaYesNoAbstainVoteInputInput);
  }
}
