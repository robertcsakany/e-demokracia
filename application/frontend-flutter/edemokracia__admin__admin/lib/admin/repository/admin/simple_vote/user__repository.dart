//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: user
//   Relation owner: edemokracia::admin::SimpleVote
//   Relation target: edemokracia::admin::User
//   Access: false
//
//    Relation: edemokracia::admin::SimpleVote.user (edemokracia::admin::User) behaviours:  LIST  SET  UNSET  RANGE  REFRESH
//    TransferObject: edemokracia::admin::User behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminSimpleVoteRepositoryForUser {
  /// GET SINGLE
  Future<AdminUserStore> edemokraciaAdminSimpleVoteUserGet(AdminSimpleVoteStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final userResponse = await locator<JudoApiClient>().edemokraciaAdminSimpleVoteListUser(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(userResponse);
  }

  // Target relations
  /// GET CREATE RANGE FOR activityCities
  Future<List<AdminCityStore>> edemokraciaAdminSimpleVoteUserRangeOfActivityCitiesToCreate(AdminUserStore target,
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
  Future<List<AdminCityStore>> edemokraciaAdminSimpleVoteUserRangeOfActivityCitiesToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetActivityCities(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityCities(target, selected);
  }

  /// ADD activityCities
  Future<void> edemokraciaAdminSimpleVoteUserAddActivityCities(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityCities(target, selected);
  }

  /// REMOVE activityCities
  Future<void> edemokraciaAdminSimpleVoteUserRemoveActivityCities(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityCities(target, selected);
  }

  /// GET CREATE RANGE FOR activityCounties
  Future<List<AdminCountyStore>> edemokraciaAdminSimpleVoteUserRangeOfActivityCountiesToCreate(AdminUserStore target,
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
  Future<List<AdminCountyStore>> edemokraciaAdminSimpleVoteUserRangeOfActivityCountiesToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetActivityCounties(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityCounties(target, selected);
  }

  /// ADD activityCounties
  Future<void> edemokraciaAdminSimpleVoteUserAddActivityCounties(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityCounties(target, selected);
  }

  /// REMOVE activityCounties
  Future<void> edemokraciaAdminSimpleVoteUserRemoveActivityCounties(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityCounties(target, selected);
  }

  /// GET CREATE RANGE FOR activityDistricts
  Future<List<AdminDistrictStore>> edemokraciaAdminSimpleVoteUserRangeOfActivityDistrictsToCreate(AdminUserStore target,
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
  Future<List<AdminDistrictStore>> edemokraciaAdminSimpleVoteUserRangeOfActivityDistrictsToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetActivityDistricts(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityDistricts(target, selected);
  }

  /// ADD activityDistricts
  Future<void> edemokraciaAdminSimpleVoteUserAddActivityDistricts(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityDistricts(target, selected);
  }

  /// REMOVE activityDistricts
  Future<void> edemokraciaAdminSimpleVoteUserRemoveActivityDistricts(
      AdminSimpleVoteStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityDistricts(target, selected);
  }

  /// GET CREATE RANGE FOR residentCity
  Future<List<AdminCityStore>> edemokraciaAdminSimpleVoteUserRangeOfResidentCityToCreate(AdminUserStore target,
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
  Future<List<AdminCityStore>> edemokraciaAdminSimpleVoteUserRangeOfResidentCityToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetResidentCity(AdminSimpleVoteStore owner, AdminUserStore target, AdminCityStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentCity(target, selected);
  }

  /// UNSET residentCity
  Future<void> edemokraciaAdminSimpleVoteUserUnsetResidentCity(AdminSimpleVoteStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentCity(target);
  }

  /// GET CREATE RANGE FOR residentCounty
  Future<List<AdminCountyStore>> edemokraciaAdminSimpleVoteUserRangeOfResidentCountyToCreate(AdminUserStore target,
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
  Future<List<AdminCountyStore>> edemokraciaAdminSimpleVoteUserRangeOfResidentCountyToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetResidentCounty(AdminSimpleVoteStore owner, AdminUserStore target, AdminCountyStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentCounty(target, selected);
  }

  /// UNSET residentCounty
  Future<void> edemokraciaAdminSimpleVoteUserUnsetResidentCounty(AdminSimpleVoteStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentCounty(target);
  }

  /// GET CREATE RANGE FOR residentDistrict
  Future<List<AdminDistrictStore>> edemokraciaAdminSimpleVoteUserRangeOfResidentDistrictToCreate(AdminUserStore target,
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
  Future<List<AdminDistrictStore>> edemokraciaAdminSimpleVoteUserRangeOfResidentDistrictToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetResidentDistrict(AdminSimpleVoteStore owner, AdminUserStore target, AdminDistrictStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentDistrict(target, selected);
  }

  /// UNSET residentDistrict
  Future<void> edemokraciaAdminSimpleVoteUserUnsetResidentDistrict(AdminSimpleVoteStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentDistrict(target);
  }

  /// GET CREATE RANGE FOR votes
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminSimpleVoteUserRangeOfVotesToCreate(AdminUserStore target,
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
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminSimpleVoteUserRangeOfVotesToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminSimpleVoteUserSetVotes(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetVotes(target, selected);
  }

  /// ADD votes
  Future<void> edemokraciaAdminSimpleVoteUserAddVotes(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddVotes(target, selected);
  }

  /// REMOVE votes
  Future<void> edemokraciaAdminSimpleVoteUserRemoveVotes(AdminSimpleVoteStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveVotes(target, selected);
  }
}
