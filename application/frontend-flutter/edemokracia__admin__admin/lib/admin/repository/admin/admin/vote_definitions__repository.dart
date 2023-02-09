//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: voteDefinitions
//   Relation owner: edemokracia::admin::Admin
//   Relation target: edemokracia::admin::VoteDefinition
//   Access: true
//
//    Relation: edemokracia::admin::Admin.voteDefinitions (edemokracia::admin::VoteDefinition) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::VoteDefinition behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminAdminRepositoryForVoteDefinitions {
  /// GET Collection (Access)
  Future<List<AdminVoteDefinitionStore>> edemokraciaAdminAdminVoteDefinitionsList(
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminVoteDefinitionStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerVoteDefinition();
    var seek = EdemokraciaExtensionAdminSeekVoteDefinition();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeVoteDefinition();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'isNotRatingType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isNotRatingType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isNotSelectAnswerType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isNotSelectAnswerType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isNotYesNoAbstainType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isNotYesNoAbstainType.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'isNotYesNoType') {
          var filter = repository_filters[filter_key.Boolean](element);
          queryCustomizer.isNotYesNoType.add(filter);
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminVoteDefinition(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> voteDefinitionListResponse = await locator<JudoApiClient>().edemokraciaAdminAdminListVoteDefinitions(null, input: queryCustomizer.toJson());
    return voteDefinitionListResponse
        .map<AdminVoteDefinitionStore>(AdminAdminRepositoryStoreMapper.createAdminVoteDefinitionStoreFromEdemokraciaAdminVoteDefinition)
        .toList();
  }

  /// DELETE (Access)
  Future<void> edemokraciaAdminAdminVoteDefinitionsDelete(AdminVoteDefinitionStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminVoteDefinitionDelete(target);
  }

  /// UPDATE  (Access)
  Future<AdminVoteDefinitionStore> edemokraciaAdminAdminVoteDefinitionsUpdate(AdminVoteDefinitionStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminVoteDefinitionUpdate(target);
  }

  // Target relations

  /// GET UPDATE RANGE FOR voteSelectAnswer
  Future<List<SelectAnswerVoteSelectionStore>> edemokraciaAdminAdminVoteDefinitionsRangeOfVoteSelectAnswer(AdminVoteDefinitionStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      SelectAnswerVoteSelectionStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminVoteDefinitionRangeOfVoteSelectAnswer(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }
}
