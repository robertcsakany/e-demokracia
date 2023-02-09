//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: activityCounties
//   Relation owner: edemokracia::admin::User
//   Relation target: edemokracia::admin::County
//   Access: false
//
//    Relation: edemokracia::admin::User.activityCounties (edemokracia::admin::County) behaviours:  LIST  SET  ADD  REMOVE  RANGE  REFRESH  UPDATE  VALIDATE_UPDATE
//    TransferObject: edemokracia::admin::County behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminUserRepositoryForActivityCounties {
  /// GET Collection
  Future<List<AdminCountyStore>> edemokraciaAdminUserActivityCountiesList(AdminUserStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCounty();
    var seek = EdemokraciaExtensionAdminSeekCounty();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeCounty();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'name') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.name.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'representation') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.representation.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminCounty(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> countyListResponse =
        await locator<JudoApiClient>().edemokraciaAdminUserListActivityCounties(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return countyListResponse.map<AdminCountyStore>(AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty).toList();
  }

  /// UPDATE
  Future<AdminCountyStore> edemokraciaAdminUserActivityCountiesUpdate(AdminUserStore owner, AdminCountyStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminCountyUpdate(target);
  }

  // Target relations

}
