//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: votes
//   Relation owner: edemokracia::admin::Pro
//   Relation target: edemokracia::admin::SimpleVote
//   Access: false
//
//    Relation: edemokracia::admin::Pro.votes (edemokracia::admin::SimpleVote) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::SimpleVote behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminProRepositoryForVotes {
  /// GET Collection
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminProVotesList(AdminProStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminSimpleVoteStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerSimpleVote();
    var seek = EdemokraciaExtensionAdminSeekSimpleVote();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeSimpleVote();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'type') {
          var filter = repository_filters[filter_key.SimpleVoteType](element);
          queryCustomizer.type.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminSimpleVote(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> simpleVoteListResponse =
        await locator<JudoApiClient>().edemokraciaAdminProListVotes(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return simpleVoteListResponse.map<AdminSimpleVoteStore>(AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote).toList();
  }

  /// CREATE
  Future<AdminSimpleVoteStore> edemokraciaAdminProVotesCreate(AdminProStore owner, AdminSimpleVoteStore target) async {
    final simpleVoteForCreateAndUpdateRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminSimpleVoteForCreateAndUpdateFromAdminSimpleVoteStore(target);
    final simpleVoteResponse =
        await locator<JudoApiClient>().edemokraciaAdminProCreateInstanceVotes(owner.internal__signedIdentifier, simpleVoteForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(simpleVoteResponse);
  }

  /// VALIDATE CREATE
  Future<AdminSimpleVoteStore> edemokraciaAdminProVotesValidateForCreate(AdminProStore owner, AdminSimpleVoteStore target) async {
    final simpleVoteForCreateAndUpdateRequest =
        AdminAdminRepositoryStoreMapper.createEdemokraciaAdminSimpleVoteForCreateAndUpdateFromAdminSimpleVoteStore(target);
    final simpleVoteResponse =
        await locator<JudoApiClient>().edemokraciaAdminProValidateCreateInstanceVotes(owner.internal__signedIdentifier, simpleVoteForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(simpleVoteResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminProVotesDelete(AdminProStore owner, AdminSimpleVoteStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminSimpleVoteDelete(target);
  }

  /// UPDATE
  Future<AdminSimpleVoteStore> edemokraciaAdminProVotesUpdate(AdminProStore owner, AdminSimpleVoteStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminSimpleVoteUpdate(target);
  }

  // Target relations
  /// GET CREATE RANGE FOR user
  Future<List<AdminUserStore>> edemokraciaAdminProVotesRangeOfUserToCreate(AdminSimpleVoteStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminSimpleVoteRangeOfUserToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR user
  Future<List<AdminUserStore>> edemokraciaAdminProVotesRangeOfUserToUpdate(AdminSimpleVoteStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminUserStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminSimpleVoteRangeOfUserToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET user Single
  Future<void> edemokraciaAdminProVotesSetUser(AdminProStore owner, AdminSimpleVoteStore target, AdminUserStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminSimpleVoteSetUser(target, selected);
  }

  /// UNSET user
  Future<void> edemokraciaAdminProVotesUnsetUser(AdminProStore owner, AdminSimpleVoteStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminSimpleVoteUnsetUser(target);
  }
}
