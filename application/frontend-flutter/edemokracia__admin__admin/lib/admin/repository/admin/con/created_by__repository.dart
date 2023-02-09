//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: createdBy
//   Relation owner: edemokracia::admin::Con
//   Relation target: edemokracia::admin::User
//   Access: false
//
//    Relation: edemokracia::admin::Con.createdBy (edemokracia::admin::User) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::User behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminConRepositoryForCreatedBy {
  /// GET SINGLE
  Future<AdminUserStore> edemokraciaAdminConCreatedByGet(AdminConStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final userResponse = await locator<JudoApiClient>().edemokraciaAdminConListCreatedBy(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(userResponse);
  }

  // Target relations
  /// GET CREATE RANGE FOR activityCities
  Future<List<AdminCityStore>> edemokraciaAdminConCreatedByRangeOfActivityCitiesToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfActivityCitiesToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR activityCities
  Future<List<AdminCityStore>> edemokraciaAdminConCreatedByRangeOfActivityCitiesToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfActivityCitiesToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET activityCities Collection
  Future<void> edemokraciaAdminConCreatedBySetActivityCities(AdminConStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityCities(target, selected);
  }

  /// ADD activityCities
  Future<void> edemokraciaAdminConCreatedByAddActivityCities(AdminConStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityCities(target, selected);
  }

  /// REMOVE activityCities
  Future<void> edemokraciaAdminConCreatedByRemoveActivityCities(AdminConStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityCities(target, selected);
  }

  /// GET CREATE RANGE FOR activityCounties
  Future<List<AdminCountyStore>> edemokraciaAdminConCreatedByRangeOfActivityCountiesToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfActivityCountiesToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR activityCounties
  Future<List<AdminCountyStore>> edemokraciaAdminConCreatedByRangeOfActivityCountiesToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfActivityCountiesToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET activityCounties Collection
  Future<void> edemokraciaAdminConCreatedBySetActivityCounties(AdminConStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityCounties(target, selected);
  }

  /// ADD activityCounties
  Future<void> edemokraciaAdminConCreatedByAddActivityCounties(AdminConStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityCounties(target, selected);
  }

  /// REMOVE activityCounties
  Future<void> edemokraciaAdminConCreatedByRemoveActivityCounties(AdminConStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityCounties(target, selected);
  }

  /// GET CREATE RANGE FOR activityDistricts
  Future<List<AdminDistrictStore>> edemokraciaAdminConCreatedByRangeOfActivityDistrictsToCreate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfActivityDistrictsToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR activityDistricts
  Future<List<AdminDistrictStore>> edemokraciaAdminConCreatedByRangeOfActivityDistrictsToUpdate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfActivityDistrictsToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET activityDistricts Collection
  Future<void> edemokraciaAdminConCreatedBySetActivityDistricts(AdminConStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityDistricts(target, selected);
  }

  /// ADD activityDistricts
  Future<void> edemokraciaAdminConCreatedByAddActivityDistricts(AdminConStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityDistricts(target, selected);
  }

  /// REMOVE activityDistricts
  Future<void> edemokraciaAdminConCreatedByRemoveActivityDistricts(AdminConStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityDistricts(target, selected);
  }

  /// GET CREATE RANGE FOR residentCity
  Future<List<AdminCityStore>> edemokraciaAdminConCreatedByRangeOfResidentCityToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfResidentCityToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR residentCity
  Future<List<AdminCityStore>> edemokraciaAdminConCreatedByRangeOfResidentCityToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCityStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfResidentCityToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET residentCity Single
  Future<void> edemokraciaAdminConCreatedBySetResidentCity(AdminConStore owner, AdminUserStore target, AdminCityStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentCity(target, selected);
  }

  /// UNSET residentCity
  Future<void> edemokraciaAdminConCreatedByUnsetResidentCity(AdminConStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentCity(target);
  }

  /// GET CREATE RANGE FOR residentCounty
  Future<List<AdminCountyStore>> edemokraciaAdminConCreatedByRangeOfResidentCountyToCreate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfResidentCountyToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR residentCounty
  Future<List<AdminCountyStore>> edemokraciaAdminConCreatedByRangeOfResidentCountyToUpdate(AdminUserStore target,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminCountyStore lastItem, bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfResidentCountyToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET residentCounty Single
  Future<void> edemokraciaAdminConCreatedBySetResidentCounty(AdminConStore owner, AdminUserStore target, AdminCountyStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentCounty(target, selected);
  }

  /// UNSET residentCounty
  Future<void> edemokraciaAdminConCreatedByUnsetResidentCounty(AdminConStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentCounty(target);
  }

  /// GET CREATE RANGE FOR residentDistrict
  Future<List<AdminDistrictStore>> edemokraciaAdminConCreatedByRangeOfResidentDistrictToCreate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfResidentDistrictToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR residentDistrict
  Future<List<AdminDistrictStore>> edemokraciaAdminConCreatedByRangeOfResidentDistrictToUpdate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminDistrictStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfResidentDistrictToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET residentDistrict Single
  Future<void> edemokraciaAdminConCreatedBySetResidentDistrict(AdminConStore owner, AdminUserStore target, AdminDistrictStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentDistrict(target, selected);
  }

  /// UNSET residentDistrict
  Future<void> edemokraciaAdminConCreatedByUnsetResidentDistrict(AdminConStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentDistrict(target);
  }

  /// GET CREATE RANGE FOR votes
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminConCreatedByRangeOfVotesToCreate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminSimpleVoteStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfVotesToCreate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// GET UPDATE RANGE FOR votes
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminConCreatedByRangeOfVotesToUpdate(AdminUserStore target,
      {String sortColumn,
      bool sortAscending,
      List<FilterStore> filterStoreList,
      int queryLimit,
      String mask,
      AdminSimpleVoteStore lastItem,
      bool reverse}) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRangeOfVotesToUpdate(target,
        sortColumn: sortColumn,
        sortAscending: sortAscending,
        filterStoreList: filterStoreList,
        queryLimit: queryLimit,
        mask: mask,
        lastItem: lastItem,
        reverse: reverse);
  }

  /// SET votes Collection
  Future<void> edemokraciaAdminConCreatedBySetVotes(AdminConStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetVotes(target, selected);
  }

  /// ADD votes
  Future<void> edemokraciaAdminConCreatedByAddVotes(AdminConStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddVotes(target, selected);
  }

  /// REMOVE votes
  Future<void> edemokraciaAdminConCreatedByRemoveVotes(AdminConStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveVotes(target, selected);
  }
}
