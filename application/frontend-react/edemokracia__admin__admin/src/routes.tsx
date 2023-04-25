//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/routes.tsx'
// Template name: actor/src/routes.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/routes.tsx.hbs

import { Navigate, Route } from 'react-router-dom';
import { lazy, ReactElement, Suspense } from 'react';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';

let routes: Array<{ path: string; element: ReactElement; exact?: boolean }> = [];

export const ROUTE_CITY_DISTRICTS_VIEW_INTERFACE_KEY = 'CityDistrictsViewRoute';
const CityDistrictsView = lazy(() => import('./pages/city/districts/view/index'));

routes.push({
  path: 'city/districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_CITY_DISTRICTS_VIEW_INTERFACE_KEY})`}>
        <CityDistrictsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_COMMENT_CREATED_BY_VIEW_INTERFACE_KEY = 'CommentCreatedByViewRoute';
const CommentCreatedByView = lazy(() => import('./pages/comment/created_by/view/index'));

routes.push({
  path: 'comment/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_COMMENT_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <CommentCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_COMMENT_VOTES_VIEW_INTERFACE_KEY = 'CommentVotesViewRoute';
const CommentVotesView = lazy(() => import('./pages/comment/votes/view/index'));

routes.push({
  path: 'comment/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_COMMENT_VOTES_VIEW_INTERFACE_KEY})`}>
        <CommentVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_CON_COMMENTS_VIEW_INTERFACE_KEY = 'ConCommentsViewRoute';
const ConCommentsView = lazy(() => import('./pages/con/comments/view/index'));

routes.push({
  path: 'con/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_CON_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <ConCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_CON_CONS_VIEW_INTERFACE_KEY = 'ConConsViewRoute';
const ConConsView = lazy(() => import('./pages/con/cons/view/index'));

routes.push({
  path: 'con/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_CON_CONS_VIEW_INTERFACE_KEY})`}>
        <ConConsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_CON_CREATED_BY_VIEW_INTERFACE_KEY = 'ConCreatedByViewRoute';
const ConCreatedByView = lazy(() => import('./pages/con/created_by/view/index'));

routes.push({
  path: 'con/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_CON_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <ConCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_CON_PROS_VIEW_INTERFACE_KEY = 'ConProsViewRoute';
const ConProsView = lazy(() => import('./pages/con/pros/view/index'));

routes.push({
  path: 'con/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_CON_PROS_VIEW_INTERFACE_KEY})`}>
        <ConProsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_CON_VOTES_VIEW_INTERFACE_KEY = 'ConVotesViewRoute';
const ConVotesView = lazy(() => import('./pages/con/votes/view/index'));

routes.push({
  path: 'con/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_CON_VOTES_VIEW_INTERFACE_KEY})`}>
        <ConVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_COUNTY_CITIES_VIEW_INTERFACE_KEY = 'CountyCitiesViewRoute';
const CountyCitiesView = lazy(() => import('./pages/county/cities/view/index'));

routes.push({
  path: 'county/cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_COUNTY_CITIES_VIEW_INTERFACE_KEY})`}>
        <CountyCitiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DEBATE_COMMENTS_VIEW_INTERFACE_KEY = 'DebateCommentsViewRoute';
const DebateCommentsView = lazy(() => import('./pages/debate/comments/view/index'));

routes.push({
  path: 'debate/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DEBATE_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <DebateCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DEBATE_CONS_VIEW_INTERFACE_KEY = 'DebateConsViewRoute';
const DebateConsView = lazy(() => import('./pages/debate/cons/view/index'));

routes.push({
  path: 'debate/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DEBATE_CONS_VIEW_INTERFACE_KEY})`}>
        <DebateConsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DEBATE_CREATED_BY_VIEW_INTERFACE_KEY = 'DebateCreatedByViewRoute';
const DebateCreatedByView = lazy(() => import('./pages/debate/created_by/view/index'));

routes.push({
  path: 'debate/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DEBATE_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <DebateCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DEBATE_DEBATE_VOTE_VIEW_INTERFACE_KEY = 'DebateDebateVoteViewRoute';
const DebateDebateVoteView = lazy(() => import('./pages/debate/debate_vote/view/index'));

routes.push({
  path: 'debate/debate_vote/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DEBATE_DEBATE_VOTE_VIEW_INTERFACE_KEY})`}>
        <DebateDebateVoteView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DEBATE_ISSUE_VIEW_INTERFACE_KEY = 'DebateIssueViewRoute';
const DebateIssueView = lazy(() => import('./pages/debate/issue/view/index'));

routes.push({
  path: 'debate/issue/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DEBATE_ISSUE_VIEW_INTERFACE_KEY})`}>
        <DebateIssueView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DEBATE_PROS_VIEW_INTERFACE_KEY = 'DebateProsViewRoute';
const DebateProsView = lazy(() => import('./pages/debate/pros/view/index'));

routes.push({
  path: 'debate/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DEBATE_PROS_VIEW_INTERFACE_KEY})`}>
        <DebateProsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_ATTACHMENTS_VIEW_INTERFACE_KEY = 'IssueAttachmentsViewRoute';
const IssueAttachmentsView = lazy(() => import('./pages/issue/attachments/view/index'));

routes.push({
  path: 'issue/attachments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_ATTACHMENTS_VIEW_INTERFACE_KEY})`}>
        <IssueAttachmentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_CATEGORIES_VIEW_INTERFACE_KEY = 'IssueCategoriesViewRoute';
const IssueCategoriesView = lazy(() => import('./pages/issue/categories/view/index'));

routes.push({
  path: 'issue/categories/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_CATEGORIES_VIEW_INTERFACE_KEY})`}>
        <IssueCategoriesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_CITY_VIEW_INTERFACE_KEY = 'IssueCityViewRoute';
const IssueCityView = lazy(() => import('./pages/issue/city/view/index'));

routes.push({
  path: 'issue/city/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_CITY_VIEW_INTERFACE_KEY})`}>
        <IssueCityView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_COMMENTS_VIEW_INTERFACE_KEY = 'IssueCommentsViewRoute';
const IssueCommentsView = lazy(() => import('./pages/issue/comments/view/index'));

routes.push({
  path: 'issue/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <IssueCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_COUNTY_VIEW_INTERFACE_KEY = 'IssueCountyViewRoute';
const IssueCountyView = lazy(() => import('./pages/issue/county/view/index'));

routes.push({
  path: 'issue/county/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_COUNTY_VIEW_INTERFACE_KEY})`}>
        <IssueCountyView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_CREATED_BY_VIEW_INTERFACE_KEY = 'IssueCreatedByViewRoute';
const IssueCreatedByView = lazy(() => import('./pages/issue/created_by/view/index'));

routes.push({
  path: 'issue/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <IssueCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_DEBATES_VIEW_INTERFACE_KEY = 'IssueDebatesViewRoute';
const IssueDebatesView = lazy(() => import('./pages/issue/debates/view/index'));

routes.push({
  path: 'issue/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_DEBATES_VIEW_INTERFACE_KEY})`}>
        <IssueDebatesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_DISTRICT_VIEW_INTERFACE_KEY = 'IssueDistrictViewRoute';
const IssueDistrictView = lazy(() => import('./pages/issue/district/view/index'));

routes.push({
  path: 'issue/district/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_DISTRICT_VIEW_INTERFACE_KEY})`}>
        <IssueDistrictView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_ISSUE_TYPE_VIEW_INTERFACE_KEY = 'IssueIssueTypeViewRoute';
const IssueIssueTypeView = lazy(() => import('./pages/issue/issue_type/view/index'));

routes.push({
  path: 'issue/issue_type/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_ISSUE_TYPE_VIEW_INTERFACE_KEY})`}>
        <IssueIssueTypeView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_OWNER_VIEW_INTERFACE_KEY = 'IssueOwnerViewRoute';
const IssueOwnerView = lazy(() => import('./pages/issue/owner/view/index'));

routes.push({
  path: 'issue/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_OWNER_VIEW_INTERFACE_KEY})`}>
        <IssueOwnerView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_CATEGORY_OWNER_VIEW_INTERFACE_KEY = 'IssueCategoryOwnerViewRoute';
const IssueCategoryOwnerView = lazy(() => import('./pages/issue_category/owner/view/index'));

routes.push({
  path: 'issue_category/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_CATEGORY_OWNER_VIEW_INTERFACE_KEY})`}>
        <IssueCategoryOwnerView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ISSUE_CATEGORY_SUBCATEGORIES_VIEW_INTERFACE_KEY = 'IssueCategorySubcategoriesViewRoute';
const IssueCategorySubcategoriesView = lazy(() => import('./pages/issue_category/subcategories/view/index'));

routes.push({
  path: 'issue_category/subcategories/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ISSUE_CATEGORY_SUBCATEGORIES_VIEW_INTERFACE_KEY})`}>
        <IssueCategorySubcategoriesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_PRO_COMMENTS_VIEW_INTERFACE_KEY = 'ProCommentsViewRoute';
const ProCommentsView = lazy(() => import('./pages/pro/comments/view/index'));

routes.push({
  path: 'pro/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_PRO_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <ProCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_PRO_CONS_VIEW_INTERFACE_KEY = 'ProConsViewRoute';
const ProConsView = lazy(() => import('./pages/pro/cons/view/index'));

routes.push({
  path: 'pro/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_PRO_CONS_VIEW_INTERFACE_KEY})`}>
        <ProConsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_PRO_CREATED_BY_VIEW_INTERFACE_KEY = 'ProCreatedByViewRoute';
const ProCreatedByView = lazy(() => import('./pages/pro/created_by/view/index'));

routes.push({
  path: 'pro/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_PRO_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <ProCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_PRO_PROS_VIEW_INTERFACE_KEY = 'ProProsViewRoute';
const ProProsView = lazy(() => import('./pages/pro/pros/view/index'));

routes.push({
  path: 'pro/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_PRO_PROS_VIEW_INTERFACE_KEY})`}>
        <ProProsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_PRO_VOTES_VIEW_INTERFACE_KEY = 'ProVotesViewRoute';
const ProVotesView = lazy(() => import('./pages/pro/votes/view/index'));

routes.push({
  path: 'pro/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_PRO_VOTES_VIEW_INTERFACE_KEY})`}>
        <ProVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_SIMPLE_VOTE_USER_VIEW_INTERFACE_KEY = 'SimpleVoteUserViewRoute';
const SimpleVoteUserView = lazy(() => import('./pages/simple_vote/user/view/index'));

routes.push({
  path: 'simple_vote/user/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_SIMPLE_VOTE_USER_VIEW_INTERFACE_KEY})`}>
        <SimpleVoteUserView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_ACTIVITY_CITIES_VIEW_INTERFACE_KEY = 'UserActivityCitiesViewRoute';
const UserActivityCitiesView = lazy(() => import('./pages/user/activity_cities/view/index'));

routes.push({
  path: 'user/activity_cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_ACTIVITY_CITIES_VIEW_INTERFACE_KEY})`}>
        <UserActivityCitiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_ACTIVITY_COUNTIES_VIEW_INTERFACE_KEY = 'UserActivityCountiesViewRoute';
const UserActivityCountiesView = lazy(() => import('./pages/user/activity_counties/view/index'));

routes.push({
  path: 'user/activity_counties/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_ACTIVITY_COUNTIES_VIEW_INTERFACE_KEY})`}>
        <UserActivityCountiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_ACTIVITY_DISTRICTS_VIEW_INTERFACE_KEY = 'UserActivityDistrictsViewRoute';
const UserActivityDistrictsView = lazy(() => import('./pages/user/activity_districts/view/index'));

routes.push({
  path: 'user/activity_districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_ACTIVITY_DISTRICTS_VIEW_INTERFACE_KEY})`}>
        <UserActivityDistrictsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_RESIDENT_CITY_VIEW_INTERFACE_KEY = 'UserResidentCityViewRoute';
const UserResidentCityView = lazy(() => import('./pages/user/resident_city/view/index'));

routes.push({
  path: 'user/resident_city/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_RESIDENT_CITY_VIEW_INTERFACE_KEY})`}>
        <UserResidentCityView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_RESIDENT_COUNTY_VIEW_INTERFACE_KEY = 'UserResidentCountyViewRoute';
const UserResidentCountyView = lazy(() => import('./pages/user/resident_county/view/index'));

routes.push({
  path: 'user/resident_county/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_RESIDENT_COUNTY_VIEW_INTERFACE_KEY})`}>
        <UserResidentCountyView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_RESIDENT_DISTRICT_VIEW_INTERFACE_KEY = 'UserResidentDistrictViewRoute';
const UserResidentDistrictView = lazy(() => import('./pages/user/resident_district/view/index'));

routes.push({
  path: 'user/resident_district/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_RESIDENT_DISTRICT_VIEW_INTERFACE_KEY})`}>
        <UserResidentDistrictView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_USER_VOTES_VIEW_INTERFACE_KEY = 'UserVotesViewRoute';
const UserVotesView = lazy(() => import('./pages/user/votes/view/index'));

routes.push({
  path: 'user/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_USER_VOTES_VIEW_INTERFACE_KEY})`}>
        <UserVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_VOTE_DEFINITION_VOTE_ENTRIES_VIEW_INTERFACE_KEY = 'VoteDefinitionVoteEntriesViewRoute';
const VoteDefinitionVoteEntriesView = lazy(() => import('./pages/vote_definition/vote_entries/view/index'));

routes.push({
  path: 'vote_definition/vote_entries/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_VOTE_DEFINITION_VOTE_ENTRIES_VIEW_INTERFACE_KEY})`}>
        <VoteDefinitionVoteEntriesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_VOTE_ENTRY_USER_VIEW_INTERFACE_KEY = 'VoteEntryUserViewRoute';
const VoteEntryUserView = lazy(() => import('./pages/vote_entry/user/view/index'));

routes.push({
  path: 'vote_entry/user/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_VOTE_ENTRY_USER_VIEW_INTERFACE_KEY})`}>
        <VoteEntryUserView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_VOTE_ENTRY_VOTE_DEFINITION_VIEW_INTERFACE_KEY = 'VoteEntryVoteDefinitionViewRoute';
const VoteEntryVoteDefinitionView = lazy(() => import('./pages/vote_entry/vote_definition/view/index'));

routes.push({
  path: 'vote_entry/vote_definition/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_VOTE_ENTRY_VOTE_DEFINITION_VIEW_INTERFACE_KEY})`}>
        <VoteEntryVoteDefinitionView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_CATEGORIES_TABLE_INTERFACE_KEY = 'AdminAdminCategoriesTableRoute';
const AdminAdminCategoriesTable = lazy(() => import('./pages/admin/admin/categories/table/index'));

routes.push({
  path: 'admin/admin/categories/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_CATEGORIES_TABLE_INTERFACE_KEY})`}>
        <AdminAdminCategoriesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_CATEGORIES_VIEW_INTERFACE_KEY = 'AdminAdminCategoriesViewRoute';
const AdminAdminCategoriesView = lazy(() => import('./pages/admin/admin/categories/view/index'));

routes.push({
  path: 'admin/admin/categories/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_CATEGORIES_VIEW_INTERFACE_KEY})`}>
        <AdminAdminCategoriesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_COUNTIES_TABLE_INTERFACE_KEY = 'AdminAdminCountiesTableRoute';
const AdminAdminCountiesTable = lazy(() => import('./pages/admin/admin/counties/table/index'));

routes.push({
  path: 'admin/admin/counties/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_COUNTIES_TABLE_INTERFACE_KEY})`}>
        <AdminAdminCountiesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_COUNTIES_VIEW_INTERFACE_KEY = 'AdminAdminCountiesViewRoute';
const AdminAdminCountiesView = lazy(() => import('./pages/admin/admin/counties/view/index'));

routes.push({
  path: 'admin/admin/counties/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_COUNTIES_VIEW_INTERFACE_KEY})`}>
        <AdminAdminCountiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_DASHBOARD_INTERFACE_KEY = 'DashboardRoute';
const DashboardRoute = lazy(() => import('./pages/admin/admin/dashboardhome/index'));

routes.push({
  path: '',
  exact: true,
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_DASHBOARD_INTERFACE_KEY})`}>
        <DashboardRoute />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_DASHBOARDHOME_VIEW_INTERFACE_KEY = 'AdminAdminDashboardhomeViewRoute';
const AdminAdminDashboardhomeView = lazy(() => import('./pages/admin/admin/dashboardhome/view/index'));

routes.push({
  path: 'admin/admin/dashboardhome/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_DASHBOARDHOME_VIEW_INTERFACE_KEY})`}>
        <AdminAdminDashboardhomeView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_DEBATES_TABLE_INTERFACE_KEY = 'AdminAdminDebatesTableRoute';
const AdminAdminDebatesTable = lazy(() => import('./pages/admin/admin/debates/table/index'));

routes.push({
  path: 'admin/admin/debates/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_DEBATES_TABLE_INTERFACE_KEY})`}>
        <AdminAdminDebatesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_DEBATES_VIEW_INTERFACE_KEY = 'AdminAdminDebatesViewRoute';
const AdminAdminDebatesView = lazy(() => import('./pages/admin/admin/debates/view/index'));

routes.push({
  path: 'admin/admin/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_DEBATES_VIEW_INTERFACE_KEY})`}>
        <AdminAdminDebatesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_ISSUE_TYPES_TABLE_INTERFACE_KEY = 'AdminAdminIssueTypesTableRoute';
const AdminAdminIssueTypesTable = lazy(() => import('./pages/admin/admin/issue_types/table/index'));

routes.push({
  path: 'admin/admin/issue_types/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_ISSUE_TYPES_TABLE_INTERFACE_KEY})`}>
        <AdminAdminIssueTypesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_ISSUE_TYPES_VIEW_INTERFACE_KEY = 'AdminAdminIssueTypesViewRoute';
const AdminAdminIssueTypesView = lazy(() => import('./pages/admin/admin/issue_types/view/index'));

routes.push({
  path: 'admin/admin/issue_types/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_ISSUE_TYPES_VIEW_INTERFACE_KEY})`}>
        <AdminAdminIssueTypesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_ISSUES_TABLE_INTERFACE_KEY = 'AdminAdminIssuesTableRoute';
const AdminAdminIssuesTable = lazy(() => import('./pages/admin/admin/issues/table/index'));

routes.push({
  path: 'admin/admin/issues/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_ISSUES_TABLE_INTERFACE_KEY})`}>
        <AdminAdminIssuesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_ISSUES_VIEW_INTERFACE_KEY = 'AdminAdminIssuesViewRoute';
const AdminAdminIssuesView = lazy(() => import('./pages/admin/admin/issues/view/index'));

routes.push({
  path: 'admin/admin/issues/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_ISSUES_VIEW_INTERFACE_KEY})`}>
        <AdminAdminIssuesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_USERS_TABLE_INTERFACE_KEY = 'AdminAdminUsersTableRoute';
const AdminAdminUsersTable = lazy(() => import('./pages/admin/admin/users/table/index'));

routes.push({
  path: 'admin/admin/users/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_USERS_TABLE_INTERFACE_KEY})`}>
        <AdminAdminUsersTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_USERS_VIEW_INTERFACE_KEY = 'AdminAdminUsersViewRoute';
const AdminAdminUsersView = lazy(() => import('./pages/admin/admin/users/view/index'));

routes.push({
  path: 'admin/admin/users/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_USERS_VIEW_INTERFACE_KEY})`}>
        <AdminAdminUsersView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_VOTE_DEFINITIONS_TABLE_INTERFACE_KEY = 'AdminAdminVoteDefinitionsTableRoute';
const AdminAdminVoteDefinitionsTable = lazy(() => import('./pages/admin/admin/vote_definitions/table/index'));

routes.push({
  path: 'admin/admin/vote_definitions/table',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_VOTE_DEFINITIONS_TABLE_INTERFACE_KEY})`}>
        <AdminAdminVoteDefinitionsTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ADMIN_VOTE_DEFINITIONS_VIEW_INTERFACE_KEY = 'AdminAdminVoteDefinitionsViewRoute';
const AdminAdminVoteDefinitionsView = lazy(() => import('./pages/admin/admin/vote_definitions/view/index'));

routes.push({
  path: 'admin/admin/vote_definitions/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ADMIN_VOTE_DEFINITIONS_VIEW_INTERFACE_KEY})`}>
        <AdminAdminVoteDefinitionsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CITY_DISTRICTS_VIEW_INTERFACE_KEY = 'AdminCityDistrictsViewRoute';
const AdminCityDistrictsView = lazy(() => import('./pages/admin/city/districts/view/index'));

routes.push({
  path: 'admin/city/districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CITY_DISTRICTS_VIEW_INTERFACE_KEY})`}>
        <AdminCityDistrictsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_COMMENT_CREATED_BY_VIEW_INTERFACE_KEY = 'AdminCommentCreatedByViewRoute';
const AdminCommentCreatedByView = lazy(() => import('./pages/admin/comment/created_by/view/index'));

routes.push({
  path: 'admin/comment/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_COMMENT_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <AdminCommentCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_COMMENT_VOTES_TABLE_INTERFACE_KEY = 'AdminCommentVotesTableRoute';
const AdminCommentVotesTable = lazy(() => import('./pages/admin/comment/votes/table/index'));

routes.push({
  path: 'admin/comment/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_COMMENT_VOTES_TABLE_INTERFACE_KEY})`}>
        <AdminCommentVotesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_COMMENT_VOTES_VIEW_INTERFACE_KEY = 'AdminCommentVotesViewRoute';
const AdminCommentVotesView = lazy(() => import('./pages/admin/comment/votes/view/index'));

routes.push({
  path: 'admin/comment/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_COMMENT_VOTES_VIEW_INTERFACE_KEY})`}>
        <AdminCommentVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CON_COMMENTS_VIEW_INTERFACE_KEY = 'AdminConCommentsViewRoute';
const AdminConCommentsView = lazy(() => import('./pages/admin/con/comments/view/index'));

routes.push({
  path: 'admin/con/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CON_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <AdminConCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CON_CONS_VIEW_INTERFACE_KEY = 'AdminConConsViewRoute';
const AdminConConsView = lazy(() => import('./pages/admin/con/cons/view/index'));

routes.push({
  path: 'admin/con/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CON_CONS_VIEW_INTERFACE_KEY})`}>
        <AdminConConsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CON_CREATED_BY_VIEW_INTERFACE_KEY = 'AdminConCreatedByViewRoute';
const AdminConCreatedByView = lazy(() => import('./pages/admin/con/created_by/view/index'));

routes.push({
  path: 'admin/con/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CON_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <AdminConCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CON_PROS_VIEW_INTERFACE_KEY = 'AdminConProsViewRoute';
const AdminConProsView = lazy(() => import('./pages/admin/con/pros/view/index'));

routes.push({
  path: 'admin/con/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CON_PROS_VIEW_INTERFACE_KEY})`}>
        <AdminConProsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CON_VOTES_TABLE_INTERFACE_KEY = 'AdminConVotesTableRoute';
const AdminConVotesTable = lazy(() => import('./pages/admin/con/votes/table/index'));

routes.push({
  path: 'admin/con/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CON_VOTES_TABLE_INTERFACE_KEY})`}>
        <AdminConVotesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CON_VOTES_VIEW_INTERFACE_KEY = 'AdminConVotesViewRoute';
const AdminConVotesView = lazy(() => import('./pages/admin/con/votes/view/index'));

routes.push({
  path: 'admin/con/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CON_VOTES_VIEW_INTERFACE_KEY})`}>
        <AdminConVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_COUNTY_CITIES_VIEW_INTERFACE_KEY = 'AdminCountyCitiesViewRoute';
const AdminCountyCitiesView = lazy(() => import('./pages/admin/county/cities/view/index'));

routes.push({
  path: 'admin/county/cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_COUNTY_CITIES_VIEW_INTERFACE_KEY})`}>
        <AdminCountyCitiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CREATE_ISSUE_INPUT_CITY_VIEW_INTERFACE_KEY = 'AdminCreateIssueInputCityViewRoute';
const AdminCreateIssueInputCityView = lazy(() => import('./pages/admin/create_issue_input/city/view/index'));

routes.push({
  path: 'admin/create_issue_input/city/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CREATE_ISSUE_INPUT_CITY_VIEW_INTERFACE_KEY})`}>
        <AdminCreateIssueInputCityView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CREATE_ISSUE_INPUT_COUNTY_VIEW_INTERFACE_KEY = 'AdminCreateIssueInputCountyViewRoute';
const AdminCreateIssueInputCountyView = lazy(() => import('./pages/admin/create_issue_input/county/view/index'));

routes.push({
  path: 'admin/create_issue_input/county/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CREATE_ISSUE_INPUT_COUNTY_VIEW_INTERFACE_KEY})`}>
        <AdminCreateIssueInputCountyView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CREATE_ISSUE_INPUT_DISTRICT_VIEW_INTERFACE_KEY = 'AdminCreateIssueInputDistrictViewRoute';
const AdminCreateIssueInputDistrictView = lazy(() => import('./pages/admin/create_issue_input/district/view/index'));

routes.push({
  path: 'admin/create_issue_input/district/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CREATE_ISSUE_INPUT_DISTRICT_VIEW_INTERFACE_KEY})`}>
        <AdminCreateIssueInputDistrictView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_CREATE_ISSUE_INPUT_ISSUE_TYPE_VIEW_INTERFACE_KEY = 'AdminCreateIssueInputIssueTypeViewRoute';
const AdminCreateIssueInputIssueTypeView = lazy(() => import('./pages/admin/create_issue_input/issue_type/view/index'));

routes.push({
  path: 'admin/create_issue_input/issue_type/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_CREATE_ISSUE_INPUT_ISSUE_TYPE_VIEW_INTERFACE_KEY})`}>
        <AdminCreateIssueInputIssueTypeView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DASHBOARD_CREATEISSUE_OUTPUT_INTERFACE_KEY = 'AdminDashboardCreateissueOutputRoute';
const AdminDashboardCreateissueOutput = lazy(() => import('./pages/admin/dashboard/createissue/output/index'));

routes.push({
  path: 'admin/dashboard/createissue/output/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DASHBOARD_CREATEISSUE_OUTPUT_INTERFACE_KEY})`}>
        <AdminDashboardCreateissueOutput />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DASHBOARD_CREATEUSER_OUTPUT_INTERFACE_KEY = 'AdminDashboardCreateuserOutputRoute';
const AdminDashboardCreateuserOutput = lazy(() => import('./pages/admin/dashboard/createuser/output/index'));

routes.push({
  path: 'admin/dashboard/createuser/output/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DASHBOARD_CREATEUSER_OUTPUT_INTERFACE_KEY})`}>
        <AdminDashboardCreateuserOutput />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DASHBOARD_DEBATES_VIEW_INTERFACE_KEY = 'AdminDashboardDebatesViewRoute';
const AdminDashboardDebatesView = lazy(() => import('./pages/admin/dashboard/debates/view/index'));

routes.push({
  path: 'admin/dashboard/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DASHBOARD_DEBATES_VIEW_INTERFACE_KEY})`}>
        <AdminDashboardDebatesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DASHBOARD_ISSUES_VIEW_INTERFACE_KEY = 'AdminDashboardIssuesViewRoute';
const AdminDashboardIssuesView = lazy(() => import('./pages/admin/dashboard/issues/view/index'));

routes.push({
  path: 'admin/dashboard/issues/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DASHBOARD_ISSUES_VIEW_INTERFACE_KEY})`}>
        <AdminDashboardIssuesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_CLOSEDEBATE_OUTPUT_INTERFACE_KEY = 'AdminDebateClosedebateOutputRoute';
const AdminDebateClosedebateOutput = lazy(() => import('./pages/admin/debate/closedebate/output/index'));

routes.push({
  path: 'admin/debate/closedebate/output/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_CLOSEDEBATE_OUTPUT_INTERFACE_KEY})`}>
        <AdminDebateClosedebateOutput />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_COMMENTS_VIEW_INTERFACE_KEY = 'AdminDebateCommentsViewRoute';
const AdminDebateCommentsView = lazy(() => import('./pages/admin/debate/comments/view/index'));

routes.push({
  path: 'admin/debate/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <AdminDebateCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_CONS_VIEW_INTERFACE_KEY = 'AdminDebateConsViewRoute';
const AdminDebateConsView = lazy(() => import('./pages/admin/debate/cons/view/index'));

routes.push({
  path: 'admin/debate/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_CONS_VIEW_INTERFACE_KEY})`}>
        <AdminDebateConsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_CREATED_BY_VIEW_INTERFACE_KEY = 'AdminDebateCreatedByViewRoute';
const AdminDebateCreatedByView = lazy(() => import('./pages/admin/debate/created_by/view/index'));

routes.push({
  path: 'admin/debate/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <AdminDebateCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_ISSUE_VIEW_INTERFACE_KEY = 'AdminDebateIssueViewRoute';
const AdminDebateIssueView = lazy(() => import('./pages/admin/debate/issue/view/index'));

routes.push({
  path: 'admin/debate/issue/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_ISSUE_VIEW_INTERFACE_KEY})`}>
        <AdminDebateIssueView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_PROS_VIEW_INTERFACE_KEY = 'AdminDebateProsViewRoute';
const AdminDebateProsView = lazy(() => import('./pages/admin/debate/pros/view/index'));

routes.push({
  path: 'admin/debate/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_PROS_VIEW_INTERFACE_KEY})`}>
        <AdminDebateProsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_DEBATE_VOTE_DEFINITION_VIEW_INTERFACE_KEY = 'AdminDebateVoteDefinitionViewRoute';
const AdminDebateVoteDefinitionView = lazy(() => import('./pages/admin/debate/vote_definition/view/index'));

routes.push({
  path: 'admin/debate/vote_definition/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_DEBATE_VOTE_DEFINITION_VIEW_INTERFACE_KEY})`}>
        <AdminDebateVoteDefinitionView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_ATTACHMENTS_VIEW_INTERFACE_KEY = 'AdminIssueAttachmentsViewRoute';
const AdminIssueAttachmentsView = lazy(() => import('./pages/admin/issue/attachments/view/index'));

routes.push({
  path: 'admin/issue/attachments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_ATTACHMENTS_VIEW_INTERFACE_KEY})`}>
        <AdminIssueAttachmentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_CATEGORIES_VIEW_INTERFACE_KEY = 'AdminIssueCategoriesViewRoute';
const AdminIssueCategoriesView = lazy(() => import('./pages/admin/issue/categories/view/index'));

routes.push({
  path: 'admin/issue/categories/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_CATEGORIES_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCategoriesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_CITY_VIEW_INTERFACE_KEY = 'AdminIssueCityViewRoute';
const AdminIssueCityView = lazy(() => import('./pages/admin/issue/city/view/index'));

routes.push({
  path: 'admin/issue/city/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_CITY_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCityView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_COMMENTS_VIEW_INTERFACE_KEY = 'AdminIssueCommentsViewRoute';
const AdminIssueCommentsView = lazy(() => import('./pages/admin/issue/comments/view/index'));

routes.push({
  path: 'admin/issue/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_COUNTY_VIEW_INTERFACE_KEY = 'AdminIssueCountyViewRoute';
const AdminIssueCountyView = lazy(() => import('./pages/admin/issue/county/view/index'));

routes.push({
  path: 'admin/issue/county/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_COUNTY_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCountyView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_CREATEDEBATE_OUTPUT_INTERFACE_KEY = 'AdminIssueCreatedebateOutputRoute';
const AdminIssueCreatedebateOutput = lazy(() => import('./pages/admin/issue/createdebate/output/index'));

routes.push({
  path: 'admin/issue/createdebate/output/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_CREATEDEBATE_OUTPUT_INTERFACE_KEY})`}>
        <AdminIssueCreatedebateOutput />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_CREATED_BY_VIEW_INTERFACE_KEY = 'AdminIssueCreatedByViewRoute';
const AdminIssueCreatedByView = lazy(() => import('./pages/admin/issue/created_by/view/index'));

routes.push({
  path: 'admin/issue/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_DEBATES_VIEW_INTERFACE_KEY = 'AdminIssueDebatesViewRoute';
const AdminIssueDebatesView = lazy(() => import('./pages/admin/issue/debates/view/index'));

routes.push({
  path: 'admin/issue/debates/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_DEBATES_VIEW_INTERFACE_KEY})`}>
        <AdminIssueDebatesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_DISTRICT_VIEW_INTERFACE_KEY = 'AdminIssueDistrictViewRoute';
const AdminIssueDistrictView = lazy(() => import('./pages/admin/issue/district/view/index'));

routes.push({
  path: 'admin/issue/district/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_DISTRICT_VIEW_INTERFACE_KEY})`}>
        <AdminIssueDistrictView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_ISSUE_TYPE_VIEW_INTERFACE_KEY = 'AdminIssueIssueTypeViewRoute';
const AdminIssueIssueTypeView = lazy(() => import('./pages/admin/issue/issue_type/view/index'));

routes.push({
  path: 'admin/issue/issue_type/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_ISSUE_TYPE_VIEW_INTERFACE_KEY})`}>
        <AdminIssueIssueTypeView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_OWNER_VIEW_INTERFACE_KEY = 'AdminIssueOwnerViewRoute';
const AdminIssueOwnerView = lazy(() => import('./pages/admin/issue/owner/view/index'));

routes.push({
  path: 'admin/issue/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_OWNER_VIEW_INTERFACE_KEY})`}>
        <AdminIssueOwnerView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_CATEGORY_OWNER_VIEW_INTERFACE_KEY = 'AdminIssueCategoryOwnerViewRoute';
const AdminIssueCategoryOwnerView = lazy(() => import('./pages/admin/issue_category/owner/view/index'));

routes.push({
  path: 'admin/issue_category/owner/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_CATEGORY_OWNER_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCategoryOwnerView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_ISSUE_CATEGORY_SUBCATEGORIES_VIEW_INTERFACE_KEY = 'AdminIssueCategorySubcategoriesViewRoute';
const AdminIssueCategorySubcategoriesView = lazy(() => import('./pages/admin/issue_category/subcategories/view/index'));

routes.push({
  path: 'admin/issue_category/subcategories/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_ISSUE_CATEGORY_SUBCATEGORIES_VIEW_INTERFACE_KEY})`}>
        <AdminIssueCategorySubcategoriesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_PRO_COMMENTS_VIEW_INTERFACE_KEY = 'AdminProCommentsViewRoute';
const AdminProCommentsView = lazy(() => import('./pages/admin/pro/comments/view/index'));

routes.push({
  path: 'admin/pro/comments/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_PRO_COMMENTS_VIEW_INTERFACE_KEY})`}>
        <AdminProCommentsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_PRO_CONS_VIEW_INTERFACE_KEY = 'AdminProConsViewRoute';
const AdminProConsView = lazy(() => import('./pages/admin/pro/cons/view/index'));

routes.push({
  path: 'admin/pro/cons/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_PRO_CONS_VIEW_INTERFACE_KEY})`}>
        <AdminProConsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_PRO_CREATED_BY_VIEW_INTERFACE_KEY = 'AdminProCreatedByViewRoute';
const AdminProCreatedByView = lazy(() => import('./pages/admin/pro/created_by/view/index'));

routes.push({
  path: 'admin/pro/created_by/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_PRO_CREATED_BY_VIEW_INTERFACE_KEY})`}>
        <AdminProCreatedByView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_PRO_PROS_VIEW_INTERFACE_KEY = 'AdminProProsViewRoute';
const AdminProProsView = lazy(() => import('./pages/admin/pro/pros/view/index'));

routes.push({
  path: 'admin/pro/pros/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_PRO_PROS_VIEW_INTERFACE_KEY})`}>
        <AdminProProsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_PRO_VOTES_TABLE_INTERFACE_KEY = 'AdminProVotesTableRoute';
const AdminProVotesTable = lazy(() => import('./pages/admin/pro/votes/table/index'));

routes.push({
  path: 'admin/pro/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_PRO_VOTES_TABLE_INTERFACE_KEY})`}>
        <AdminProVotesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_PRO_VOTES_VIEW_INTERFACE_KEY = 'AdminProVotesViewRoute';
const AdminProVotesView = lazy(() => import('./pages/admin/pro/votes/view/index'));

routes.push({
  path: 'admin/pro/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_PRO_VOTES_VIEW_INTERFACE_KEY})`}>
        <AdminProVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_SIMPLE_VOTE_USER_VIEW_INTERFACE_KEY = 'AdminSimpleVoteUserViewRoute';
const AdminSimpleVoteUserView = lazy(() => import('./pages/admin/simple_vote/user/view/index'));

routes.push({
  path: 'admin/simple_vote/user/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_SIMPLE_VOTE_USER_VIEW_INTERFACE_KEY})`}>
        <AdminSimpleVoteUserView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_ACTIVITY_CITIES_VIEW_INTERFACE_KEY = 'AdminUserActivityCitiesViewRoute';
const AdminUserActivityCitiesView = lazy(() => import('./pages/admin/user/activity_cities/view/index'));

routes.push({
  path: 'admin/user/activity_cities/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_ACTIVITY_CITIES_VIEW_INTERFACE_KEY})`}>
        <AdminUserActivityCitiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_ACTIVITY_COUNTIES_VIEW_INTERFACE_KEY = 'AdminUserActivityCountiesViewRoute';
const AdminUserActivityCountiesView = lazy(() => import('./pages/admin/user/activity_counties/view/index'));

routes.push({
  path: 'admin/user/activity_counties/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_ACTIVITY_COUNTIES_VIEW_INTERFACE_KEY})`}>
        <AdminUserActivityCountiesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_ACTIVITY_DISTRICTS_VIEW_INTERFACE_KEY = 'AdminUserActivityDistrictsViewRoute';
const AdminUserActivityDistrictsView = lazy(() => import('./pages/admin/user/activity_districts/view/index'));

routes.push({
  path: 'admin/user/activity_districts/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_ACTIVITY_DISTRICTS_VIEW_INTERFACE_KEY})`}>
        <AdminUserActivityDistrictsView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_RESIDENT_CITY_VIEW_INTERFACE_KEY = 'AdminUserResidentCityViewRoute';
const AdminUserResidentCityView = lazy(() => import('./pages/admin/user/resident_city/view/index'));

routes.push({
  path: 'admin/user/resident_city/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_RESIDENT_CITY_VIEW_INTERFACE_KEY})`}>
        <AdminUserResidentCityView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_RESIDENT_COUNTY_VIEW_INTERFACE_KEY = 'AdminUserResidentCountyViewRoute';
const AdminUserResidentCountyView = lazy(() => import('./pages/admin/user/resident_county/view/index'));

routes.push({
  path: 'admin/user/resident_county/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_RESIDENT_COUNTY_VIEW_INTERFACE_KEY})`}>
        <AdminUserResidentCountyView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_RESIDENT_DISTRICT_VIEW_INTERFACE_KEY = 'AdminUserResidentDistrictViewRoute';
const AdminUserResidentDistrictView = lazy(() => import('./pages/admin/user/resident_district/view/index'));

routes.push({
  path: 'admin/user/resident_district/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_RESIDENT_DISTRICT_VIEW_INTERFACE_KEY})`}>
        <AdminUserResidentDistrictView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_VOTES_TABLE_INTERFACE_KEY = 'AdminUserVotesTableRoute';
const AdminUserVotesTable = lazy(() => import('./pages/admin/user/votes/table/index'));

routes.push({
  path: 'admin/user/votes/table/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_VOTES_TABLE_INTERFACE_KEY})`}>
        <AdminUserVotesTable />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_USER_VOTES_VIEW_INTERFACE_KEY = 'AdminUserVotesViewRoute';
const AdminUserVotesView = lazy(() => import('./pages/admin/user/votes/view/index'));

routes.push({
  path: 'admin/user/votes/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_USER_VOTES_VIEW_INTERFACE_KEY})`}>
        <AdminUserVotesView />
      </ComponentProxy>
    </Suspense>
  ),
});
export const ROUTE_ADMIN_VOTE_DEFINITION_DEBATE_VIEW_INTERFACE_KEY = 'AdminVoteDefinitionDebateViewRoute';
const AdminVoteDefinitionDebateView = lazy(() => import('./pages/admin/vote_definition/debate/view/index'));

routes.push({
  path: 'admin/vote_definition/debate/view/:signedIdentifier',
  element: (
    <Suspense>
      <ComponentProxy filter={`(${OBJECTCLASS}=${ROUTE_ADMIN_VOTE_DEFINITION_DEBATE_VIEW_INTERFACE_KEY})`}>
        <AdminVoteDefinitionDebateView />
      </ComponentProxy>
    </Suspense>
  ),
});

export { routes };
