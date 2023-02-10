///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/routes.tsx'
// Template name: actor/src/routes.tsx.hbs

import { Navigate, Route } from 'react-router-dom';
import { lazy, ReactElement, Suspense } from 'react';

let routes: Array<{ path: string; element: ReactElement; exact?: boolean }> = [];

const DashboardRoute = lazy(() => import('./pages/admin/admin/dashboardhome/index'));

routes.push({
  path: '',
  exact: true,
  element: (
    <Suspense>
      <DashboardRoute />
    </Suspense>
  ),
});
const SimpleVoteUserView = lazy(() => import('./pages/simple_vote/user/view/index'));

routes.push({
  path: 'simple_vote/user/view/:signedIdentifier',
  element: (
    <Suspense>
      <SimpleVoteUserView />
    </Suspense>
  ),
});
const AdminIssueCategorySubcategoriesView = lazy(() => import('./pages/admin/issue_category/subcategories/view/index'));

routes.push({
  path: 'admin/issue_category/subcategories/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueCategorySubcategoriesView />
    </Suspense>
  ),
});
const AdminIssueCommentsView = lazy(() => import('./pages/admin/issue/comments/view/index'));

routes.push({
  path: 'admin/issue/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueCommentsView />
    </Suspense>
  ),
});
const AdminCommentVotesTable = lazy(() => import('./pages/admin/comment/votes/table/index'));

routes.push({
  path: 'admin/comment/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <AdminCommentVotesTable />
    </Suspense>
  ),
});
const VoteDefinitionVoteEntriesView = lazy(() => import('./pages/vote_definition/vote_entries/view/index'));

routes.push({
  path: 'vote_definition/vote_entries/view/:signedIdentifier',
  element: (
    <Suspense>
      <VoteDefinitionVoteEntriesView />
    </Suspense>
  ),
});
const CommentCreatedByView = lazy(() => import('./pages/comment/created_by/view/index'));

routes.push({
  path: 'comment/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <CommentCreatedByView />
    </Suspense>
  ),
});
const ConCreatedByView = lazy(() => import('./pages/con/created_by/view/index'));

routes.push({
  path: 'con/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ConCreatedByView />
    </Suspense>
  ),
});
const ConProsView = lazy(() => import('./pages/con/pros/view/index'));

routes.push({
  path: 'con/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ConProsView />
    </Suspense>
  ),
});
const AdminConConsView = lazy(() => import('./pages/admin/con/cons/view/index'));

routes.push({
  path: 'admin/con/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminConConsView />
    </Suspense>
  ),
});
const AdminConVotesTable = lazy(() => import('./pages/admin/con/votes/table/index'));

routes.push({
  path: 'admin/con/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <AdminConVotesTable />
    </Suspense>
  ),
});
const AdminIssueAttachmentsView = lazy(() => import('./pages/admin/issue/attachments/view/index'));

routes.push({
  path: 'admin/issue/attachments/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueAttachmentsView />
    </Suspense>
  ),
});
const AdminAdminCountiesView = lazy(() => import('./pages/admin/admin/counties/view/index'));

routes.push({
  path: 'admin/admin/counties/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminCountiesView />
    </Suspense>
  ),
});
const AdminAdminCountiesTable = lazy(() => import('./pages/admin/admin/counties/table/index'));

routes.push({
  path: 'admin/admin/counties/table',
  element: (
    <Suspense>
      <AdminAdminCountiesTable />
    </Suspense>
  ),
});
const AdminSimpleVoteUserView = lazy(() => import('./pages/admin/simple_vote/user/view/index'));

routes.push({
  path: 'admin/simple_vote/user/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminSimpleVoteUserView />
    </Suspense>
  ),
});
const AdminUserVotesTable = lazy(() => import('./pages/admin/user/votes/table/index'));

routes.push({
  path: 'admin/user/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserVotesTable />
    </Suspense>
  ),
});
const AdminCountyCitiesView = lazy(() => import('./pages/admin/county/cities/view/index'));

routes.push({
  path: 'admin/county/cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminCountyCitiesView />
    </Suspense>
  ),
});
const ProCommentsView = lazy(() => import('./pages/pro/comments/view/index'));

