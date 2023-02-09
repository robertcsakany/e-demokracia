//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: voteEntries
//   Relation owner: edemokracia::VoteDefinition
//   Relation target: edemokracia::VoteEntry
//   Access: false
//
//    Relation: edemokracia::VoteDefinition.voteEntries (edemokracia::VoteEntry) behaviours:  LIST  RANGE  REFRESH
//    TransferObject: edemokracia::VoteEntry behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class VoteDefinitionRepositoryForVoteEntries {
  /// GET Collection
  Future<List<VoteEntryStore>> edemokraciaVoteDefinitionVoteEntriesList(VoteDefinitionStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, VoteEntryStore lastItem, bool reverse}) async {
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

    List<dynamic> voteEntryListResponse =
        await locator<JudoApiClient>().edemokraciaVoteDefinitionListVoteEntries(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return voteEntryListResponse.map<VoteEntryStore>(AdminAdminRepositoryStoreMapper.createVoteEntryStoreFromEdemokraciaVoteEntry).toList();
  }

  // Target relations
  /// GET CREATE RANGE FOR user
  Future<List<UserStore>> edemokraciaVoteDefinitionVoteEntriesRangeOfUserToCreate(VoteEntryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, UserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteEntryRangeOfUserToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR user
  Future<List<UserStore>> edemokraciaVoteDefinitionVoteEntriesRangeOfUserToUpdate(VoteEntryStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, UserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteEntryRangeOfUserToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET user Single
  Future<void> edemokraciaVoteDefinitionVoteEntriesSetUser(VoteDefinitionStore owner, VoteEntryStore target, UserStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteEntrySetUser(target, selected);
  }

  /// GET CREATE RANGE FOR voteDefinition
  Future<List<VoteDefinitionStore>> edemokraciaVoteDefinitionVoteEntriesRangeOfVoteDefinitionToCreate(VoteEntryStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      VoteDefinitionStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteEntryRangeOfVoteDefinitionToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR voteDefinition
  Future<List<VoteDefinitionStore>> edemokraciaVoteDefinitionVoteEntriesRangeOfVoteDefinitionToUpdate(VoteEntryStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      VoteDefinitionStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteEntryRangeOfVoteDefinitionToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET voteDefinition Single
  Future<void> edemokraciaVoteDefinitionVoteEntriesSetVoteDefinition(VoteDefinitionStore owner, VoteEntryStore target, VoteDefinitionStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaVoteEntrySetVoteDefinition(target, selected);
  }
}
