//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: districts
//   Relation owner: edemokracia::admin::City
//   Relation target: edemokracia::admin::District
//   Access: false
//
//    Relation: edemokracia::admin::City.districts (edemokracia::admin::District) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::District behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminCityRepositoryForDistricts {
  /// GET Collection
  Future<List<AdminDistrictStore>> edemokraciaAdminCityDistrictsList(AdminCityStore owner,
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
        await locator<JudoApiClient>().edemokraciaAdminCityListDistricts(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return districtListResponse.map<AdminDistrictStore>(AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict).toList();
  }

  /// CREATE
  Future<AdminDistrictStore> edemokraciaAdminCityDistrictsCreate(AdminCityStore owner, AdminDistrictStore target) async {
    final districtForCreateAndUpdateRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminDistrictForCreateAndUpdateFromAdminDistrictStore(target);
    final districtResponse =
        await locator<JudoApiClient>().edemokraciaAdminCityCreateInstanceDistricts(owner.internal__signedIdentifier, districtForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(districtResponse);
  }

  /// VALIDATE CREATE
  Future<AdminDistrictStore> edemokraciaAdminCityDistrictsValidateForCreate(AdminCityStore owner, AdminDistrictStore target) async {
    final districtForCreateAndUpdateRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminDistrictForCreateAndUpdateFromAdminDistrictStore(target);
    final districtResponse =
        await locator<JudoApiClient>().edemokraciaAdminCityValidateCreateInstanceDistricts(owner.internal__signedIdentifier, districtForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict(districtResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminCityDistrictsDelete(AdminCityStore owner, AdminDistrictStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminDistrictDelete(target);
  }

  /// UPDATE
  Future<AdminDistrictStore> edemokraciaAdminCityDistrictsUpdate(AdminCityStore owner, AdminDistrictStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminDistrictUpdate(target);
  }

  // Target relations

}