routes.push({
  path: 'pro/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ProCommentsView />
    </Suspense>
  ),
});
const IssueCategoryOwnerView = lazy(() => import('./pages/issue_category/owner/view/index'));

routes.push({
  path: 'issue_category/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueCategoryOwnerView />
    </Suspense>
  ),
});
const AdminCommentVotesView = lazy(() => import('./pages/admin/comment/votes/view/index'));

routes.push({
  path: 'admin/comment/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminCommentVotesView />
    </Suspense>
  ),
});
const ProVotesView = lazy(() => import('./pages/pro/votes/view/index'));

routes.push({
  path: 'pro/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ProVotesView />
    </Suspense>
  ),
});
const ProProsView = lazy(() => import('./pages/pro/pros/view/index'));

routes.push({
  path: 'pro/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ProProsView />
    </Suspense>
  ),
});
const AdminAdminUsersView = lazy(() => import('./pages/admin/admin/users/view/index'));

routes.push({
  path: 'admin/admin/users/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminUsersView />
    </Suspense>
  ),
});
const AdminAdminUsersTable = lazy(() => import('./pages/admin/admin/users/table/index'));

routes.push({
  path: 'admin/admin/users/table',
  element: (
    <Suspense>
      <AdminAdminUsersTable />
    </Suspense>
  ),
});
const AdminConCreatedByView = lazy(() => import('./pages/admin/con/created_by/view/index'));

routes.push({
  path: 'admin/con/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminConCreatedByView />
    </Suspense>
  ),
});
const AdminProCreatedByView = lazy(() => import('./pages/admin/pro/created_by/view/index'));

routes.push({
  path: 'admin/pro/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminProCreatedByView />
    </Suspense>
  ),
});
const CommentVotesView = lazy(() => import('./pages/comment/votes/view/index'));

routes.push({
  path: 'comment/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <CommentVotesView />
    </Suspense>
  ),
});
const AdminAdminVoteDefinitionsView = lazy(() => import('./pages/admin/admin/vote_definitions/view/index'));

routes.push({
  path: 'admin/admin/vote_definitions/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminVoteDefinitionsView />
    </Suspense>
  ),
});
const AdminAdminVoteDefinitionsTable = lazy(() => import('./pages/admin/admin/vote_definitions/table/index'));

routes.push({
  path: 'admin/admin/vote_definitions/table',
  element: (
    <Suspense>
      <AdminAdminVoteDefinitionsTable />
    </Suspense>
  ),
});
const IssueCategorySubcategoriesView = lazy(() => import('./pages/issue_category/subcategories/view/index'));

routes.push({
  path: 'issue_category/subcategories/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueCategorySubcategoriesView />
    </Suspense>
  ),
});
const AdminAdminCategoriesView = lazy(() => import('./pages/admin/admin/categories/view/index'));

routes.push({
  path: 'admin/admin/categories/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminCategoriesView />
    </Suspense>
  ),
});
const AdminAdminCategoriesTable = lazy(() => import('./pages/admin/admin/categories/table/index'));

routes.push({
  path: 'admin/admin/categories/table',
  element: (
    <Suspense>
      <AdminAdminCategoriesTable />
    </Suspense>
  ),
});
const AdminUserResidentDistrictView = lazy(() => import('./pages/admin/user/resident_district/view/index'));

routes.push({
  path: 'admin/user/resident_district/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserResidentDistrictView />
    </Suspense>
  ),
});
const AdminConVotesView = lazy(() => import('./pages/admin/con/votes/view/index'));

routes.push({
  path: 'admin/con/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminConVotesView />
    </Suspense>
  ),
});
const UserActivityCountiesView = lazy(() => import('./pages/user/activity_counties/view/index'));

routes.push({
  path: 'user/activity_counties/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserActivityCountiesView />
    </Suspense>
  ),
});
const ProCreatedByView = lazy(() => import('./pages/pro/created_by/view/index'));

routes.push({
  path: 'pro/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ProCreatedByView />
    </Suspense>
  ),
});
const AdminAdminIssuesView = lazy(() => import('./pages/admin/admin/issues/view/index'));

