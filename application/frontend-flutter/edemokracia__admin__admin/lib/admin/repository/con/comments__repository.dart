//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: comments
//   Relation owner: edemokracia::Con
//   Relation target: edemokracia::Comment
//   Access: false
//
//    Relation: edemokracia::Con.comments (edemokracia::Comment) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::Comment behaviours:  REFRESH

part of admin.repository;

class ConRepositoryForComments {
  /// GET Collection
  Future<List<CommentStore>> edemokraciaConCommentsList(ConStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, CommentStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerComment();
    var seek = EdemokraciaExtensionSeekComment();

    var orderBy = EdemokraciaExtensionOrderingTypeComment();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeCommentAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'comment') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.comment.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'created') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.created.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesComment(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> commentListResponse =
        await locator<JudoApiClient>().edemokraciaConListComments(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return commentListResponse.map<CommentStore>(AdminAdminRepositoryStoreMapper.createCommentStoreFromEdemokraciaComment).toList();
  }

  // Target relations

}
