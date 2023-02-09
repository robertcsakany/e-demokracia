part of admin.ui.pages.admin.simple_vote.user.view;

class AdminSimpleVoteUserViewConfig {
  AdminSimpleVoteUserViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminSimpleVoteUserViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminSimpleVoteUserViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminSimpleVoteUserViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminSimpleVoteUserViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminSimpleVoteUserViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminSimpleVoteUserViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminSimpleVoteUserViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminSimpleVoteUserViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminSimpleVoteUserViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminSimpleVoteUserViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminSimpleVoteUserViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminSimpleVoteUserViewPageBackAction backAction;
  AdminSimpleVoteUserViewPageExtendActions extendActions;
  AdminSimpleVoteUserViewPageTitleGenerator titleGenerator;
}