routes.push({
  path: 'admin/admin/issues/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminIssuesView />
    </Suspense>
  ),
});
const AdminAdminIssuesTable = lazy(() => import('./pages/admin/admin/issues/table/index'));

routes.push({
  path: 'admin/admin/issues/table',
  element: (
    <Suspense>
      <AdminAdminIssuesTable />
    </Suspense>
  ),
});
const UserActivityCitiesView = lazy(() => import('./pages/user/activity_cities/view/index'));

routes.push({
  path: 'user/activity_cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserActivityCitiesView />
    </Suspense>
  ),
});
const ConConsView = lazy(() => import('./pages/con/cons/view/index'));

routes.push({
  path: 'con/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ConConsView />
    </Suspense>
  ),
});
const DebateIssueView = lazy(() => import('./pages/debate/issue/view/index'));

routes.push({
  path: 'debate/issue/view/:signedIdentifier',
  element: (
    <Suspense>
      <DebateIssueView />
    </Suspense>
  ),
});
const AdminDebateCreatedByView = lazy(() => import('./pages/admin/debate/created_by/view/index'));

routes.push({
  path: 'admin/debate/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDebateCreatedByView />
    </Suspense>
  ),
});
const AdminDebateProsView = lazy(() => import('./pages/admin/debate/pros/view/index'));

routes.push({
  path: 'admin/debate/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDebateProsView />
    </Suspense>
  ),
});
const AdminProVotesTable = lazy(() => import('./pages/admin/pro/votes/table/index'));

routes.push({
  path: 'admin/pro/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <AdminProVotesTable />
    </Suspense>
  ),
});
const VoteEntryUserView = lazy(() => import('./pages/vote_entry/user/view/index'));

routes.push({
  path: 'vote_entry/user/view/:signedIdentifier',
  element: (
    <Suspense>
      <VoteEntryUserView />
    </Suspense>
  ),
});
const AdminCityDistrictsView = lazy(() => import('./pages/admin/city/districts/view/index'));

routes.push({
  path: 'admin/city/districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminCityDistrictsView />
    </Suspense>
  ),
});
const UserResidentCountyView = lazy(() => import('./pages/user/resident_county/view/index'));

routes.push({
  path: 'user/resident_county/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserResidentCountyView />
    </Suspense>
  ),
});
const AdminConCommentsView = lazy(() => import('./pages/admin/con/comments/view/index'));

routes.push({
  path: 'admin/con/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminConCommentsView />
    </Suspense>
  ),
});
const AdminIssueCategoriesView = lazy(() => import('./pages/admin/issue/categories/view/index'));

routes.push({
  path: 'admin/issue/categories/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueCategoriesView />
    </Suspense>
  ),
});
const AdminProVotesView = lazy(() => import('./pages/admin/pro/votes/view/index'));

routes.push({
  path: 'admin/pro/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminProVotesView />
    </Suspense>
  ),
});
const DebateCreatedByView = lazy(() => import('./pages/debate/created_by/view/index'));

routes.push({
  path: 'debate/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <DebateCreatedByView />
    </Suspense>
  ),
});
const AdminVoteDefinitionDebateView = lazy(() => import('./pages/admin/vote_definition/debate/view/index'));

routes.push({
  path: 'admin/vote_definition/debate/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminVoteDefinitionDebateView />
    </Suspense>
  ),
});
const AdminAdminDashboardhomeView = lazy(() => import('./pages/admin/admin/dashboardhome/view/index'));

routes.push({
  path: 'admin/admin/dashboardhome/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminDashboardhomeView />
    </Suspense>
  ),
});
const IssueDebatesView = lazy(() => import('./pages/issue/debates/view/index'));

routes.push({
  path: 'issue/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueDebatesView />
    </Suspense>
  ),
});
const IssueOwnerView = lazy(() => import('./pages/issue/owner/view/index'));

routes.push({
  path: 'issue/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueOwnerView />
    </Suspense>
  ),
});
const CountyCitiesView = lazy(() => import('./pages/county/cities/view/index'));

routes.push({
  path: 'county/cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <CountyCitiesView />
    </Suspense>
  ),
});
const VoteEntryVoteDefinitionView = lazy(() => import('./pages/vote_entry/vote_definition/view/index'));

