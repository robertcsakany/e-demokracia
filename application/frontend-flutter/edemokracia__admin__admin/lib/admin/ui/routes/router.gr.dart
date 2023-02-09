// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../store/package.dart';
import '../guards/auth_guard.dart';
import '../pages/package.dart';

class Routes {
  static const String adminAdminCategoriesTablePage = '/edemokracia-admin-admin-categories-table';
  static const String _adminAdminCategoriesViewPage = '/edemokracia-admin-admin-categories-view/:id';
  static String adminAdminCategoriesViewPage({@required dynamic id}) => '/edemokracia-admin-admin-categories-view/$id';
  static const String adminAdminCountiesTablePage = '/edemokracia-admin-admin-counties-table';
  static const String _adminAdminCountiesViewPage = '/edemokracia-admin-admin-counties-view/:id';
  static String adminAdminCountiesViewPage({@required dynamic id}) => '/edemokracia-admin-admin-counties-view/$id';
  static const String adminAdminDashboardhomeDashboardPage = '/';
  static const String adminAdminDebatesTablePage = '/edemokracia-admin-admin-debates-table';
  static const String _adminAdminDebatesViewPage = '/edemokracia-admin-admin-debates-view/:id';
  static String adminAdminDebatesViewPage({@required dynamic id}) => '/edemokracia-admin-admin-debates-view/$id';
  static const String adminAdminIssuesTablePage = '/edemokracia-admin-admin-issues-table';
  static const String _adminAdminIssuesViewPage = '/edemokracia-admin-admin-issues-view/:id';
  static String adminAdminIssuesViewPage({@required dynamic id}) => '/edemokracia-admin-admin-issues-view/$id';
  static const String adminAdminUsersTablePage = '/edemokracia-admin-admin-users-table';
  static const String _adminAdminUsersViewPage = '/edemokracia-admin-admin-users-view/:id';
  static String adminAdminUsersViewPage({@required dynamic id}) => '/edemokracia-admin-admin-users-view/$id';
  static const String adminAdminVoteDefinitionsTablePage = '/edemokracia-admin-admin-votedefinitions-table';
  static const String _adminAdminVoteDefinitionsViewPage = '/edemokracia-admin-admin-votedefinitions-view/:id';
  static String adminAdminVoteDefinitionsViewPage({@required dynamic id}) => '/edemokracia-admin-admin-votedefinitions-view/$id';
  static const String cityDistrictsViewPage = '/edemokracia-city-districts-view';
  static const String commentCreatedByViewPage = '/edemokracia-comment-createdby-view';
  static const String commentVotesViewPage = '/edemokracia-comment-votes-view';
  static const String conCommentsViewPage = '/edemokracia-con-comments-view';
  static const String conConsViewPage = '/edemokracia-con-cons-view';
  static const String conCreatedByViewPage = '/edemokracia-con-createdby-view';
  static const String conProsViewPage = '/edemokracia-con-pros-view';
  static const String conVotesViewPage = '/edemokracia-con-votes-view';
  static const String countyCitiesViewPage = '/edemokracia-county-cities-view';
  static const String debateCommentsViewPage = '/edemokracia-debate-comments-view';
  static const String debateConsViewPage = '/edemokracia-debate-cons-view';
  static const String debateCreatedByViewPage = '/edemokracia-debate-createdby-view';
  static const String debateDebateVoteViewPage = '/edemokracia-debate-debatevote-view';
  static const String debateIssueViewPage = '/edemokracia-debate-issue-view';
  static const String debateProsViewPage = '/edemokracia-debate-pros-view';
  static const String issueAttachmentsViewPage = '/edemokracia-issue-attachments-view';
  static const String issueCategoriesViewPage = '/edemokracia-issue-categories-view';
  static const String issueCommentsViewPage = '/edemokracia-issue-comments-view';
  static const String issueCreatedByViewPage = '/edemokracia-issue-createdby-view';
  static const String issueDebatesViewPage = '/edemokracia-issue-debates-view';
  static const String issueOwnerViewPage = '/edemokracia-issue-owner-view';
  static const String issueCategoryOwnerViewPage = '/edemokracia-issuecategory-owner-view';
  static const String issueCategorySubcategoriesViewPage = '/edemokracia-issuecategory-subcategories-view';
  static const String proCommentsViewPage = '/edemokracia-pro-comments-view';
  static const String proConsViewPage = '/edemokracia-pro-cons-view';
  static const String proCreatedByViewPage = '/edemokracia-pro-createdby-view';
  static const String proProsViewPage = '/edemokracia-pro-pros-view';
  static const String proVotesViewPage = '/edemokracia-pro-votes-view';
  static const String simpleVoteUserViewPage = '/edemokracia-simplevote-user-view';
  static const String userActivityCitiesViewPage = '/edemokracia-user-activitycities-view';
  static const String userActivityCountiesViewPage = '/edemokracia-user-activitycounties-view';
  static const String userActivityDistrictsViewPage = '/edemokracia-user-activitydistricts-view';
  static const String userResidentCityViewPage = '/edemokracia-user-residentcity-view';
  static const String userResidentCountyViewPage = '/edemokracia-user-residentcounty-view';
  static const String userResidentDistrictViewPage = '/edemokracia-user-residentdistrict-view';
  static const String userVotesViewPage = '/edemokracia-user-votes-view';
  static const String voteDefinitionVoteEntriesViewPage = '/edemokracia-votedefinition-voteentries-view';
  static const String voteEntryUserViewPage = '/edemokracia-voteentry-user-view';
  static const String voteEntryVoteDefinitionViewPage = '/edemokracia-voteentry-votedefinition-view';
  static const String adminAdminCategoriesCreatePage = '/edemokracia-admin-admin-categories-create';
  static const String adminAdminCategoriesUpdatePage = '/edemokracia-admin-admin-categories-edit';
  static const String adminAdminCountiesCreatePage = '/edemokracia-admin-admin-counties-create';
  static const String adminAdminCountiesUpdatePage = '/edemokracia-admin-admin-counties-edit';
  static const String adminAdminDashboardhomeViewPage = '/edemokracia-admin-admin-dashboardhome-view';
  static const String adminAdminDebatesUpdatePage = '/edemokracia-admin-admin-debates-edit';
  static const String adminAdminIssuesUpdatePage = '/edemokracia-admin-admin-issues-edit';
  static const String adminAdminUsersUpdatePage = '/edemokracia-admin-admin-users-edit';
  static const String adminAdminVoteDefinitionsUpdatePage = '/edemokracia-admin-admin-votedefinitions-edit';
  static const String adminCityDistrictsCreatePage = '/edemokracia-admin-city-districts-create';
  static const String adminCityDistrictsUpdatePage = '/edemokracia-admin-city-districts-edit';
  static const String adminCityDistrictsViewPage = '/edemokracia-admin-city-districts-view';
  static const String adminCommentCreatedByViewPage = '/edemokracia-admin-comment-createdby-view';
  static const String adminCommentVotesCreatePage = '/edemokracia-admin-comment-votes-create';
  static const String adminCommentVotesUpdatePage = '/edemokracia-admin-comment-votes-edit';
  static const String adminCommentVotesTablePage = '/edemokracia-admin-comment-votes-table';
  static const String adminCommentVotesViewPage = '/edemokracia-admin-comment-votes-view';
  static const String adminConCommentsViewPage = '/edemokracia-admin-con-comments-view';
  static const String adminConConsUpdatePage = '/edemokracia-admin-con-cons-edit';
  static const String adminConConsViewPage = '/edemokracia-admin-con-cons-view';
  static const String adminConCreateCommentOperationInputPage = '/edemokracia-admin-con-createcomment-input';
  static const String adminConCreateSubArgumentOperationInputPage = '/edemokracia-admin-con-createsubargument-input';
  static const String adminConCreatedByViewPage = '/edemokracia-admin-con-createdby-view';
  static const String adminConProsUpdatePage = '/edemokracia-admin-con-pros-edit';
  static const String adminConProsViewPage = '/edemokracia-admin-con-pros-view';
  static const String adminConVotesTablePage = '/edemokracia-admin-con-votes-table';
  static const String adminConVotesViewPage = '/edemokracia-admin-con-votes-view';
  static const String adminCountyCitiesCreatePage = '/edemokracia-admin-county-cities-create';
  static const String adminCountyCitiesUpdatePage = '/edemokracia-admin-county-cities-edit';
  static const String adminCountyCitiesViewPage = '/edemokracia-admin-county-cities-view';
  static const String adminDashboardCreateIssueOperationInputPage = '/edemokracia-admin-dashboard-createissue-input';
  static const String adminDashboardCreateIssueOperationOutputPage = '/edemokracia-admin-dashboard-createissue-output';
  static const String adminDashboardCreateUserOperationInputPage = '/edemokracia-admin-dashboard-createuser-input';
  static const String adminDashboardCreateUserOperationOutputPage = '/edemokracia-admin-dashboard-createuser-output';
  static const String adminDashboardDebatesViewPage = '/edemokracia-admin-dashboard-debates-view';
  static const String adminDashboardIssuesViewPage = '/edemokracia-admin-dashboard-issues-view';
  static const String adminDebateCloseDebateOperationInputPage = '/edemokracia-admin-debate-closedebate-input';
  static const String adminDebateCloseDebateOperationOutputPage = '/edemokracia-admin-debate-closedebate-output';
  static const String adminDebateCommentsUpdatePage = '/edemokracia-admin-debate-comments-edit';
  static const String adminDebateCommentsViewPage = '/edemokracia-admin-debate-comments-view';
  static const String adminDebateConsUpdatePage = '/edemokracia-admin-debate-cons-edit';
  static const String adminDebateConsViewPage = '/edemokracia-admin-debate-cons-view';
  static const String adminDebateCreateArgumentOperationInputPage = '/edemokracia-admin-debate-createargument-input';
  static const String adminDebateCreateCommentOperationInputPage = '/edemokracia-admin-debate-createcomment-input';
  static const String adminDebateCreatedByViewPage = '/edemokracia-admin-debate-createdby-view';
  static const String adminDebateIssueViewPage = '/edemokracia-admin-debate-issue-view';
  static const String adminDebateProsUpdatePage = '/edemokracia-admin-debate-pros-edit';
  static const String adminDebateProsViewPage = '/edemokracia-admin-debate-pros-view';
  static const String adminDebateVoteDefinitionViewPage = '/edemokracia-admin-debate-votedefinition-view';
  static const String adminIssueAttachmentsCreatePage = '/edemokracia-admin-issue-attachments-create';
  static const String adminIssueAttachmentsUpdatePage = '/edemokracia-admin-issue-attachments-edit';
  static const String adminIssueAttachmentsViewPage = '/edemokracia-admin-issue-attachments-view';
  static const String adminIssueCategoriesViewPage = '/edemokracia-admin-issue-categories-view';
  static const String adminIssueCommentsViewPage = '/edemokracia-admin-issue-comments-view';
  static const String adminIssueCreateCommentOperationInputPage = '/edemokracia-admin-issue-createcomment-input';
  static const String adminIssueCreateDebateOperationInputPage = '/edemokracia-admin-issue-createdebate-input';
  static const String adminIssueCreateDebateOperationOutputPage = '/edemokracia-admin-issue-createdebate-output';
  static const String adminIssueCreatedByViewPage = '/edemokracia-admin-issue-createdby-view';
  static const String adminIssueDebatesViewPage = '/edemokracia-admin-issue-debates-view';
  static const String adminIssueOwnerViewPage = '/edemokracia-admin-issue-owner-view';
  static const String adminIssueCategoryOwnerViewPage = '/edemokracia-admin-issuecategory-owner-view';
  static const String adminIssueCategorySubcategoriesCreatePage = '/edemokracia-admin-issuecategory-subcategories-create';
  static const String adminIssueCategorySubcategoriesUpdatePage = '/edemokracia-admin-issuecategory-subcategories-edit';
  static const String adminIssueCategorySubcategoriesViewPage = '/edemokracia-admin-issuecategory-subcategories-view';
  static const String adminProCommentsViewPage = '/edemokracia-admin-pro-comments-view';
  static const String adminProConsUpdatePage = '/edemokracia-admin-pro-cons-edit';
  static const String adminProConsViewPage = '/edemokracia-admin-pro-cons-view';
  static const String adminProCreateCommentOperationInputPage = '/edemokracia-admin-pro-createcomment-input';
  static const String adminProCreateSubArgumentOperationInputPage = '/edemokracia-admin-pro-createsubargument-input';
  static const String adminProCreatedByViewPage = '/edemokracia-admin-pro-createdby-view';
  static const String adminProProsUpdatePage = '/edemokracia-admin-pro-pros-edit';
  static const String adminProProsViewPage = '/edemokracia-admin-pro-pros-view';
  static const String adminProVotesCreatePage = '/edemokracia-admin-pro-votes-create';
  static const String adminProVotesUpdatePage = '/edemokracia-admin-pro-votes-edit';
  static const String adminProVotesTablePage = '/edemokracia-admin-pro-votes-table';
  static const String adminProVotesViewPage = '/edemokracia-admin-pro-votes-view';
  static const String adminSimpleVoteUserViewPage = '/edemokracia-admin-simplevote-user-view';
  static const String adminUserActivityCitiesUpdatePage = '/edemokracia-admin-user-activitycities-edit';
  static const String adminUserActivityCitiesViewPage = '/edemokracia-admin-user-activitycities-view';
  static const String adminUserActivityCountiesUpdatePage = '/edemokracia-admin-user-activitycounties-edit';
  static const String adminUserActivityCountiesViewPage = '/edemokracia-admin-user-activitycounties-view';
  static const String adminUserActivityDistrictsUpdatePage = '/edemokracia-admin-user-activitydistricts-edit';
  static const String adminUserActivityDistrictsViewPage = '/edemokracia-admin-user-activitydistricts-view';
  static const String adminUserResidentCityUpdatePage = '/edemokracia-admin-user-residentcity-edit';
  static const String adminUserResidentCityViewPage = '/edemokracia-admin-user-residentcity-view';
  static const String adminUserResidentCountyUpdatePage = '/edemokracia-admin-user-residentcounty-edit';
  static const String adminUserResidentCountyViewPage = '/edemokracia-admin-user-residentcounty-view';
  static const String adminUserResidentDistrictUpdatePage = '/edemokracia-admin-user-residentdistrict-edit';
  static const String adminUserResidentDistrictViewPage = '/edemokracia-admin-user-residentdistrict-view';
  static const String adminUserVotesTablePage = '/edemokracia-admin-user-votes-table';
  static const String adminUserVotesViewPage = '/edemokracia-admin-user-votes-view';
  static const String adminVoteDefinitionDebateTablePage = '/edemokracia-admin-votedefinition-debate-table';
  static const String adminVoteDefinitionDebateViewPage = '/edemokracia-admin-votedefinition-debate-view';
  static const String adminVoteDefinitionVoteRatingOperationInputPage = '/edemokracia-admin-votedefinition-voterating-input';
  static const String adminVoteDefinitionVoteYesNoOperationInputPage = '/edemokracia-admin-votedefinition-voteyesno-input';
  static const String adminVoteDefinitionVoteYesNoAbstainOperationInputPage = '/edemokracia-admin-votedefinition-voteyesnoabstain-input';
  static const String edemokraciaAdminAdminSettingsPage = '/edemokracia-admin-admin-settings-page';
  static const String edemokraciaAdminAdminErrorPage = '/edemokracia-admin-admin-error-page';
  static const String edemokraciaAdminAdminBlankPage = '/edemokracia-admin-admin-blank-page';
  static const all = <String>{
    adminAdminCategoriesTablePage,
    _adminAdminCategoriesViewPage,
    adminAdminCountiesTablePage,
    _adminAdminCountiesViewPage,
    adminAdminDashboardhomeDashboardPage,
    adminAdminDebatesTablePage,
    _adminAdminDebatesViewPage,
    adminAdminIssuesTablePage,
    _adminAdminIssuesViewPage,
    adminAdminUsersTablePage,
    _adminAdminUsersViewPage,
    adminAdminVoteDefinitionsTablePage,
    _adminAdminVoteDefinitionsViewPage,
    cityDistrictsViewPage,
    commentCreatedByViewPage,
    commentVotesViewPage,
    conCommentsViewPage,
    conConsViewPage,
    conCreatedByViewPage,
    conProsViewPage,
    conVotesViewPage,
    countyCitiesViewPage,
    debateCommentsViewPage,
    debateConsViewPage,
    debateCreatedByViewPage,
    debateDebateVoteViewPage,
    debateIssueViewPage,
    debateProsViewPage,
    issueAttachmentsViewPage,
    issueCategoriesViewPage,
    issueCommentsViewPage,
    issueCreatedByViewPage,
    issueDebatesViewPage,
    issueOwnerViewPage,
    issueCategoryOwnerViewPage,
    issueCategorySubcategoriesViewPage,
    proCommentsViewPage,
    proConsViewPage,
    proCreatedByViewPage,
    proProsViewPage,
    proVotesViewPage,
    simpleVoteUserViewPage,
    userActivityCitiesViewPage,
    userActivityCountiesViewPage,
    userActivityDistrictsViewPage,
    userResidentCityViewPage,
    userResidentCountyViewPage,
    userResidentDistrictViewPage,
    userVotesViewPage,
    voteDefinitionVoteEntriesViewPage,
    voteEntryUserViewPage,
    voteEntryVoteDefinitionViewPage,
    adminAdminCategoriesCreatePage,
    adminAdminCategoriesUpdatePage,
    adminAdminCountiesCreatePage,
    adminAdminCountiesUpdatePage,
    adminAdminDashboardhomeViewPage,
    adminAdminDebatesUpdatePage,
    adminAdminIssuesUpdatePage,
    adminAdminUsersUpdatePage,
    adminAdminVoteDefinitionsUpdatePage,
    adminCityDistrictsCreatePage,
    adminCityDistrictsUpdatePage,
    adminCityDistrictsViewPage,
    adminCommentCreatedByViewPage,
    adminCommentVotesCreatePage,
    adminCommentVotesUpdatePage,
    adminCommentVotesTablePage,
    adminCommentVotesViewPage,
    adminConCommentsViewPage,
    adminConConsUpdatePage,
    adminConConsViewPage,
    adminConCreateCommentOperationInputPage,
    adminConCreateSubArgumentOperationInputPage,
    adminConCreatedByViewPage,
    adminConProsUpdatePage,
    adminConProsViewPage,
    adminConVotesTablePage,
    adminConVotesViewPage,
    adminCountyCitiesCreatePage,
    adminCountyCitiesUpdatePage,
    adminCountyCitiesViewPage,
    adminDashboardCreateIssueOperationInputPage,
    adminDashboardCreateIssueOperationOutputPage,
    adminDashboardCreateUserOperationInputPage,
    adminDashboardCreateUserOperationOutputPage,
    adminDashboardDebatesViewPage,
    adminDashboardIssuesViewPage,
    adminDebateCloseDebateOperationInputPage,
    adminDebateCloseDebateOperationOutputPage,
    adminDebateCommentsUpdatePage,
    adminDebateCommentsViewPage,
    adminDebateConsUpdatePage,
    adminDebateConsViewPage,
    adminDebateCreateArgumentOperationInputPage,
    adminDebateCreateCommentOperationInputPage,
    adminDebateCreatedByViewPage,
    adminDebateIssueViewPage,
    adminDebateProsUpdatePage,
    adminDebateProsViewPage,
    adminDebateVoteDefinitionViewPage,
    adminIssueAttachmentsCreatePage,
    adminIssueAttachmentsUpdatePage,
    adminIssueAttachmentsViewPage,
    adminIssueCategoriesViewPage,
    adminIssueCommentsViewPage,
    adminIssueCreateCommentOperationInputPage,
    adminIssueCreateDebateOperationInputPage,
    adminIssueCreateDebateOperationOutputPage,
    adminIssueCreatedByViewPage,
    adminIssueDebatesViewPage,
    adminIssueOwnerViewPage,
    adminIssueCategoryOwnerViewPage,
    adminIssueCategorySubcategoriesCreatePage,
    adminIssueCategorySubcategoriesUpdatePage,
    adminIssueCategorySubcategoriesViewPage,
    adminProCommentsViewPage,
    adminProConsUpdatePage,
    adminProConsViewPage,
    adminProCreateCommentOperationInputPage,
    adminProCreateSubArgumentOperationInputPage,
    adminProCreatedByViewPage,
    adminProProsUpdatePage,
    adminProProsViewPage,
    adminProVotesCreatePage,
    adminProVotesUpdatePage,
    adminProVotesTablePage,
    adminProVotesViewPage,
    adminSimpleVoteUserViewPage,
    adminUserActivityCitiesUpdatePage,
    adminUserActivityCitiesViewPage,
    adminUserActivityCountiesUpdatePage,
    adminUserActivityCountiesViewPage,
    adminUserActivityDistrictsUpdatePage,
    adminUserActivityDistrictsViewPage,
    adminUserResidentCityUpdatePage,
    adminUserResidentCityViewPage,
    adminUserResidentCountyUpdatePage,
    adminUserResidentCountyViewPage,
    adminUserResidentDistrictUpdatePage,
    adminUserResidentDistrictViewPage,
    adminUserVotesTablePage,
    adminUserVotesViewPage,
    adminVoteDefinitionDebateTablePage,
    adminVoteDefinitionDebateViewPage,
    adminVoteDefinitionVoteRatingOperationInputPage,
    adminVoteDefinitionVoteYesNoOperationInputPage,
    adminVoteDefinitionVoteYesNoAbstainOperationInputPage,
    edemokraciaAdminAdminSettingsPage,
    edemokraciaAdminAdminErrorPage,
    edemokraciaAdminAdminBlankPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.adminAdminCategoriesTablePage, page: AdminAdminCategoriesTablePage, guards: [AuthGuard]),
    RouteDef(Routes._adminAdminCategoriesViewPage, page: AdminAdminCategoriesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminCountiesTablePage, page: AdminAdminCountiesTablePage, guards: [AuthGuard]),
    RouteDef(Routes._adminAdminCountiesViewPage, page: AdminAdminCountiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminDashboardhomeDashboardPage, page: AdminAdminDashboardhomeDashboardPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminDebatesTablePage, page: AdminAdminDebatesTablePage, guards: [AuthGuard]),
    RouteDef(Routes._adminAdminDebatesViewPage, page: AdminAdminDebatesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminIssuesTablePage, page: AdminAdminIssuesTablePage, guards: [AuthGuard]),
    RouteDef(Routes._adminAdminIssuesViewPage, page: AdminAdminIssuesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminUsersTablePage, page: AdminAdminUsersTablePage, guards: [AuthGuard]),
    RouteDef(Routes._adminAdminUsersViewPage, page: AdminAdminUsersViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminVoteDefinitionsTablePage, page: AdminAdminVoteDefinitionsTablePage, guards: [AuthGuard]),
    RouteDef(Routes._adminAdminVoteDefinitionsViewPage, page: AdminAdminVoteDefinitionsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.cityDistrictsViewPage, page: CityDistrictsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.commentCreatedByViewPage, page: CommentCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.commentVotesViewPage, page: CommentVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.conCommentsViewPage, page: ConCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.conConsViewPage, page: ConConsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.conCreatedByViewPage, page: ConCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.conProsViewPage, page: ConProsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.conVotesViewPage, page: ConVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.countyCitiesViewPage, page: CountyCitiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.debateCommentsViewPage, page: DebateCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.debateConsViewPage, page: DebateConsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.debateCreatedByViewPage, page: DebateCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.debateDebateVoteViewPage, page: DebateDebateVoteViewPage, guards: [AuthGuard]),
    RouteDef(Routes.debateIssueViewPage, page: DebateIssueViewPage, guards: [AuthGuard]),
    RouteDef(Routes.debateProsViewPage, page: DebateProsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueAttachmentsViewPage, page: IssueAttachmentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueCategoriesViewPage, page: IssueCategoriesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueCommentsViewPage, page: IssueCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueCreatedByViewPage, page: IssueCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueDebatesViewPage, page: IssueDebatesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueOwnerViewPage, page: IssueOwnerViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueCategoryOwnerViewPage, page: IssueCategoryOwnerViewPage, guards: [AuthGuard]),
    RouteDef(Routes.issueCategorySubcategoriesViewPage, page: IssueCategorySubcategoriesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.proCommentsViewPage, page: ProCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.proConsViewPage, page: ProConsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.proCreatedByViewPage, page: ProCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.proProsViewPage, page: ProProsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.proVotesViewPage, page: ProVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.simpleVoteUserViewPage, page: SimpleVoteUserViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userActivityCitiesViewPage, page: UserActivityCitiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userActivityCountiesViewPage, page: UserActivityCountiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userActivityDistrictsViewPage, page: UserActivityDistrictsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userResidentCityViewPage, page: UserResidentCityViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userResidentCountyViewPage, page: UserResidentCountyViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userResidentDistrictViewPage, page: UserResidentDistrictViewPage, guards: [AuthGuard]),
    RouteDef(Routes.userVotesViewPage, page: UserVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.voteDefinitionVoteEntriesViewPage, page: VoteDefinitionVoteEntriesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.voteEntryUserViewPage, page: VoteEntryUserViewPage, guards: [AuthGuard]),
    RouteDef(Routes.voteEntryVoteDefinitionViewPage, page: VoteEntryVoteDefinitionViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminCategoriesCreatePage, page: AdminAdminCategoriesCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminCategoriesUpdatePage, page: AdminAdminCategoriesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminCountiesCreatePage, page: AdminAdminCountiesCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminCountiesUpdatePage, page: AdminAdminCountiesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminDashboardhomeViewPage, page: AdminAdminDashboardhomeViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminDebatesUpdatePage, page: AdminAdminDebatesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminIssuesUpdatePage, page: AdminAdminIssuesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminUsersUpdatePage, page: AdminAdminUsersUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminAdminVoteDefinitionsUpdatePage, page: AdminAdminVoteDefinitionsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCityDistrictsCreatePage, page: AdminCityDistrictsCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCityDistrictsUpdatePage, page: AdminCityDistrictsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCityDistrictsViewPage, page: AdminCityDistrictsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminCommentCreatedByViewPage, page: AdminCommentCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminCommentVotesCreatePage, page: AdminCommentVotesCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCommentVotesUpdatePage, page: AdminCommentVotesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCommentVotesTablePage, page: AdminCommentVotesTablePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCommentVotesViewPage, page: AdminCommentVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConCommentsViewPage, page: AdminConCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConConsUpdatePage, page: AdminConConsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminConConsViewPage, page: AdminConConsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConCreateCommentOperationInputPage, page: AdminConCreateCommentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConCreateSubArgumentOperationInputPage, page: AdminConCreateSubArgumentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConCreatedByViewPage, page: AdminConCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConProsUpdatePage, page: AdminConProsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminConProsViewPage, page: AdminConProsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminConVotesTablePage, page: AdminConVotesTablePage, guards: [AuthGuard]),
    RouteDef(Routes.adminConVotesViewPage, page: AdminConVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminCountyCitiesCreatePage, page: AdminCountyCitiesCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCountyCitiesUpdatePage, page: AdminCountyCitiesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminCountyCitiesViewPage, page: AdminCountyCitiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDashboardCreateIssueOperationInputPage, page: AdminDashboardCreateIssueOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDashboardCreateIssueOperationOutputPage, page: AdminDashboardCreateIssueOperationOutputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDashboardCreateUserOperationInputPage, page: AdminDashboardCreateUserOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDashboardCreateUserOperationOutputPage, page: AdminDashboardCreateUserOperationOutputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDashboardDebatesViewPage, page: AdminDashboardDebatesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDashboardIssuesViewPage, page: AdminDashboardIssuesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCloseDebateOperationInputPage, page: AdminDebateCloseDebateOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCloseDebateOperationOutputPage, page: AdminDebateCloseDebateOperationOutputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCommentsUpdatePage, page: AdminDebateCommentsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCommentsViewPage, page: AdminDebateCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateConsUpdatePage, page: AdminDebateConsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateConsViewPage, page: AdminDebateConsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCreateArgumentOperationInputPage, page: AdminDebateCreateArgumentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCreateCommentOperationInputPage, page: AdminDebateCreateCommentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateCreatedByViewPage, page: AdminDebateCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateIssueViewPage, page: AdminDebateIssueViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateProsUpdatePage, page: AdminDebateProsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateProsViewPage, page: AdminDebateProsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminDebateVoteDefinitionViewPage, page: AdminDebateVoteDefinitionViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueAttachmentsCreatePage, page: AdminIssueAttachmentsCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueAttachmentsUpdatePage, page: AdminIssueAttachmentsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueAttachmentsViewPage, page: AdminIssueAttachmentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCategoriesViewPage, page: AdminIssueCategoriesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCommentsViewPage, page: AdminIssueCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCreateCommentOperationInputPage, page: AdminIssueCreateCommentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCreateDebateOperationInputPage, page: AdminIssueCreateDebateOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCreateDebateOperationOutputPage, page: AdminIssueCreateDebateOperationOutputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCreatedByViewPage, page: AdminIssueCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueDebatesViewPage, page: AdminIssueDebatesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueOwnerViewPage, page: AdminIssueOwnerViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCategoryOwnerViewPage, page: AdminIssueCategoryOwnerViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCategorySubcategoriesCreatePage, page: AdminIssueCategorySubcategoriesCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCategorySubcategoriesUpdatePage, page: AdminIssueCategorySubcategoriesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminIssueCategorySubcategoriesViewPage, page: AdminIssueCategorySubcategoriesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProCommentsViewPage, page: AdminProCommentsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProConsUpdatePage, page: AdminProConsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminProConsViewPage, page: AdminProConsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProCreateCommentOperationInputPage, page: AdminProCreateCommentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProCreateSubArgumentOperationInputPage, page: AdminProCreateSubArgumentOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProCreatedByViewPage, page: AdminProCreatedByViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProProsUpdatePage, page: AdminProProsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminProProsViewPage, page: AdminProProsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminProVotesCreatePage, page: AdminProVotesCreatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminProVotesUpdatePage, page: AdminProVotesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminProVotesTablePage, page: AdminProVotesTablePage, guards: [AuthGuard]),
    RouteDef(Routes.adminProVotesViewPage, page: AdminProVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminSimpleVoteUserViewPage, page: AdminSimpleVoteUserViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserActivityCitiesUpdatePage, page: AdminUserActivityCitiesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserActivityCitiesViewPage, page: AdminUserActivityCitiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserActivityCountiesUpdatePage, page: AdminUserActivityCountiesUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserActivityCountiesViewPage, page: AdminUserActivityCountiesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserActivityDistrictsUpdatePage, page: AdminUserActivityDistrictsUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserActivityDistrictsViewPage, page: AdminUserActivityDistrictsViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserResidentCityUpdatePage, page: AdminUserResidentCityUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserResidentCityViewPage, page: AdminUserResidentCityViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserResidentCountyUpdatePage, page: AdminUserResidentCountyUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserResidentCountyViewPage, page: AdminUserResidentCountyViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserResidentDistrictUpdatePage, page: AdminUserResidentDistrictUpdatePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserResidentDistrictViewPage, page: AdminUserResidentDistrictViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserVotesTablePage, page: AdminUserVotesTablePage, guards: [AuthGuard]),
    RouteDef(Routes.adminUserVotesViewPage, page: AdminUserVotesViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminVoteDefinitionDebateTablePage, page: AdminVoteDefinitionDebateTablePage, guards: [AuthGuard]),
    RouteDef(Routes.adminVoteDefinitionDebateViewPage, page: AdminVoteDefinitionDebateViewPage, guards: [AuthGuard]),
    RouteDef(Routes.adminVoteDefinitionVoteRatingOperationInputPage, page: AdminVoteDefinitionVoteRatingOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminVoteDefinitionVoteYesNoOperationInputPage, page: AdminVoteDefinitionVoteYesNoOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.adminVoteDefinitionVoteYesNoAbstainOperationInputPage, page: AdminVoteDefinitionVoteYesNoAbstainOperationInputPage, guards: [AuthGuard]),
    RouteDef(Routes.edemokraciaAdminAdminSettingsPage, page: EdemokraciaAdminAdminSettingsPage),
    RouteDef(Routes.edemokraciaAdminAdminErrorPage, page: EdemokraciaAdminAdminErrorPage),
    RouteDef(Routes.edemokraciaAdminAdminBlankPage, page: EdemokraciaAdminAdminBlankPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AdminAdminCategoriesTablePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminCategoriesTablePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCategoriesViewPage: (data) {
      final args = data.getArgs<AdminAdminCategoriesViewPageArguments>(
        orElse: () => AdminAdminCategoriesViewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminCategoriesViewPage(
          key: args.key,
          idParam: data.pathParams['id'].stringValue,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCountiesTablePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminCountiesTablePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCountiesViewPage: (data) {
      final args = data.getArgs<AdminAdminCountiesViewPageArguments>(
        orElse: () => AdminAdminCountiesViewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminCountiesViewPage(
          key: args.key,
          idParam: data.pathParams['id'].stringValue,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminDashboardhomeDashboardPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminDashboardhomeDashboardPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminDebatesTablePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminDebatesTablePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminDebatesViewPage: (data) {
      final args = data.getArgs<AdminAdminDebatesViewPageArguments>(
        orElse: () => AdminAdminDebatesViewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminDebatesViewPage(
          key: args.key,
          idParam: data.pathParams['id'].stringValue,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminIssuesTablePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminIssuesTablePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminIssuesViewPage: (data) {
      final args = data.getArgs<AdminAdminIssuesViewPageArguments>(
        orElse: () => AdminAdminIssuesViewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminIssuesViewPage(
          key: args.key,
          idParam: data.pathParams['id'].stringValue,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminUsersTablePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminUsersTablePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminUsersViewPage: (data) {
      final args = data.getArgs<AdminAdminUsersViewPageArguments>(
        orElse: () => AdminAdminUsersViewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminUsersViewPage(
          key: args.key,
          idParam: data.pathParams['id'].stringValue,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminVoteDefinitionsTablePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminVoteDefinitionsTablePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminVoteDefinitionsViewPage: (data) {
      final args = data.getArgs<AdminAdminVoteDefinitionsViewPageArguments>(
        orElse: () => AdminAdminVoteDefinitionsViewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminVoteDefinitionsViewPage(
          key: args.key,
          idParam: data.pathParams['id'].stringValue,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    CityDistrictsViewPage: (data) {
      final args = data.getArgs<CityDistrictsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => CityDistrictsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    CommentCreatedByViewPage: (data) {
      final args = data.getArgs<CommentCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => CommentCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    CommentVotesViewPage: (data) {
      final args = data.getArgs<CommentVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => CommentVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ConCommentsViewPage: (data) {
      final args = data.getArgs<ConCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ConCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ConConsViewPage: (data) {
      final args = data.getArgs<ConConsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ConConsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ConCreatedByViewPage: (data) {
      final args = data.getArgs<ConCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ConCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ConProsViewPage: (data) {
      final args = data.getArgs<ConProsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ConProsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ConVotesViewPage: (data) {
      final args = data.getArgs<ConVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ConVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    CountyCitiesViewPage: (data) {
      final args = data.getArgs<CountyCitiesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => CountyCitiesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DebateCommentsViewPage: (data) {
      final args = data.getArgs<DebateCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DebateCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DebateConsViewPage: (data) {
      final args = data.getArgs<DebateConsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DebateConsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DebateCreatedByViewPage: (data) {
      final args = data.getArgs<DebateCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DebateCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DebateDebateVoteViewPage: (data) {
      final args = data.getArgs<DebateDebateVoteViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DebateDebateVoteViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DebateIssueViewPage: (data) {
      final args = data.getArgs<DebateIssueViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DebateIssueViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DebateProsViewPage: (data) {
      final args = data.getArgs<DebateProsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DebateProsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueAttachmentsViewPage: (data) {
      final args = data.getArgs<IssueAttachmentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueAttachmentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueCategoriesViewPage: (data) {
      final args = data.getArgs<IssueCategoriesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueCategoriesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueCommentsViewPage: (data) {
      final args = data.getArgs<IssueCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueCreatedByViewPage: (data) {
      final args = data.getArgs<IssueCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueDebatesViewPage: (data) {
      final args = data.getArgs<IssueDebatesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueDebatesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueOwnerViewPage: (data) {
      final args = data.getArgs<IssueOwnerViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueOwnerViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueCategoryOwnerViewPage: (data) {
      final args = data.getArgs<IssueCategoryOwnerViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueCategoryOwnerViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    IssueCategorySubcategoriesViewPage: (data) {
      final args = data.getArgs<IssueCategorySubcategoriesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => IssueCategorySubcategoriesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ProCommentsViewPage: (data) {
      final args = data.getArgs<ProCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ProConsViewPage: (data) {
      final args = data.getArgs<ProConsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProConsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ProCreatedByViewPage: (data) {
      final args = data.getArgs<ProCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ProProsViewPage: (data) {
      final args = data.getArgs<ProProsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProProsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    ProVotesViewPage: (data) {
      final args = data.getArgs<ProVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    SimpleVoteUserViewPage: (data) {
      final args = data.getArgs<SimpleVoteUserViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SimpleVoteUserViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserActivityCitiesViewPage: (data) {
      final args = data.getArgs<UserActivityCitiesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserActivityCitiesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserActivityCountiesViewPage: (data) {
      final args = data.getArgs<UserActivityCountiesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserActivityCountiesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserActivityDistrictsViewPage: (data) {
      final args = data.getArgs<UserActivityDistrictsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserActivityDistrictsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserResidentCityViewPage: (data) {
      final args = data.getArgs<UserResidentCityViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserResidentCityViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserResidentCountyViewPage: (data) {
      final args = data.getArgs<UserResidentCountyViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserResidentCountyViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserResidentDistrictViewPage: (data) {
      final args = data.getArgs<UserResidentDistrictViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserResidentDistrictViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    UserVotesViewPage: (data) {
      final args = data.getArgs<UserVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => UserVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    VoteDefinitionVoteEntriesViewPage: (data) {
      final args = data.getArgs<VoteDefinitionVoteEntriesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => VoteDefinitionVoteEntriesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    VoteEntryUserViewPage: (data) {
      final args = data.getArgs<VoteEntryUserViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => VoteEntryUserViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    VoteEntryVoteDefinitionViewPage: (data) {
      final args = data.getArgs<VoteEntryVoteDefinitionViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => VoteEntryVoteDefinitionViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCategoriesCreatePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => const AdminAdminCategoriesCreatePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCategoriesUpdatePage: (data) {
      final args = data.getArgs<AdminAdminCategoriesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminCategoriesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCountiesCreatePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => const AdminAdminCountiesCreatePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminCountiesUpdatePage: (data) {
      final args = data.getArgs<AdminAdminCountiesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminCountiesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminDashboardhomeViewPage: (data) {
      final args = data.getArgs<AdminAdminDashboardhomeViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminDashboardhomeViewPage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminDebatesUpdatePage: (data) {
      final args = data.getArgs<AdminAdminDebatesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminDebatesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminIssuesUpdatePage: (data) {
      final args = data.getArgs<AdminAdminIssuesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminIssuesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminUsersUpdatePage: (data) {
      final args = data.getArgs<AdminAdminUsersUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminUsersUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminAdminVoteDefinitionsUpdatePage: (data) {
      final args = data.getArgs<AdminAdminVoteDefinitionsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminAdminVoteDefinitionsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCityDistrictsCreatePage: (data) {
      final args = data.getArgs<AdminCityDistrictsCreatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCityDistrictsCreatePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCityDistrictsUpdatePage: (data) {
      final args = data.getArgs<AdminCityDistrictsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCityDistrictsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCityDistrictsViewPage: (data) {
      final args = data.getArgs<AdminCityDistrictsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCityDistrictsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCommentCreatedByViewPage: (data) {
      final args = data.getArgs<AdminCommentCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCommentCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCommentVotesCreatePage: (data) {
      final args = data.getArgs<AdminCommentVotesCreatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCommentVotesCreatePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCommentVotesUpdatePage: (data) {
      final args = data.getArgs<AdminCommentVotesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCommentVotesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCommentVotesTablePage: (data) {
      final args = data.getArgs<AdminCommentVotesTablePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCommentVotesTablePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCommentVotesViewPage: (data) {
      final args = data.getArgs<AdminCommentVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCommentVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConCommentsViewPage: (data) {
      final args = data.getArgs<AdminConCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConConsUpdatePage: (data) {
      final args = data.getArgs<AdminConConsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConConsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConConsViewPage: (data) {
      final args = data.getArgs<AdminConConsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConConsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConCreateCommentOperationInputPage: (data) {
      final args = data.getArgs<AdminConCreateCommentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConCreateCommentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConCreateSubArgumentOperationInputPage: (data) {
      final args = data.getArgs<AdminConCreateSubArgumentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConCreateSubArgumentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConCreatedByViewPage: (data) {
      final args = data.getArgs<AdminConCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConProsUpdatePage: (data) {
      final args = data.getArgs<AdminConProsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConProsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConProsViewPage: (data) {
      final args = data.getArgs<AdminConProsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConProsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConVotesTablePage: (data) {
      final args = data.getArgs<AdminConVotesTablePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConVotesTablePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminConVotesViewPage: (data) {
      final args = data.getArgs<AdminConVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminConVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCountyCitiesCreatePage: (data) {
      final args = data.getArgs<AdminCountyCitiesCreatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCountyCitiesCreatePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCountyCitiesUpdatePage: (data) {
      final args = data.getArgs<AdminCountyCitiesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCountyCitiesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminCountyCitiesViewPage: (data) {
      final args = data.getArgs<AdminCountyCitiesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminCountyCitiesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDashboardCreateIssueOperationInputPage: (data) {
      final args = data.getArgs<AdminDashboardCreateIssueOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDashboardCreateIssueOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDashboardCreateIssueOperationOutputPage: (data) {
      final args = data.getArgs<AdminDashboardCreateIssueOperationOutputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDashboardCreateIssueOperationOutputPage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDashboardCreateUserOperationInputPage: (data) {
      final args = data.getArgs<AdminDashboardCreateUserOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDashboardCreateUserOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDashboardCreateUserOperationOutputPage: (data) {
      final args = data.getArgs<AdminDashboardCreateUserOperationOutputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDashboardCreateUserOperationOutputPage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDashboardDebatesViewPage: (data) {
      final args = data.getArgs<AdminDashboardDebatesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDashboardDebatesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDashboardIssuesViewPage: (data) {
      final args = data.getArgs<AdminDashboardIssuesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDashboardIssuesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCloseDebateOperationInputPage: (data) {
      final args = data.getArgs<AdminDebateCloseDebateOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCloseDebateOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCloseDebateOperationOutputPage: (data) {
      final args = data.getArgs<AdminDebateCloseDebateOperationOutputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCloseDebateOperationOutputPage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCommentsUpdatePage: (data) {
      final args = data.getArgs<AdminDebateCommentsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCommentsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCommentsViewPage: (data) {
      final args = data.getArgs<AdminDebateCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateConsUpdatePage: (data) {
      final args = data.getArgs<AdminDebateConsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateConsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateConsViewPage: (data) {
      final args = data.getArgs<AdminDebateConsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateConsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCreateArgumentOperationInputPage: (data) {
      final args = data.getArgs<AdminDebateCreateArgumentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCreateArgumentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCreateCommentOperationInputPage: (data) {
      final args = data.getArgs<AdminDebateCreateCommentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCreateCommentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateCreatedByViewPage: (data) {
      final args = data.getArgs<AdminDebateCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateIssueViewPage: (data) {
      final args = data.getArgs<AdminDebateIssueViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateIssueViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateProsUpdatePage: (data) {
      final args = data.getArgs<AdminDebateProsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateProsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateProsViewPage: (data) {
      final args = data.getArgs<AdminDebateProsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateProsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminDebateVoteDefinitionViewPage: (data) {
      final args = data.getArgs<AdminDebateVoteDefinitionViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminDebateVoteDefinitionViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueAttachmentsCreatePage: (data) {
      final args = data.getArgs<AdminIssueAttachmentsCreatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueAttachmentsCreatePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueAttachmentsUpdatePage: (data) {
      final args = data.getArgs<AdminIssueAttachmentsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueAttachmentsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueAttachmentsViewPage: (data) {
      final args = data.getArgs<AdminIssueAttachmentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueAttachmentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCategoriesViewPage: (data) {
      final args = data.getArgs<AdminIssueCategoriesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCategoriesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCommentsViewPage: (data) {
      final args = data.getArgs<AdminIssueCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCreateCommentOperationInputPage: (data) {
      final args = data.getArgs<AdminIssueCreateCommentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCreateCommentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCreateDebateOperationInputPage: (data) {
      final args = data.getArgs<AdminIssueCreateDebateOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCreateDebateOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCreateDebateOperationOutputPage: (data) {
      final args = data.getArgs<AdminIssueCreateDebateOperationOutputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCreateDebateOperationOutputPage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCreatedByViewPage: (data) {
      final args = data.getArgs<AdminIssueCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueDebatesViewPage: (data) {
      final args = data.getArgs<AdminIssueDebatesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueDebatesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueOwnerViewPage: (data) {
      final args = data.getArgs<AdminIssueOwnerViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueOwnerViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCategoryOwnerViewPage: (data) {
      final args = data.getArgs<AdminIssueCategoryOwnerViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCategoryOwnerViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCategorySubcategoriesCreatePage: (data) {
      final args = data.getArgs<AdminIssueCategorySubcategoriesCreatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCategorySubcategoriesCreatePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCategorySubcategoriesUpdatePage: (data) {
      final args = data.getArgs<AdminIssueCategorySubcategoriesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCategorySubcategoriesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminIssueCategorySubcategoriesViewPage: (data) {
      final args = data.getArgs<AdminIssueCategorySubcategoriesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminIssueCategorySubcategoriesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProCommentsViewPage: (data) {
      final args = data.getArgs<AdminProCommentsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProCommentsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProConsUpdatePage: (data) {
      final args = data.getArgs<AdminProConsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProConsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProConsViewPage: (data) {
      final args = data.getArgs<AdminProConsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProConsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProCreateCommentOperationInputPage: (data) {
      final args = data.getArgs<AdminProCreateCommentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProCreateCommentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProCreateSubArgumentOperationInputPage: (data) {
      final args = data.getArgs<AdminProCreateSubArgumentOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProCreateSubArgumentOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProCreatedByViewPage: (data) {
      final args = data.getArgs<AdminProCreatedByViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProCreatedByViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProProsUpdatePage: (data) {
      final args = data.getArgs<AdminProProsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProProsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProProsViewPage: (data) {
      final args = data.getArgs<AdminProProsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProProsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProVotesCreatePage: (data) {
      final args = data.getArgs<AdminProVotesCreatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProVotesCreatePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProVotesUpdatePage: (data) {
      final args = data.getArgs<AdminProVotesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProVotesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProVotesTablePage: (data) {
      final args = data.getArgs<AdminProVotesTablePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProVotesTablePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminProVotesViewPage: (data) {
      final args = data.getArgs<AdminProVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminProVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminSimpleVoteUserViewPage: (data) {
      final args = data.getArgs<AdminSimpleVoteUserViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminSimpleVoteUserViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserActivityCitiesUpdatePage: (data) {
      final args = data.getArgs<AdminUserActivityCitiesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserActivityCitiesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserActivityCitiesViewPage: (data) {
      final args = data.getArgs<AdminUserActivityCitiesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserActivityCitiesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserActivityCountiesUpdatePage: (data) {
      final args = data.getArgs<AdminUserActivityCountiesUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserActivityCountiesUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserActivityCountiesViewPage: (data) {
      final args = data.getArgs<AdminUserActivityCountiesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserActivityCountiesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserActivityDistrictsUpdatePage: (data) {
      final args = data.getArgs<AdminUserActivityDistrictsUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserActivityDistrictsUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserActivityDistrictsViewPage: (data) {
      final args = data.getArgs<AdminUserActivityDistrictsViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserActivityDistrictsViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserResidentCityUpdatePage: (data) {
      final args = data.getArgs<AdminUserResidentCityUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserResidentCityUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserResidentCityViewPage: (data) {
      final args = data.getArgs<AdminUserResidentCityViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserResidentCityViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserResidentCountyUpdatePage: (data) {
      final args = data.getArgs<AdminUserResidentCountyUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserResidentCountyUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserResidentCountyViewPage: (data) {
      final args = data.getArgs<AdminUserResidentCountyViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserResidentCountyViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserResidentDistrictUpdatePage: (data) {
      final args = data.getArgs<AdminUserResidentDistrictUpdatePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserResidentDistrictUpdatePage(
          key: args.key,
          targetStore: args.targetStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserResidentDistrictViewPage: (data) {
      final args = data.getArgs<AdminUserResidentDistrictViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserResidentDistrictViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserVotesTablePage: (data) {
      final args = data.getArgs<AdminUserVotesTablePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserVotesTablePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminUserVotesViewPage: (data) {
      final args = data.getArgs<AdminUserVotesViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminUserVotesViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminVoteDefinitionDebateTablePage: (data) {
      final args = data.getArgs<AdminVoteDefinitionDebateTablePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminVoteDefinitionDebateTablePage(
          key: args.key,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminVoteDefinitionDebateViewPage: (data) {
      final args = data.getArgs<AdminVoteDefinitionDebateViewPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminVoteDefinitionDebateViewPage(
          key: args.key,
          targetStore: args.targetStore,
          ownerStore: args.ownerStore,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminVoteDefinitionVoteRatingOperationInputPage: (data) {
      final args = data.getArgs<AdminVoteDefinitionVoteRatingOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminVoteDefinitionVoteRatingOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminVoteDefinitionVoteYesNoOperationInputPage: (data) {
      final args = data.getArgs<AdminVoteDefinitionVoteYesNoOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminVoteDefinitionVoteYesNoOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    AdminVoteDefinitionVoteYesNoAbstainOperationInputPage: (data) {
      final args = data.getArgs<AdminVoteDefinitionVoteYesNoAbstainOperationInputPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AdminVoteDefinitionVoteYesNoAbstainOperationInputPage(
          key: args.key,
          operationCall: args.operationCall,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    EdemokraciaAdminAdminSettingsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => EdemokraciaAdminAdminSettingsPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    EdemokraciaAdminAdminErrorPage: (data) {
      final args = data.getArgs<EdemokraciaAdminAdminErrorPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => EdemokraciaAdminAdminErrorPage(
          errorCode: args.errorCode,
          errorMessage: args.errorMessage,
          errorDescription: args.errorDescription,
          stackTrace: args.stackTrace,
          icon: args.icon,
          title: args.title,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    EdemokraciaAdminAdminBlankPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => EdemokraciaAdminAdminBlankPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AdminAdminCategoriesViewPage arguments holder class
class AdminAdminCategoriesViewPageArguments {
  final Key key;
  AdminAdminCategoriesViewPageArguments({this.key});
}

/// AdminAdminCountiesViewPage arguments holder class
class AdminAdminCountiesViewPageArguments {
  final Key key;
  AdminAdminCountiesViewPageArguments({this.key});
}

/// AdminAdminDebatesViewPage arguments holder class
class AdminAdminDebatesViewPageArguments {
  final Key key;
  AdminAdminDebatesViewPageArguments({this.key});
}

/// AdminAdminIssuesViewPage arguments holder class
class AdminAdminIssuesViewPageArguments {
  final Key key;
  AdminAdminIssuesViewPageArguments({this.key});
}

/// AdminAdminUsersViewPage arguments holder class
class AdminAdminUsersViewPageArguments {
  final Key key;
  AdminAdminUsersViewPageArguments({this.key});
}

/// AdminAdminVoteDefinitionsViewPage arguments holder class
class AdminAdminVoteDefinitionsViewPageArguments {
  final Key key;
  AdminAdminVoteDefinitionsViewPageArguments({this.key});
}

/// CityDistrictsViewPage arguments holder class
class CityDistrictsViewPageArguments {
  final Key key;
  final DistrictStore targetStore;
  final CityStore ownerStore;
  CityDistrictsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// CommentCreatedByViewPage arguments holder class
class CommentCreatedByViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final CommentStore ownerStore;
  CommentCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// CommentVotesViewPage arguments holder class
class CommentVotesViewPageArguments {
  final Key key;
  final SimpleVoteStore targetStore;
  final CommentStore ownerStore;
  CommentVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ConCommentsViewPage arguments holder class
class ConCommentsViewPageArguments {
  final Key key;
  final CommentStore targetStore;
  final ConStore ownerStore;
  ConCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ConConsViewPage arguments holder class
class ConConsViewPageArguments {
  final Key key;
  final ConStore targetStore;
  final ConStore ownerStore;
  ConConsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ConCreatedByViewPage arguments holder class
class ConCreatedByViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final ConStore ownerStore;
  ConCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ConProsViewPage arguments holder class
class ConProsViewPageArguments {
  final Key key;
  final ProStore targetStore;
  final ConStore ownerStore;
  ConProsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ConVotesViewPage arguments holder class
class ConVotesViewPageArguments {
  final Key key;
  final SimpleVoteStore targetStore;
  final ConStore ownerStore;
  ConVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// CountyCitiesViewPage arguments holder class
class CountyCitiesViewPageArguments {
  final Key key;
  final CityStore targetStore;
  final CountyStore ownerStore;
  CountyCitiesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// DebateCommentsViewPage arguments holder class
class DebateCommentsViewPageArguments {
  final Key key;
  final CommentStore targetStore;
  final DebateStore ownerStore;
  DebateCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// DebateConsViewPage arguments holder class
class DebateConsViewPageArguments {
  final Key key;
  final ConStore targetStore;
  final DebateStore ownerStore;
  DebateConsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// DebateCreatedByViewPage arguments holder class
class DebateCreatedByViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final DebateStore ownerStore;
  DebateCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// DebateDebateVoteViewPage arguments holder class
class DebateDebateVoteViewPageArguments {
  final Key key;
  final VoteDefinitionStore targetStore;
  final DebateStore ownerStore;
  DebateDebateVoteViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// DebateIssueViewPage arguments holder class
class DebateIssueViewPageArguments {
  final Key key;
  final IssueStore targetStore;
  final DebateStore ownerStore;
  DebateIssueViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// DebateProsViewPage arguments holder class
class DebateProsViewPageArguments {
  final Key key;
  final ProStore targetStore;
  final DebateStore ownerStore;
  DebateProsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueAttachmentsViewPage arguments holder class
class IssueAttachmentsViewPageArguments {
  final Key key;
  final IssueAttachmentStore targetStore;
  final IssueStore ownerStore;
  IssueAttachmentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueCategoriesViewPage arguments holder class
class IssueCategoriesViewPageArguments {
  final Key key;
  final IssueCategoryStore targetStore;
  final IssueStore ownerStore;
  IssueCategoriesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueCommentsViewPage arguments holder class
class IssueCommentsViewPageArguments {
  final Key key;
  final CommentStore targetStore;
  final IssueStore ownerStore;
  IssueCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueCreatedByViewPage arguments holder class
class IssueCreatedByViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final IssueStore ownerStore;
  IssueCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueDebatesViewPage arguments holder class
class IssueDebatesViewPageArguments {
  final Key key;
  final DebateStore targetStore;
  final IssueStore ownerStore;
  IssueDebatesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueOwnerViewPage arguments holder class
class IssueOwnerViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final IssueStore ownerStore;
  IssueOwnerViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueCategoryOwnerViewPage arguments holder class
class IssueCategoryOwnerViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final IssueCategoryStore ownerStore;
  IssueCategoryOwnerViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// IssueCategorySubcategoriesViewPage arguments holder class
class IssueCategorySubcategoriesViewPageArguments {
  final Key key;
  final IssueCategoryStore targetStore;
  final IssueCategoryStore ownerStore;
  IssueCategorySubcategoriesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ProCommentsViewPage arguments holder class
class ProCommentsViewPageArguments {
  final Key key;
  final CommentStore targetStore;
  final ProStore ownerStore;
  ProCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ProConsViewPage arguments holder class
class ProConsViewPageArguments {
  final Key key;
  final ConStore targetStore;
  final ProStore ownerStore;
  ProConsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ProCreatedByViewPage arguments holder class
class ProCreatedByViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final ProStore ownerStore;
  ProCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ProProsViewPage arguments holder class
class ProProsViewPageArguments {
  final Key key;
  final ProStore targetStore;
  final ProStore ownerStore;
  ProProsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// ProVotesViewPage arguments holder class
class ProVotesViewPageArguments {
  final Key key;
  final SimpleVoteStore targetStore;
  final ProStore ownerStore;
  ProVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// SimpleVoteUserViewPage arguments holder class
class SimpleVoteUserViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final SimpleVoteStore ownerStore;
  SimpleVoteUserViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserActivityCitiesViewPage arguments holder class
class UserActivityCitiesViewPageArguments {
  final Key key;
  final CityStore targetStore;
  final UserStore ownerStore;
  UserActivityCitiesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserActivityCountiesViewPage arguments holder class
class UserActivityCountiesViewPageArguments {
  final Key key;
  final CountyStore targetStore;
  final UserStore ownerStore;
  UserActivityCountiesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserActivityDistrictsViewPage arguments holder class
class UserActivityDistrictsViewPageArguments {
  final Key key;
  final DistrictStore targetStore;
  final UserStore ownerStore;
  UserActivityDistrictsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserResidentCityViewPage arguments holder class
class UserResidentCityViewPageArguments {
  final Key key;
  final CityStore targetStore;
  final UserStore ownerStore;
  UserResidentCityViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserResidentCountyViewPage arguments holder class
class UserResidentCountyViewPageArguments {
  final Key key;
  final CountyStore targetStore;
  final UserStore ownerStore;
  UserResidentCountyViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserResidentDistrictViewPage arguments holder class
class UserResidentDistrictViewPageArguments {
  final Key key;
  final DistrictStore targetStore;
  final UserStore ownerStore;
  UserResidentDistrictViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// UserVotesViewPage arguments holder class
class UserVotesViewPageArguments {
  final Key key;
  final SimpleVoteStore targetStore;
  final UserStore ownerStore;
  UserVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// VoteDefinitionVoteEntriesViewPage arguments holder class
class VoteDefinitionVoteEntriesViewPageArguments {
  final Key key;
  final VoteEntryStore targetStore;
  final VoteDefinitionStore ownerStore;
  VoteDefinitionVoteEntriesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// VoteEntryUserViewPage arguments holder class
class VoteEntryUserViewPageArguments {
  final Key key;
  final UserStore targetStore;
  final VoteEntryStore ownerStore;
  VoteEntryUserViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// VoteEntryVoteDefinitionViewPage arguments holder class
class VoteEntryVoteDefinitionViewPageArguments {
  final Key key;
  final VoteDefinitionStore targetStore;
  final VoteEntryStore ownerStore;
  VoteEntryVoteDefinitionViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminAdminCategoriesUpdatePage arguments holder class
class AdminAdminCategoriesUpdatePageArguments {
  final Key key;
  final AdminIssueCategoryStore targetStore;
  AdminAdminCategoriesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminAdminCountiesUpdatePage arguments holder class
class AdminAdminCountiesUpdatePageArguments {
  final Key key;
  final AdminCountyStore targetStore;
  AdminAdminCountiesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminAdminDashboardhomeViewPage arguments holder class
class AdminAdminDashboardhomeViewPageArguments {
  final Key key;
  final AdminDashboardStore targetStore;
  AdminAdminDashboardhomeViewPageArguments({this.key, @required this.targetStore});
}

/// AdminAdminDebatesUpdatePage arguments holder class
class AdminAdminDebatesUpdatePageArguments {
  final Key key;
  final AdminDebateStore targetStore;
  AdminAdminDebatesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminAdminIssuesUpdatePage arguments holder class
class AdminAdminIssuesUpdatePageArguments {
  final Key key;
  final AdminIssueStore targetStore;
  AdminAdminIssuesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminAdminUsersUpdatePage arguments holder class
class AdminAdminUsersUpdatePageArguments {
  final Key key;
  final AdminUserStore targetStore;
  AdminAdminUsersUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminAdminVoteDefinitionsUpdatePage arguments holder class
class AdminAdminVoteDefinitionsUpdatePageArguments {
  final Key key;
  final AdminVoteDefinitionStore targetStore;
  AdminAdminVoteDefinitionsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminCityDistrictsCreatePage arguments holder class
class AdminCityDistrictsCreatePageArguments {
  final Key key;
  final AdminCityStore ownerStore;
  AdminCityDistrictsCreatePageArguments({this.key, @required this.ownerStore});
}

/// AdminCityDistrictsUpdatePage arguments holder class
class AdminCityDistrictsUpdatePageArguments {
  final Key key;
  final AdminDistrictStore targetStore;
  AdminCityDistrictsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminCityDistrictsViewPage arguments holder class
class AdminCityDistrictsViewPageArguments {
  final Key key;
  final AdminDistrictStore targetStore;
  final AdminCityStore ownerStore;
  AdminCityDistrictsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminCommentCreatedByViewPage arguments holder class
class AdminCommentCreatedByViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminCommentStore ownerStore;
  AdminCommentCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminCommentVotesCreatePage arguments holder class
class AdminCommentVotesCreatePageArguments {
  final Key key;
  final AdminCommentStore ownerStore;
  AdminCommentVotesCreatePageArguments({this.key, @required this.ownerStore});
}

/// AdminCommentVotesUpdatePage arguments holder class
class AdminCommentVotesUpdatePageArguments {
  final Key key;
  final AdminSimpleVoteStore targetStore;
  AdminCommentVotesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminCommentVotesTablePage arguments holder class
class AdminCommentVotesTablePageArguments {
  final Key key;
  final AdminCommentStore ownerStore;
  AdminCommentVotesTablePageArguments({this.key, @required this.ownerStore});
}

/// AdminCommentVotesViewPage arguments holder class
class AdminCommentVotesViewPageArguments {
  final Key key;
  final AdminSimpleVoteStore targetStore;
  final AdminCommentStore ownerStore;
  AdminCommentVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminConCommentsViewPage arguments holder class
class AdminConCommentsViewPageArguments {
  final Key key;
  final AdminCommentStore targetStore;
  final AdminConStore ownerStore;
  AdminConCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminConConsUpdatePage arguments holder class
class AdminConConsUpdatePageArguments {
  final Key key;
  final AdminConStore targetStore;
  AdminConConsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminConConsViewPage arguments holder class
class AdminConConsViewPageArguments {
  final Key key;
  final AdminConStore targetStore;
  final AdminConStore ownerStore;
  AdminConConsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminConCreateCommentOperationInputPage arguments holder class
class AdminConCreateCommentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminConCreateCommentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminConCreateSubArgumentOperationInputPage arguments holder class
class AdminConCreateSubArgumentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminConCreateSubArgumentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminConCreatedByViewPage arguments holder class
class AdminConCreatedByViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminConStore ownerStore;
  AdminConCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminConProsUpdatePage arguments holder class
class AdminConProsUpdatePageArguments {
  final Key key;
  final AdminProStore targetStore;
  AdminConProsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminConProsViewPage arguments holder class
class AdminConProsViewPageArguments {
  final Key key;
  final AdminProStore targetStore;
  final AdminConStore ownerStore;
  AdminConProsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminConVotesTablePage arguments holder class
class AdminConVotesTablePageArguments {
  final Key key;
  final AdminConStore ownerStore;
  AdminConVotesTablePageArguments({this.key, @required this.ownerStore});
}

/// AdminConVotesViewPage arguments holder class
class AdminConVotesViewPageArguments {
  final Key key;
  final AdminSimpleVoteStore targetStore;
  final AdminConStore ownerStore;
  AdminConVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminCountyCitiesCreatePage arguments holder class
class AdminCountyCitiesCreatePageArguments {
  final Key key;
  final AdminCountyStore ownerStore;
  AdminCountyCitiesCreatePageArguments({this.key, @required this.ownerStore});
}

/// AdminCountyCitiesUpdatePage arguments holder class
class AdminCountyCitiesUpdatePageArguments {
  final Key key;
  final AdminCityStore targetStore;
  AdminCountyCitiesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminCountyCitiesViewPage arguments holder class
class AdminCountyCitiesViewPageArguments {
  final Key key;
  final AdminCityStore targetStore;
  final AdminCountyStore ownerStore;
  AdminCountyCitiesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDashboardCreateIssueOperationInputPage arguments holder class
class AdminDashboardCreateIssueOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminDashboardCreateIssueOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminDashboardCreateIssueOperationOutputPage arguments holder class
class AdminDashboardCreateIssueOperationOutputPageArguments {
  final Key key;
  final AdminIssueStore targetStore;
  AdminDashboardCreateIssueOperationOutputPageArguments({this.key, @required this.targetStore});
}

/// AdminDashboardCreateUserOperationInputPage arguments holder class
class AdminDashboardCreateUserOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminDashboardCreateUserOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminDashboardCreateUserOperationOutputPage arguments holder class
class AdminDashboardCreateUserOperationOutputPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  AdminDashboardCreateUserOperationOutputPageArguments({this.key, @required this.targetStore});
}

/// AdminDashboardDebatesViewPage arguments holder class
class AdminDashboardDebatesViewPageArguments {
  final Key key;
  final AdminDebateStore targetStore;
  final AdminDashboardStore ownerStore;
  AdminDashboardDebatesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDashboardIssuesViewPage arguments holder class
class AdminDashboardIssuesViewPageArguments {
  final Key key;
  final AdminIssueStore targetStore;
  final AdminDashboardStore ownerStore;
  AdminDashboardIssuesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDebateCloseDebateOperationInputPage arguments holder class
class AdminDebateCloseDebateOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminDebateCloseDebateOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminDebateCloseDebateOperationOutputPage arguments holder class
class AdminDebateCloseDebateOperationOutputPageArguments {
  final Key key;
  final VoteDefinitionStore targetStore;
  AdminDebateCloseDebateOperationOutputPageArguments({this.key, @required this.targetStore});
}

/// AdminDebateCommentsUpdatePage arguments holder class
class AdminDebateCommentsUpdatePageArguments {
  final Key key;
  final AdminCommentStore targetStore;
  AdminDebateCommentsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminDebateCommentsViewPage arguments holder class
class AdminDebateCommentsViewPageArguments {
  final Key key;
  final AdminCommentStore targetStore;
  final AdminDebateStore ownerStore;
  AdminDebateCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDebateConsUpdatePage arguments holder class
class AdminDebateConsUpdatePageArguments {
  final Key key;
  final AdminConStore targetStore;
  AdminDebateConsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminDebateConsViewPage arguments holder class
class AdminDebateConsViewPageArguments {
  final Key key;
  final AdminConStore targetStore;
  final AdminDebateStore ownerStore;
  AdminDebateConsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDebateCreateArgumentOperationInputPage arguments holder class
class AdminDebateCreateArgumentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminDebateCreateArgumentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminDebateCreateCommentOperationInputPage arguments holder class
class AdminDebateCreateCommentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminDebateCreateCommentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminDebateCreatedByViewPage arguments holder class
class AdminDebateCreatedByViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminDebateStore ownerStore;
  AdminDebateCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDebateIssueViewPage arguments holder class
class AdminDebateIssueViewPageArguments {
  final Key key;
  final AdminIssueStore targetStore;
  final AdminDebateStore ownerStore;
  AdminDebateIssueViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDebateProsUpdatePage arguments holder class
class AdminDebateProsUpdatePageArguments {
  final Key key;
  final AdminProStore targetStore;
  AdminDebateProsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminDebateProsViewPage arguments holder class
class AdminDebateProsViewPageArguments {
  final Key key;
  final AdminProStore targetStore;
  final AdminDebateStore ownerStore;
  AdminDebateProsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminDebateVoteDefinitionViewPage arguments holder class
class AdminDebateVoteDefinitionViewPageArguments {
  final Key key;
  final AdminVoteDefinitionStore targetStore;
  final AdminDebateStore ownerStore;
  AdminDebateVoteDefinitionViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueAttachmentsCreatePage arguments holder class
class AdminIssueAttachmentsCreatePageArguments {
  final Key key;
  final AdminIssueStore ownerStore;
  AdminIssueAttachmentsCreatePageArguments({this.key, @required this.ownerStore});
}

/// AdminIssueAttachmentsUpdatePage arguments holder class
class AdminIssueAttachmentsUpdatePageArguments {
  final Key key;
  final AdminIssueAttachmentStore targetStore;
  AdminIssueAttachmentsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminIssueAttachmentsViewPage arguments holder class
class AdminIssueAttachmentsViewPageArguments {
  final Key key;
  final AdminIssueAttachmentStore targetStore;
  final AdminIssueStore ownerStore;
  AdminIssueAttachmentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueCategoriesViewPage arguments holder class
class AdminIssueCategoriesViewPageArguments {
  final Key key;
  final AdminIssueCategoryStore targetStore;
  final AdminIssueStore ownerStore;
  AdminIssueCategoriesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueCommentsViewPage arguments holder class
class AdminIssueCommentsViewPageArguments {
  final Key key;
  final AdminCommentStore targetStore;
  final AdminIssueStore ownerStore;
  AdminIssueCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueCreateCommentOperationInputPage arguments holder class
class AdminIssueCreateCommentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminIssueCreateCommentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminIssueCreateDebateOperationInputPage arguments holder class
class AdminIssueCreateDebateOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminIssueCreateDebateOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminIssueCreateDebateOperationOutputPage arguments holder class
class AdminIssueCreateDebateOperationOutputPageArguments {
  final Key key;
  final DebateStore targetStore;
  AdminIssueCreateDebateOperationOutputPageArguments({this.key, @required this.targetStore});
}

/// AdminIssueCreatedByViewPage arguments holder class
class AdminIssueCreatedByViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminIssueStore ownerStore;
  AdminIssueCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueDebatesViewPage arguments holder class
class AdminIssueDebatesViewPageArguments {
  final Key key;
  final AdminIssueDebateStore targetStore;
  final AdminIssueStore ownerStore;
  AdminIssueDebatesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueOwnerViewPage arguments holder class
class AdminIssueOwnerViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminIssueStore ownerStore;
  AdminIssueOwnerViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueCategoryOwnerViewPage arguments holder class
class AdminIssueCategoryOwnerViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminIssueCategoryStore ownerStore;
  AdminIssueCategoryOwnerViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminIssueCategorySubcategoriesCreatePage arguments holder class
class AdminIssueCategorySubcategoriesCreatePageArguments {
  final Key key;
  final AdminIssueCategoryStore ownerStore;
  AdminIssueCategorySubcategoriesCreatePageArguments({this.key, @required this.ownerStore});
}

/// AdminIssueCategorySubcategoriesUpdatePage arguments holder class
class AdminIssueCategorySubcategoriesUpdatePageArguments {
  final Key key;
  final AdminIssueCategoryStore targetStore;
  AdminIssueCategorySubcategoriesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminIssueCategorySubcategoriesViewPage arguments holder class
class AdminIssueCategorySubcategoriesViewPageArguments {
  final Key key;
  final AdminIssueCategoryStore targetStore;
  final AdminIssueCategoryStore ownerStore;
  AdminIssueCategorySubcategoriesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminProCommentsViewPage arguments holder class
class AdminProCommentsViewPageArguments {
  final Key key;
  final AdminCommentStore targetStore;
  final AdminProStore ownerStore;
  AdminProCommentsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminProConsUpdatePage arguments holder class
class AdminProConsUpdatePageArguments {
  final Key key;
  final AdminConStore targetStore;
  AdminProConsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminProConsViewPage arguments holder class
class AdminProConsViewPageArguments {
  final Key key;
  final AdminConStore targetStore;
  final AdminProStore ownerStore;
  AdminProConsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminProCreateCommentOperationInputPage arguments holder class
class AdminProCreateCommentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminProCreateCommentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminProCreateSubArgumentOperationInputPage arguments holder class
class AdminProCreateSubArgumentOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminProCreateSubArgumentOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminProCreatedByViewPage arguments holder class
class AdminProCreatedByViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminProStore ownerStore;
  AdminProCreatedByViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminProProsUpdatePage arguments holder class
class AdminProProsUpdatePageArguments {
  final Key key;
  final AdminProStore targetStore;
  AdminProProsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminProProsViewPage arguments holder class
class AdminProProsViewPageArguments {
  final Key key;
  final AdminProStore targetStore;
  final AdminProStore ownerStore;
  AdminProProsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminProVotesCreatePage arguments holder class
class AdminProVotesCreatePageArguments {
  final Key key;
  final AdminProStore ownerStore;
  AdminProVotesCreatePageArguments({this.key, @required this.ownerStore});
}

/// AdminProVotesUpdatePage arguments holder class
class AdminProVotesUpdatePageArguments {
  final Key key;
  final AdminSimpleVoteStore targetStore;
  AdminProVotesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminProVotesTablePage arguments holder class
class AdminProVotesTablePageArguments {
  final Key key;
  final AdminProStore ownerStore;
  AdminProVotesTablePageArguments({this.key, @required this.ownerStore});
}

/// AdminProVotesViewPage arguments holder class
class AdminProVotesViewPageArguments {
  final Key key;
  final AdminSimpleVoteStore targetStore;
  final AdminProStore ownerStore;
  AdminProVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminSimpleVoteUserViewPage arguments holder class
class AdminSimpleVoteUserViewPageArguments {
  final Key key;
  final AdminUserStore targetStore;
  final AdminSimpleVoteStore ownerStore;
  AdminSimpleVoteUserViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserActivityCitiesUpdatePage arguments holder class
class AdminUserActivityCitiesUpdatePageArguments {
  final Key key;
  final AdminCityStore targetStore;
  AdminUserActivityCitiesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminUserActivityCitiesViewPage arguments holder class
class AdminUserActivityCitiesViewPageArguments {
  final Key key;
  final AdminCityStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserActivityCitiesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserActivityCountiesUpdatePage arguments holder class
class AdminUserActivityCountiesUpdatePageArguments {
  final Key key;
  final AdminCountyStore targetStore;
  AdminUserActivityCountiesUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminUserActivityCountiesViewPage arguments holder class
class AdminUserActivityCountiesViewPageArguments {
  final Key key;
  final AdminCountyStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserActivityCountiesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserActivityDistrictsUpdatePage arguments holder class
class AdminUserActivityDistrictsUpdatePageArguments {
  final Key key;
  final AdminDistrictStore targetStore;
  AdminUserActivityDistrictsUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminUserActivityDistrictsViewPage arguments holder class
class AdminUserActivityDistrictsViewPageArguments {
  final Key key;
  final AdminDistrictStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserActivityDistrictsViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserResidentCityUpdatePage arguments holder class
class AdminUserResidentCityUpdatePageArguments {
  final Key key;
  final AdminCityStore targetStore;
  AdminUserResidentCityUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminUserResidentCityViewPage arguments holder class
class AdminUserResidentCityViewPageArguments {
  final Key key;
  final AdminCityStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserResidentCityViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserResidentCountyUpdatePage arguments holder class
class AdminUserResidentCountyUpdatePageArguments {
  final Key key;
  final AdminCountyStore targetStore;
  AdminUserResidentCountyUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminUserResidentCountyViewPage arguments holder class
class AdminUserResidentCountyViewPageArguments {
  final Key key;
  final AdminCountyStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserResidentCountyViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserResidentDistrictUpdatePage arguments holder class
class AdminUserResidentDistrictUpdatePageArguments {
  final Key key;
  final AdminDistrictStore targetStore;
  AdminUserResidentDistrictUpdatePageArguments({this.key, @required this.targetStore});
}

/// AdminUserResidentDistrictViewPage arguments holder class
class AdminUserResidentDistrictViewPageArguments {
  final Key key;
  final AdminDistrictStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserResidentDistrictViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminUserVotesTablePage arguments holder class
class AdminUserVotesTablePageArguments {
  final Key key;
  final AdminUserStore ownerStore;
  AdminUserVotesTablePageArguments({this.key, @required this.ownerStore});
}

/// AdminUserVotesViewPage arguments holder class
class AdminUserVotesViewPageArguments {
  final Key key;
  final AdminSimpleVoteStore targetStore;
  final AdminUserStore ownerStore;
  AdminUserVotesViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminVoteDefinitionDebateTablePage arguments holder class
class AdminVoteDefinitionDebateTablePageArguments {
  final Key key;
  final AdminVoteDefinitionStore ownerStore;
  AdminVoteDefinitionDebateTablePageArguments({this.key, @required this.ownerStore});
}

/// AdminVoteDefinitionDebateViewPage arguments holder class
class AdminVoteDefinitionDebateViewPageArguments {
  final Key key;
  final AdminDebateStore targetStore;
  final AdminVoteDefinitionStore ownerStore;
  AdminVoteDefinitionDebateViewPageArguments({this.key, @required this.targetStore, @required this.ownerStore});
}

/// AdminVoteDefinitionVoteRatingOperationInputPage arguments holder class
class AdminVoteDefinitionVoteRatingOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminVoteDefinitionVoteRatingOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminVoteDefinitionVoteYesNoOperationInputPage arguments holder class
class AdminVoteDefinitionVoteYesNoOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminVoteDefinitionVoteYesNoOperationInputPageArguments({this.key, @required this.operationCall});
}

/// AdminVoteDefinitionVoteYesNoAbstainOperationInputPage arguments holder class
class AdminVoteDefinitionVoteYesNoAbstainOperationInputPageArguments {
  final Key key;
  final Function operationCall;
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageArguments({this.key, @required this.operationCall});
}

/// EdemokraciaAdminAdminErrorPage arguments holder class
class EdemokraciaAdminAdminErrorPageArguments {
  final int errorCode;
  final String errorMessage;
  final String errorDescription;
  final String stackTrace;
  final Icon icon;
  final String title;
  EdemokraciaAdminAdminErrorPageArguments({this.errorCode, @required this.errorMessage, this.errorDescription, this.stackTrace, this.icon, this.title});
}
