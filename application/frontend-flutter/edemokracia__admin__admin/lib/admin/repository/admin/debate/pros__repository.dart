//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: pros
//   Relation owner: edemokracia::admin::Debate
//   Relation target: edemokracia::admin::Pro
//   Access: false
//
//    Relation: edemokracia::admin::Debate.pros (edemokracia::admin::Pro) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::Pro behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminDebateRepositoryForPros {
  /// GET Collection
  Future<List<AdminProStore>> edemokraciaAdminDebateProsList(AdminDebateStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminProStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerPro();
    var seek = EdemokraciaExtensionAdminSeekPro();

    var orderBy = EdemokraciaExtensionAdminOrderingTypePro();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminPro(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> proListResponse =
        await locator<JudoApiClient>().edemokraciaAdminDebateListPros(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return proListResponse.map<AdminProStore>(AdminAdminRepositoryStoreMapper.createAdminProStoreFromEdemokraciaAdminPro).toList();
  }

  /// DELETE
  Future<void> edemokraciaAdminDebateProsDelete(AdminDebateStore owner, AdminProStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminProDelete(target);
  }

  /// UPDATE
  Future<AdminProStore> edemokraciaAdminDebateProsUpdate(AdminDebateStore owner, AdminProStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminProUpdate(target);
  }

  // Target relations

}