routes.push({
  path: 'vote_entry/vote_definition/view/:signedIdentifier',
  element: (
    <Suspense>
      <VoteEntryVoteDefinitionView />
    </Suspense>
  ),
});
const AdminUserActivityCitiesView = lazy(() => import('./pages/admin/user/activity_cities/view/index'));

routes.push({
  path: 'admin/user/activity_cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserActivityCitiesView />
    </Suspense>
  ),
});
const IssueCreatedByView = lazy(() => import('./pages/issue/created_by/view/index'));

routes.push({
  path: 'issue/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueCreatedByView />
    </Suspense>
  ),
});
const AdminCommentCreatedByView = lazy(() => import('./pages/admin/comment/created_by/view/index'));

routes.push({
  path: 'admin/comment/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminCommentCreatedByView />
    </Suspense>
  ),
});
const AdminAdminDebatesView = lazy(() => import('./pages/admin/admin/debates/view/index'));

routes.push({
  path: 'admin/admin/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminAdminDebatesView />
    </Suspense>
  ),
});
const AdminAdminDebatesTable = lazy(() => import('./pages/admin/admin/debates/table/index'));

routes.push({
  path: 'admin/admin/debates/table',
  element: (
    <Suspense>
      <AdminAdminDebatesTable />
    </Suspense>
  ),
});
const AdminDebateConsView = lazy(() => import('./pages/admin/debate/cons/view/index'));

routes.push({
  path: 'admin/debate/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDebateConsView />
    </Suspense>
  ),
});
const AdminDebateVoteDefinitionView = lazy(() => import('./pages/admin/debate/vote_definition/view/index'));

routes.push({
  path: 'admin/debate/vote_definition/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDebateVoteDefinitionView />
    </Suspense>
  ),
});
const AdminConProsView = lazy(() => import('./pages/admin/con/pros/view/index'));

routes.push({
  path: 'admin/con/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminConProsView />
    </Suspense>
  ),
});
const CityDistrictsView = lazy(() => import('./pages/city/districts/view/index'));

routes.push({
  path: 'city/districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <CityDistrictsView />
    </Suspense>
  ),
});
const ConCommentsView = lazy(() => import('./pages/con/comments/view/index'));

routes.push({
  path: 'con/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ConCommentsView />
    </Suspense>
  ),
});
const IssueCategoriesView = lazy(() => import('./pages/issue/categories/view/index'));

routes.push({
  path: 'issue/categories/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueCategoriesView />
    </Suspense>
  ),
});
const AdminIssueCategoryOwnerView = lazy(() => import('./pages/admin/issue_category/owner/view/index'));

routes.push({
  path: 'admin/issue_category/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueCategoryOwnerView />
    </Suspense>
  ),
});
const AdminDebateCommentsView = lazy(() => import('./pages/admin/debate/comments/view/index'));

routes.push({
  path: 'admin/debate/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDebateCommentsView />
    </Suspense>
  ),
});
const ProConsView = lazy(() => import('./pages/pro/cons/view/index'));

routes.push({
  path: 'pro/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ProConsView />
    </Suspense>
  ),
});
const UserResidentCityView = lazy(() => import('./pages/user/resident_city/view/index'));

routes.push({
  path: 'user/resident_city/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserResidentCityView />
    </Suspense>
  ),
});
const DebateCommentsView = lazy(() => import('./pages/debate/comments/view/index'));

routes.push({
  path: 'debate/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <DebateCommentsView />
    </Suspense>
  ),
});
const AdminProConsView = lazy(() => import('./pages/admin/pro/cons/view/index'));

routes.push({
  path: 'admin/pro/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminProConsView />
    </Suspense>
  ),
});
const AdminDebateIssueView = lazy(() => import('./pages/admin/debate/issue/view/index'));

routes.push({
  path: 'admin/debate/issue/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDebateIssueView />
    </Suspense>
  ),
});
const AdminUserResidentCityView = lazy(() => import('./pages/admin/user/resident_city/view/index'));

routes.push({
  path: 'admin/user/resident_city/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserResidentCityView />
    </Suspense>
  ),
});
const AdminDashboardDebatesView = lazy(() => import('./pages/admin/dashboard/debates/view/index'));

