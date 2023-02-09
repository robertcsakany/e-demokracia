//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: cons
//   Relation owner: edemokracia::admin::Con
//   Relation target: edemokracia::admin::Con
//   Access: false
//
//    Relation: edemokracia::admin::Con.cons (edemokracia::admin::Con) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::Con behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminConRepositoryForCons {
  /// GET Collection
  Future<List<AdminConStore>> edemokraciaAdminConConsList(AdminConStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminConStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCon();
    var seek = EdemokraciaExtensionAdminSeekCon();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeCon();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'createdByName') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.createdByName.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'downVotes') {
          var filter = repository_filters[filter_key.Integer](element);
          queryCustomizer.downVotes.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'upVotes') {
          var filter = repository_filters[filter_key.Integer](element);
          queryCustomizer.upVotes.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminCon(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> conListResponse =
        await locator<JudoApiClient>().edemokraciaAdminConListCons(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return conListResponse.map<AdminConStore>(AdminAdminRepositoryStoreMapper.createAdminConStoreFromEdemokraciaAdminCon).toList();
  }

  /// DELETE
  Future<void> edemokraciaAdminConConsDelete(AdminConStore owner, AdminConStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminConDelete(target);
  }

  /// UPDATE
  Future<AdminConStore> edemokraciaAdminConConsUpdate(AdminConStore owner, AdminConStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminConUpdate(target);
  }

  // Target relations

}
