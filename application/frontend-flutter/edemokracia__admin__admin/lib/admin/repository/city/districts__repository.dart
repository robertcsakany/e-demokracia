//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: districts
//   Relation owner: edemokracia::City
//   Relation target: edemokracia::District
//   Access: false
//
//    Relation: edemokracia::City.districts (edemokracia::District) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::District behaviours:  REFRESH

part of admin.repository;

class CityRepositoryForDistricts {
  /// GET Collection
  Future<List<DistrictStore>> edemokraciaCityDistrictsList(CityStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, DistrictStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerDistrict();
    var seek = EdemokraciaExtensionSeekDistrict();

    var orderBy = EdemokraciaExtensionOrderingTypeDistrict();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeDistrictAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesDistrict(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> districtListResponse =
        await locator<JudoApiClient>().edemokraciaCityListDistricts(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return districtListResponse.map<DistrictStore>(AdminAdminRepositoryStoreMapper.createDistrictStoreFromEdemokraciaDistrict).toList();
  }

  // Target relations

}
