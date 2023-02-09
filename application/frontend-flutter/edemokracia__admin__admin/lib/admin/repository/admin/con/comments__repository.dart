//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: comments
//   Relation owner: edemokracia::admin::Con
//   Relation target: edemokracia::admin::Comment
//   Access: false
//
//    Relation: edemokracia::admin::Con.comments (edemokracia::admin::Comment) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::Comment behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminConRepositoryForComments {
  /// GET Collection
  Future<List<AdminCommentStore>> edemokraciaAdminConCommentsList(AdminConStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCommentStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerComment();
    var seek = EdemokraciaExtensionAdminSeekComment();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeComment();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'createdByName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.createdByName.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'downVotes') {
          var filter = repository_filters[filter_key.Integer](element);
          queryCustomizer.downVotes.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'upVotes') {
          var filter = repository_filters[filter_key.Integer](element);
          queryCustomizer.upVotes.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminComment(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> commentListResponse =
        await locator<JudoApiClient>().edemokraciaAdminConListComments(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return commentListResponse.map<AdminCommentStore>(AdminAdminRepositoryStoreMapper.createAdminCommentStoreFromEdemokraciaAdminComment).toList();
  }

  // Target relations

}