routes.push({
  path: 'admin/dashboard/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDashboardDebatesView />
    </Suspense>
  ),
});
const AdminUserVotesView = lazy(() => import('./pages/admin/user/votes/view/index'));

routes.push({
  path: 'admin/user/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserVotesView />
    </Suspense>
  ),
});
const AdminIssueCreatedByView = lazy(() => import('./pages/admin/issue/created_by/view/index'));

routes.push({
  path: 'admin/issue/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueCreatedByView />
    </Suspense>
  ),
});
const UserVotesView = lazy(() => import('./pages/user/votes/view/index'));

routes.push({
  path: 'user/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserVotesView />
    </Suspense>
  ),
});
const AdminProProsView = lazy(() => import('./pages/admin/pro/pros/view/index'));

routes.push({
  path: 'admin/pro/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminProProsView />
    </Suspense>
  ),
});
const ConVotesView = lazy(() => import('./pages/con/votes/view/index'));

routes.push({
  path: 'con/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ConVotesView />
    </Suspense>
  ),
});
const UserResidentDistrictView = lazy(() => import('./pages/user/resident_district/view/index'));

routes.push({
  path: 'user/resident_district/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserResidentDistrictView />
    </Suspense>
  ),
});
const AdminDashboardIssuesView = lazy(() => import('./pages/admin/dashboard/issues/view/index'));

routes.push({
  path: 'admin/dashboard/issues/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminDashboardIssuesView />
    </Suspense>
  ),
});
const IssueAttachmentsView = lazy(() => import('./pages/issue/attachments/view/index'));

routes.push({
  path: 'issue/attachments/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueAttachmentsView />
    </Suspense>
  ),
});
const AdminIssueOwnerView = lazy(() => import('./pages/admin/issue/owner/view/index'));

routes.push({
  path: 'admin/issue/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueOwnerView />
    </Suspense>
  ),
});
const IssueCommentsView = lazy(() => import('./pages/issue/comments/view/index'));

routes.push({
  path: 'issue/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <IssueCommentsView />
    </Suspense>
  ),
});
const DebateConsView = lazy(() => import('./pages/debate/cons/view/index'));

routes.push({
  path: 'debate/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <DebateConsView />
    </Suspense>
  ),
});
const AdminIssueDebatesView = lazy(() => import('./pages/admin/issue/debates/view/index'));

routes.push({
  path: 'admin/issue/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminIssueDebatesView />
    </Suspense>
  ),
});
const AdminProCommentsView = lazy(() => import('./pages/admin/pro/comments/view/index'));

routes.push({
  path: 'admin/pro/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminProCommentsView />
    </Suspense>
  ),
});
const UserActivityDistrictsView = lazy(() => import('./pages/user/activity_districts/view/index'));

routes.push({
  path: 'user/activity_districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <UserActivityDistrictsView />
    </Suspense>
  ),
});
const AdminUserActivityDistrictsView = lazy(() => import('./pages/admin/user/activity_districts/view/index'));

routes.push({
  path: 'admin/user/activity_districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserActivityDistrictsView />
    </Suspense>
  ),
});
const DebateDebateVoteView = lazy(() => import('./pages/debate/debate_vote/view/index'));

routes.push({
  path: 'debate/debate_vote/view/:signedIdentifier',
  element: (
    <Suspense>
      <DebateDebateVoteView />
    </Suspense>
  ),
});
const AdminUserResidentCountyView = lazy(() => import('./pages/admin/user/resident_county/view/index'));

routes.push({
  path: 'admin/user/resident_county/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserResidentCountyView />
    </Suspense>
  ),
});
const DebateProsView = lazy(() => import('./pages/debate/pros/view/index'));

routes.push({
  path: 'debate/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <DebateProsView />
    </Suspense>
  ),
});
const AdminUserActivityCountiesView = lazy(() => import('./pages/admin/user/activity_counties/view/index'));

routes.push({
  path: 'admin/user/activity_counties/view/:signedIdentifier',
  element: (
    <Suspense>
      <AdminUserActivityCountiesView />
    </Suspense>
  ),
});

export { routes };
