//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: activityCounties
//   Relation owner: edemokracia::User
//   Relation target: edemokracia::County
//   Access: false
//
//    Relation: edemokracia::User.activityCounties (edemokracia::County) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::County behaviours:  REFRESH

part of admin.repository;

class UserRepositoryForActivityCounties {
  /// GET Collection
  Future<List<CountyStore>> edemokraciaUserActivityCountiesList(UserStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, CountyStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCounty();
    var seek = EdemokraciaExtensionSeekCounty();

    var orderBy = EdemokraciaExtensionOrderingTypeCounty();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionOrderingTypeCountyAttributeEnum.values
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesCounty(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> countyListResponse =
        await locator<JudoApiClient>().edemokraciaUserListActivityCounties(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return countyListResponse.map<CountyStore>(AdminAdminRepositoryStoreMapper.createCountyStoreFromEdemokraciaCounty).toList();
  }

  // Target relations

}
