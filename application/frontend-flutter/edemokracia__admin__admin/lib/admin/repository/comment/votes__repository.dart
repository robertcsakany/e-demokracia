//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: votes
//   Relation owner: edemokracia::Comment
//   Relation target: edemokracia::SimpleVote
//   Access: false
//
//    Relation: edemokracia::Comment.votes (edemokracia::SimpleVote) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::SimpleVote behaviours:  REFRESH

part of admin.repository;

class CommentRepositoryForVotes {
  /// GET Collection
  Future<List<SimpleVoteStore>> edemokraciaCommentVotesList(CommentStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, SimpleVoteStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerSimpleVote();
    var seek = EdemokraciaExtensionSeekSimpleVote();

    var orderBy = EdemokraciaExtensionOrderingTypeSimpleVote();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesSimpleVote(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> simpleVoteListResponse =
        await locator<JudoApiClient>().edemokraciaCommentListVotes(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return simpleVoteListResponse.map<SimpleVoteStore>(AdminAdminRepositoryStoreMapper.createSimpleVoteStoreFromEdemokraciaSimpleVote).toList();
  }

  // Target relations

}
