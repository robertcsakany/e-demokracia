//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#application.actor)
// Template name: lib/repositories/repository_access_point.dart.hbs
// Application: edemokracia::admin::Admin//
//
//    Relation edemokracia::admin::Admin.categories (edemokracia::admin::IssueCategory) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::IssueCategory behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE
//
//    Relation edemokracia::admin::Admin.counties (edemokracia::admin::County) behaviours:  LIST  CREATE  VALIDATE_CREATE  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::County behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE  TEMPLATE
//
//    Relation edemokracia::admin::Admin.dashboardhome (edemokracia::admin::Dashboard) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::Dashboard behaviours:  REFRESH
//
//    Relation edemokracia::admin::Admin.debates (edemokracia::admin::Debate) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::Debate behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//
//    Relation edemokracia::admin::Admin.issues (edemokracia::admin::Issue) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::Issue behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//
//    Relation edemokracia::admin::Admin.users (edemokracia::admin::User) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::User behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//
//    Relation edemokracia::admin::Admin.voteDefinitions (edemokracia::admin::VoteDefinition) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::VoteDefinition behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//

part of admin.repository;

@lazySingleton
class AdminAdminRepository
    with
        CityRepositoryForDistricts,
        CommentRepositoryForCreatedBy,
        CommentRepositoryForVotes,
        ConRepositoryForComments,
        ConRepositoryForCons,
        ConRepositoryForCreatedBy,
        ConRepositoryForPros,
        ConRepositoryForVotes,
        CountyRepositoryForCities,
        DebateRepositoryForComments,
        DebateRepositoryForCons,
        DebateRepositoryForCreatedBy,
        DebateRepositoryForDebateVote,
        DebateRepositoryForIssue,
        DebateRepositoryForPros,
        IssueRepositoryForAttachments,
        IssueRepositoryForCategories,
        IssueRepositoryForComments,
        IssueRepositoryForCreatedBy,
        IssueRepositoryForDebates,
        IssueRepositoryForOwner,
        IssueCategoryRepositoryForOwner,
        IssueCategoryRepositoryForSubcategories,
        ProRepositoryForComments,
        ProRepositoryForCons,
        ProRepositoryForCreatedBy,
        ProRepositoryForPros,
        ProRepositoryForVotes,
        SimpleVoteRepositoryForUser,
        UserRepositoryForActivityCities,
        UserRepositoryForActivityCounties,
        UserRepositoryForActivityDistricts,
        UserRepositoryForResidentCity,
        UserRepositoryForResidentCounty,
        UserRepositoryForResidentDistrict,
        UserRepositoryForVotes,
        VoteDefinitionRepositoryForVoteEntries,
        VoteEntryRepositoryForUser,
        VoteEntryRepositoryForVoteDefinition,
        AdminAdminRepositoryForCategories,
        AdminAdminRepositoryForCounties,
        AdminAdminRepositoryForDashboardhome,
        AdminAdminRepositoryForDebates,
        AdminAdminRepositoryForIssues,
        AdminAdminRepositoryForUsers,
        AdminAdminRepositoryForVoteDefinitions,
        AdminCityRepositoryForDistricts,
        AdminCommentRepositoryForCreatedBy,
        AdminCommentRepositoryForVotes,
        AdminConRepositoryForComments,
        AdminConRepositoryForCons,
        AdminConRepositoryForCreatedBy,
        AdminConRepositoryForPros,
        AdminConRepositoryForVotes,
        AdminCountyRepositoryForCities,
        AdminDashboardRepositoryForDebates,
        AdminDashboardRepositoryForIssues,
        AdminDebateRepositoryForComments,
        AdminDebateRepositoryForCons,
        AdminDebateRepositoryForCreatedBy,
        AdminDebateRepositoryForIssue,
        AdminDebateRepositoryForPros,
        AdminDebateRepositoryForVoteDefinition,
        AdminIssueRepositoryForAttachments,
        AdminIssueRepositoryForCategories,
        AdminIssueRepositoryForComments,
        AdminIssueRepositoryForCreatedBy,
        AdminIssueRepositoryForDebates,
        AdminIssueRepositoryForOwner,
        AdminIssueCategoryRepositoryForOwner,
        AdminIssueCategoryRepositoryForSubcategories,
        AdminProRepositoryForComments,
        AdminProRepositoryForCons,
        AdminProRepositoryForCreatedBy,
        AdminProRepositoryForPros,
        AdminProRepositoryForVotes,
        AdminSimpleVoteRepositoryForUser,
        AdminUserRepositoryForActivityCities,
        AdminUserRepositoryForActivityCounties,
        AdminUserRepositoryForActivityDistricts,
        AdminUserRepositoryForResidentCity,
        AdminUserRepositoryForResidentCounty,
        AdminUserRepositoryForResidentDistrict,
        AdminUserRepositoryForVotes,
        AdminVoteDefinitionRepositoryForDebate,
        CityRepository,
        CloseDebateInputRepository,
        CommentRepository,
        ConRepository,
        CountyRepository,
        CreateArgumentInputRepository,
        CreateCommentInputRepository,
        CreateDebateInputRepository,
        DebateRepository,
        DistrictRepository,
        IssueRepository,
        IssueAttachmentRepository,
        IssueCategoryRepository,
        ProRepository,
        RatingVoteInputRepository,
        SelectAnswerVoteSelectionRepository,
        SimpleVoteRepository,
        UserRepository,
        VoteDefinitionRepository,
        VoteEntryRepository,
        YesNoAbstainVoteInputRepository,
        YesNoVoteInputRepository,
        AdminAdminPrincipalUserRepository,
        AdminCityRepository,
        AdminCommentRepository,
        AdminConRepository,
        AdminCountyRepository,
        AdminCreateIssueInputRepository,
        AdminCreateUserInputRepository,
        AdminDashboardRepository,
        AdminDebateRepository,
        AdminDistrictRepository,
        AdminIssueRepository,
        AdminIssueAttachmentRepository,
        AdminIssueCategoryRepository,
        AdminIssueDebateRepository,
        AdminProRepository,
        AdminSimpleVoteRepository,
        AdminUserRepository,
        AdminVoteDefinitionRepository {
  /// GET Principal
  Future<AdminAdminPrincipalUserStore> getPrincipal() async {
    final adminPrincipalUserResponse = await locator<JudoApiClient>().edemokraciaAdminAdminPrincipalUser();
    return AdminAdminRepositoryStoreMapper.createAdminAdminPrincipalUserStoreFromEdemokraciaAdminAdminPrincipalUser(adminPrincipalUserResponse);
  }

  /// UPLOAD
  Future<String> uploadFile(String attributePath, PlatformFile file) async {
    final uploadResponse = await locator<JudoApiClient>().uploadFile(attributePath, file);
    return AdminAdminRepositoryStoreMapper.getDownloadTokenFromUploadResponse(uploadResponse);
  }

  /// DOWNLOAD
  Future<JudoDownloadFile> downloadFile(String downloadToken) async {
    final http.Response downloadResponse = await locator<JudoApiClient>().downloadFile(downloadToken);
    return AdminAdminRepositoryStoreMapper.getDownloadedFileFromDownloadResponse(downloadResponse);
  }
}
