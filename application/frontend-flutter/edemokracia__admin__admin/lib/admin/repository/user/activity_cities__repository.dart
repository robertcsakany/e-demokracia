//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: activityCities
//   Relation owner: edemokracia::User
//   Relation target: edemokracia::City
//   Access: false
//
//    Relation: edemokracia::User.activityCities (edemokracia::City) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::City behaviours:  REFRESH

part of admin.repository;

class UserRepositoryForActivityCities {
  /// GET Collection
  Future<List<CityStore>> edemokraciaUserActivityCitiesList(UserStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, CityStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCity();
    var seek = EdemokraciaExtensionSeekCity();

    var orderBy = EdemokraciaExtensionOrderingTypeCity();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeCityAttributeEnum.values
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
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesCity(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> cityListResponse =
        await locator<JudoApiClient>().edemokraciaUserListActivityCities(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return cityListResponse.map<CityStore>(AdminAdminRepositoryStoreMapper.createCityStoreFromEdemokraciaCity).toList();
  }

  // Target relations

}
