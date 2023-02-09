//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: createdBy
//   Relation owner: edemokracia::admin::Issue
//   Relation target: edemokracia::admin::User
//   Access: false
//
//    Relation: edemokracia::admin::Issue.createdBy (edemokracia::admin::User) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::User behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminIssueRepositoryForCreatedBy {
  /// GET SINGLE
  Future<AdminUserStore> edemokraciaAdminIssueCreatedByGet(AdminIssueStore owner, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerUser();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final userResponse = await locator<JudoApiClient>().edemokraciaAdminIssueListCreatedBy(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminUserStoreFromEdemokraciaAdminUser(userResponse);
  }

  // Target relations
  /// GET CREATE RANGE FOR activityCities
  Future<List<AdminCityStore>> edemokraciaAdminIssueCreatedByRangeOfActivityCitiesToCreate(AdminUserStore target,
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
  Future<List<AdminCityStore>> edemokraciaAdminIssueCreatedByRangeOfActivityCitiesToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetActivityCities(AdminIssueStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityCities(target, selected);
  }

  /// ADD activityCities
  Future<void> edemokraciaAdminIssueCreatedByAddActivityCities(AdminIssueStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityCities(target, selected);
  }

  /// REMOVE activityCities
  Future<void> edemokraciaAdminIssueCreatedByRemoveActivityCities(AdminIssueStore owner, AdminUserStore target, List<AdminCityStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityCities(target, selected);
  }

  /// GET CREATE RANGE FOR activityCounties
  Future<List<AdminCountyStore>> edemokraciaAdminIssueCreatedByRangeOfActivityCountiesToCreate(AdminUserStore target,
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
  Future<List<AdminCountyStore>> edemokraciaAdminIssueCreatedByRangeOfActivityCountiesToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetActivityCounties(AdminIssueStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityCounties(target, selected);
  }

  /// ADD activityCounties
  Future<void> edemokraciaAdminIssueCreatedByAddActivityCounties(AdminIssueStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityCounties(target, selected);
  }

  /// REMOVE activityCounties
  Future<void> edemokraciaAdminIssueCreatedByRemoveActivityCounties(AdminIssueStore owner, AdminUserStore target, List<AdminCountyStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityCounties(target, selected);
  }

  /// GET CREATE RANGE FOR activityDistricts
  Future<List<AdminDistrictStore>> edemokraciaAdminIssueCreatedByRangeOfActivityDistrictsToCreate(AdminUserStore target,
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
  Future<List<AdminDistrictStore>> edemokraciaAdminIssueCreatedByRangeOfActivityDistrictsToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetActivityDistricts(AdminIssueStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetActivityDistricts(target, selected);
  }

  /// ADD activityDistricts
  Future<void> edemokraciaAdminIssueCreatedByAddActivityDistricts(AdminIssueStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddActivityDistricts(target, selected);
  }

  /// REMOVE activityDistricts
  Future<void> edemokraciaAdminIssueCreatedByRemoveActivityDistricts(AdminIssueStore owner, AdminUserStore target, List<AdminDistrictStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveActivityDistricts(target, selected);
  }

  /// GET CREATE RANGE FOR residentCity
  Future<List<AdminCityStore>> edemokraciaAdminIssueCreatedByRangeOfResidentCityToCreate(AdminUserStore target,
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
  Future<List<AdminCityStore>> edemokraciaAdminIssueCreatedByRangeOfResidentCityToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetResidentCity(AdminIssueStore owner, AdminUserStore target, AdminCityStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentCity(target, selected);
  }

  /// UNSET residentCity
  Future<void> edemokraciaAdminIssueCreatedByUnsetResidentCity(AdminIssueStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentCity(target);
  }

  /// GET CREATE RANGE FOR residentCounty
  Future<List<AdminCountyStore>> edemokraciaAdminIssueCreatedByRangeOfResidentCountyToCreate(AdminUserStore target,
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
  Future<List<AdminCountyStore>> edemokraciaAdminIssueCreatedByRangeOfResidentCountyToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetResidentCounty(AdminIssueStore owner, AdminUserStore target, AdminCountyStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentCounty(target, selected);
  }

  /// UNSET residentCounty
  Future<void> edemokraciaAdminIssueCreatedByUnsetResidentCounty(AdminIssueStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentCounty(target);
  }

  /// GET CREATE RANGE FOR residentDistrict
  Future<List<AdminDistrictStore>> edemokraciaAdminIssueCreatedByRangeOfResidentDistrictToCreate(AdminUserStore target,
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
  Future<List<AdminDistrictStore>> edemokraciaAdminIssueCreatedByRangeOfResidentDistrictToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetResidentDistrict(AdminIssueStore owner, AdminUserStore target, AdminDistrictStore selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetResidentDistrict(target, selected);
  }

  /// UNSET residentDistrict
  Future<void> edemokraciaAdminIssueCreatedByUnsetResidentDistrict(AdminIssueStore owner, AdminUserStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserUnsetResidentDistrict(target);
  }

  /// GET CREATE RANGE FOR votes
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminIssueCreatedByRangeOfVotesToCreate(AdminUserStore target,
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
  Future<List<AdminSimpleVoteStore>> edemokraciaAdminIssueCreatedByRangeOfVotesToUpdate(AdminUserStore target,
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
  Future<void> edemokraciaAdminIssueCreatedBySetVotes(AdminIssueStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserSetVotes(target, selected);
  }

  /// ADD votes
  Future<void> edemokraciaAdminIssueCreatedByAddVotes(AdminIssueStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserAddVotes(target, selected);
  }

  /// REMOVE votes
  Future<void> edemokraciaAdminIssueCreatedByRemoveVotes(AdminIssueStore owner, AdminUserStore target, List<AdminSimpleVoteStore> selected) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminUserRemoveVotes(target, selected);
  }
}
