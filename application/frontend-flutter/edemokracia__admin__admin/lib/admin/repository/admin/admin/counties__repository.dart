//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: counties
//   Relation owner: edemokracia::admin::Admin
//   Relation target: edemokracia::admin::County
//   Access: true
//
//    Relation: edemokracia::admin::Admin.counties (edemokracia::admin::County) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::County behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE

part of admin.repository;

class AdminAdminRepositoryForCounties {
  /// GET Collection (Access)
  Future<List<AdminCountyStore>> edemokraciaAdminAdminCountiesList(
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

    List<dynamic> countyListResponse = await locator<JudoApiClient>().edemokraciaAdminAdminListCounties(null, input: queryCustomizer.toJson());
    return countyListResponse.map<AdminCountyStore>(AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty).toList();
  }

  /// CREATE (Access)
  Future<AdminCountyStore> edemokraciaAdminAdminCountiesCreate(AdminCountyStore target) async {
    final countyForCreateAndUpdateRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCountyForCreateAndUpdateFromAdminCountyStore(target);
    final countyResponse = await locator<JudoApiClient>().edemokraciaAdminAdminCreateInstanceCounties(null, countyForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(countyResponse);
  }

  /// VALIDATE CREATE (Access)
  Future<AdminCountyStore> edemokraciaAdminAdminCountiesValidateForCreate(AdminCountyStore target) async {
    final countyForCreateAndUpdateRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminCountyForCreateAndUpdateFromAdminCountyStore(target);
    final countyResponse = await locator<JudoApiClient>().edemokraciaAdminAdminValidateCreateInstanceCounties(null, countyForCreateAndUpdateRequest);
    return AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty(countyResponse);
  }

  /// DELETE (Access)
  Future<void> edemokraciaAdminAdminCountiesDelete(AdminCountyStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminCountyDelete(target);
  }

  /// UPDATE  (Access)
  Future<AdminCountyStore> edemokraciaAdminAdminCountiesUpdate(AdminCountyStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminCountyUpdate(target);
  }

  // Target relations

}
