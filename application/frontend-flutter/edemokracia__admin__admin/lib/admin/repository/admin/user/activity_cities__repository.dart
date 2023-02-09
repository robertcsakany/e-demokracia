//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: activityCities
//   Relation owner: edemokracia::admin::User
//   Relation target: edemokracia::admin::City
//   Access: false
//
//    Relation: edemokracia::admin::User.activityCities (edemokracia::admin::City) behaviours:  LIST  SET  ADD  REMOVE  RANGE  REFRESH  UPDATE  VALIDATE_UPDATE
//    TransferObject: edemokracia::admin::City behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminUserRepositoryForActivityCities {
  /// GET Collection
  Future<List<AdminCityStore>> edemokraciaAdminUserActivityCitiesList(AdminUserStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerCity();
    var seek = EdemokraciaExtensionAdminSeekCity();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeCity();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'county') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.county.add(filter);
        }
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminCity(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> cityListResponse =
        await locator<JudoApiClient>().edemokraciaAdminUserListActivityCities(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return cityListResponse.map<AdminCityStore>(AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity).toList();
  }

  /// UPDATE
  Future<AdminCityStore> edemokraciaAdminUserActivityCitiesUpdate(AdminUserStore owner, AdminCityStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminCityUpdate(target);
  }

  // Target relations

}
