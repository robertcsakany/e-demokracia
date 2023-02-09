//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: activityDistricts
//   Relation owner: edemokracia::admin::User
//   Relation target: edemokracia::admin::District
//   Access: false
//
//    Relation: edemokracia::admin::User.activityDistricts (edemokracia::admin::District) behaviours:  LIST  SET  ADD  REMOVE  RANGE  REFRESH  UPDATE  VALIDATE_UPDATE
//    TransferObject: edemokracia::admin::District behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminUserRepositoryForActivityDistricts {
  /// GET Collection
  Future<List<AdminDistrictStore>> edemokraciaAdminUserActivityDistrictsList(AdminUserStore owner,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDistrict();
    var seek = EdemokraciaExtensionAdminSeekDistrict();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeDistrict();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'city') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.city.add(filter);
        }
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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminDistrict(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> districtListResponse =
        await locator<JudoApiClient>().edemokraciaAdminUserListActivityDistricts(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return districtListResponse.map<AdminDistrictStore>(AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict).toList();
  }

  /// UPDATE
  Future<AdminDistrictStore> edemokraciaAdminUserActivityDistrictsUpdate(AdminUserStore owner, AdminDistrictStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminDistrictUpdate(target);
  }

  // Target relations

}
