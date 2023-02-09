//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::admin::User behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminUserRepository {
  /// REFRESH (Reload with Signed ID)
  Future<AdminUserStore> edemokraciaAdminUserGetByIdentifier(AdminUserStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final userResponse = await locator<JudoApiClient>()
        .edemokraciaAdminUserRefreshInstanceEdemokraciaAdminUser(target.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(userResponse);
  }

  /// VALIDATE UPDATE
  Future<AdminUserStore> edemokraciaAdminUserValidateForUpdate(AdminUserStore target) async {
    final userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminUserForCreateAndUpdateFromAdminUserStore(target);
    final userResponse =
        await locator<JudoApiClient>().edemokraciaAdminUserValidateUpdateInstanceEdemokraciaAdminUser(target.internal__signedIdentifier, userRequest);
    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(userResponse);
  }

  /// DELETE
  Future<void> edemokraciaAdminUserDelete(AdminUserStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserDeleteInstanceEdemokraciaAdminUser(target.internal__signedIdentifier);
  }

  /// UPDATE
  Future<AdminUserStore> edemokraciaAdminUserUpdate(AdminUserStore target) async {
    final userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaAdminUserForCreateAndUpdateFromAdminUserStore(target);
    final userResponse = await locator<JudoApiClient>().edemokraciaAdminUserUpdateInstanceEdemokraciaAdminUser(target.internal__signedIdentifier, userRequest);
    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(userResponse);
  }

  /// GET CREATE RANGE FOR activityCities
  Future<List<AdminCityStore>> edemokraciaAdminUserRangeOfActivityCitiesToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserActivityCitiesFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> cityListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceActivityCities(input: userRequest);

    return cityListResponse.map<AdminCityStore>(AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity).toList();
  }

  /// GET UPDATE RANGE FOR activityCities
  Future<List<AdminCityStore>> edemokraciaAdminUserRangeOfActivityCitiesToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserActivityCitiesFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> cityListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceActivityCities(input: userRequest);

    return cityListResponse.map<AdminCityStore>(AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity).toList();
  }

  /// SET activityCities (Collection)
  Future<void> edemokraciaAdminUserSetActivityCities(AdminUserStore target, List<AdminCityStore> selected) async {
    List<dynamic> itemsToSet = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceActivityCities(target.internal__signedIdentifier, itemsToSet);
  }

  /// ADD activityCities
  Future<void> edemokraciaAdminUserAddActivityCities(AdminUserStore target, List<AdminCityStore> selected) async {
    List<dynamic> itemsToAdd = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserAddReferenceActivityCities(target.internal__signedIdentifier, itemsToAdd);
  }

  /// REMOVE activityCities
  Future<void> edemokraciaAdminUserRemoveActivityCities(AdminUserStore target, List<AdminCityStore> selected) async {
    List<dynamic> itemsToRemove = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserRemoveReferenceActivityCities(target.internal__signedIdentifier, itemsToRemove);
  }

  /// GET CREATE RANGE FOR activityCounties
  Future<List<AdminCountyStore>> edemokraciaAdminUserRangeOfActivityCountiesToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserActivityCountiesFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> countyListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceActivityCounties(input: userRequest);

    return countyListResponse.map<AdminCountyStore>(AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty).toList();
  }

  /// GET UPDATE RANGE FOR activityCounties
  Future<List<AdminCountyStore>> edemokraciaAdminUserRangeOfActivityCountiesToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserActivityCountiesFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> countyListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceActivityCounties(input: userRequest);

    return countyListResponse.map<AdminCountyStore>(AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty).toList();
  }

  /// SET activityCounties (Collection)
  Future<void> edemokraciaAdminUserSetActivityCounties(AdminUserStore target, List<AdminCountyStore> selected) async {
    List<dynamic> itemsToSet = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceActivityCounties(target.internal__signedIdentifier, itemsToSet);
  }

  /// ADD activityCounties
  Future<void> edemokraciaAdminUserAddActivityCounties(AdminUserStore target, List<AdminCountyStore> selected) async {
    List<dynamic> itemsToAdd = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserAddReferenceActivityCounties(target.internal__signedIdentifier, itemsToAdd);
  }

  /// REMOVE activityCounties
  Future<void> edemokraciaAdminUserRemoveActivityCounties(AdminUserStore target, List<AdminCountyStore> selected) async {
    List<dynamic> itemsToRemove = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserRemoveReferenceActivityCounties(target.internal__signedIdentifier, itemsToRemove);
  }

  /// GET CREATE RANGE FOR activityDistricts
  Future<List<AdminDistrictStore>> edemokraciaAdminUserRangeOfActivityDistrictsToCreate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserActivityDistrictsFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> districtListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceActivityDistricts(input: userRequest);

    return districtListResponse.map<AdminDistrictStore>(AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict).toList();
  }

  /// GET UPDATE RANGE FOR activityDistricts
  Future<List<AdminDistrictStore>> edemokraciaAdminUserRangeOfActivityDistrictsToUpdate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserActivityDistrictsFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> districtListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceActivityDistricts(input: userRequest);

    return districtListResponse.map<AdminDistrictStore>(AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict).toList();
  }

  /// SET activityDistricts (Collection)
  Future<void> edemokraciaAdminUserSetActivityDistricts(AdminUserStore target, List<AdminDistrictStore> selected) async {
    List<dynamic> itemsToSet = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceActivityDistricts(target.internal__signedIdentifier, itemsToSet);
  }

  /// ADD activityDistricts
  Future<void> edemokraciaAdminUserAddActivityDistricts(AdminUserStore target, List<AdminDistrictStore> selected) async {
    List<dynamic> itemsToAdd = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserAddReferenceActivityDistricts(target.internal__signedIdentifier, itemsToAdd);
  }

  /// REMOVE activityDistricts
  Future<void> edemokraciaAdminUserRemoveActivityDistricts(AdminUserStore target, List<AdminDistrictStore> selected) async {
    List<dynamic> itemsToRemove = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserRemoveReferenceActivityDistricts(target.internal__signedIdentifier, itemsToRemove);
  }

  /// GET CREATE RANGE FOR residentCity
  Future<List<AdminCityStore>> edemokraciaAdminUserRangeOfResidentCityToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserResidentCityFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> cityListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceResidentCity(input: userRequest);

    return cityListResponse.map<AdminCityStore>(AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity).toList();
  }

  /// GET UPDATE RANGE FOR residentCity
  Future<List<AdminCityStore>> edemokraciaAdminUserRangeOfResidentCityToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserResidentCityFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> cityListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceResidentCity(input: userRequest);

    return cityListResponse.map<AdminCityStore>(AdminAdminRepositoryStoreMapper.createAdminCityStoreFromEdemokraciaAdminCity).toList();
  }

  /// SET residentCity (Single)
  Future<void> edemokraciaAdminUserSetResidentCity(AdminUserStore target, AdminCityStore selected) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceResidentCity(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// UNSET residentCity
  Future<void> edemokraciaAdminUserUnsetResidentCity(AdminUserStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserUnsetReferenceResidentCity(target.internal__signedIdentifier);
  }

  /// GET CREATE RANGE FOR residentCounty
  Future<List<AdminCountyStore>> edemokraciaAdminUserRangeOfResidentCountyToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserResidentCountyFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> countyListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceResidentCounty(input: userRequest);

    return countyListResponse.map<AdminCountyStore>(AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty).toList();
  }

  /// GET UPDATE RANGE FOR residentCounty
  Future<List<AdminCountyStore>> edemokraciaAdminUserRangeOfResidentCountyToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserResidentCountyFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> countyListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceResidentCounty(input: userRequest);

    return countyListResponse.map<AdminCountyStore>(AdminAdminRepositoryStoreMapper.createAdminCountyStoreFromEdemokraciaAdminCounty).toList();
  }

  /// SET residentCounty (Single)
  Future<void> edemokraciaAdminUserSetResidentCounty(AdminUserStore target, AdminCountyStore selected) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceResidentCounty(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// UNSET residentCounty
  Future<void> edemokraciaAdminUserUnsetResidentCounty(AdminUserStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserUnsetReferenceResidentCounty(target.internal__signedIdentifier);
  }

  /// GET CREATE RANGE FOR residentDistrict
  Future<List<AdminDistrictStore>> edemokraciaAdminUserRangeOfResidentDistrictToCreate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserResidentDistrictFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> districtListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceResidentDistrict(input: userRequest);

    return districtListResponse.map<AdminDistrictStore>(AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict).toList();
  }

  /// GET UPDATE RANGE FOR residentDistrict
  Future<List<AdminDistrictStore>> edemokraciaAdminUserRangeOfResidentDistrictToUpdate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserResidentDistrictFromAdminUserStore(target);
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

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> districtListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceResidentDistrict(input: userRequest);

    return districtListResponse.map<AdminDistrictStore>(AdminAdminRepositoryStoreMapper.createAdminDistrictStoreFromEdemokraciaAdminDistrict).toList();
  }

  /// SET residentDistrict (Single)
  Future<void> edemokraciaAdminUserSetResidentDistrict(AdminUserStore target, AdminDistrictStore selected) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceResidentDistrict(
        target.internal__signedIdentifier, SingleReference().copyWith(internal__signedIdentifier: selected.internal__signedIdentifier));
  }

  /// UNSET residentDistrict
  Future<void> edemokraciaAdminUserUnsetResidentDistrict(AdminUserStore target) async {
    return await locator<JudoApiClient>().edemokraciaAdminUserUnsetReferenceResidentDistrict(target.internal__signedIdentifier);
  }

  /// GET CREATE RANGE FOR votes
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminUserRangeOfVotesToCreate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminSimpleVoteStore lastItem,
      bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserVotesFromAdminUserStore(target);
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerSimpleVote();
    var seek = EdemokraciaExtensionAdminSeekSimpleVote();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeSimpleVote();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'type') {
          var filter = repository_filters[filter_key.SimpleVoteType](element);
          queryCustomizer.type.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminSimpleVote(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> simpleVoteListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceVotes(input: userRequest);

    return simpleVoteListResponse.map<AdminSimpleVoteStore>(AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote).toList();
  }

  /// GET UPDATE RANGE FOR votes
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminUserRangeOfVotesToUpdate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminSimpleVoteStore lastItem,
      bool reverse}) async {
    var userRequest = AdminAdminRepositoryStoreMapper.createEdemokraciaExtensionAdminGetRangeInputUserVotesFromAdminUserStore(target);
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerSimpleVote();
    var seek = EdemokraciaExtensionAdminSeekSimpleVote();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeSimpleVote();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.values
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
        if (element.attributeName.uncapitalize() == 'type') {
          var filter = repository_filters[filter_key.SimpleVoteType](element);
          queryCustomizer.type.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminSimpleVote(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    userRequest['queryCustomizer'] = queryCustomizer.toJson();

    List<dynamic> simpleVoteListResponse = await locator<JudoApiClient>().edemokraciaAdminUserGetRangeReferenceVotes(input: userRequest);

    return simpleVoteListResponse.map<AdminSimpleVoteStore>(AdminAdminRepositoryStoreMapper.createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote).toList();
  }

  /// SET votes (Collection)
  Future<void> edemokraciaAdminUserSetVotes(AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    List<dynamic> itemsToSet = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserSetReferenceVotes(target.internal__signedIdentifier, itemsToSet);
  }

  /// ADD votes
  Future<void> edemokraciaAdminUserAddVotes(AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    List<dynamic> itemsToAdd = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserAddReferenceVotes(target.internal__signedIdentifier, itemsToAdd);
  }

  /// REMOVE votes
  Future<void> edemokraciaAdminUserRemoveVotes(AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    List<dynamic> itemsToRemove = selected.map<dynamic>((s) => {"__signedIdentifier": s.internal__signedIdentifier}).toList();
    return await locator<JudoApiClient>().edemokraciaAdminUserRemoveReferenceVotes(target.internal__signedIdentifier, itemsToRemove);
  }
}
