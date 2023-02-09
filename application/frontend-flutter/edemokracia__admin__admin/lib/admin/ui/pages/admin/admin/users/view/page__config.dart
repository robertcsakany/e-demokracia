part of admin.ui.pages.admin.admin.users.view;

class AdminAdminUsersViewConfig {
  AdminAdminUsersViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminAdminUsersViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminAdminUsersViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminAdminUsersViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminAdminUsersViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminAdminUsersViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminAdminUsersViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminUsersViewPageBackAction backAction;
  AdminAdminUsersViewPageExtendActions extendActions;
  AdminAdminUsersViewPageTitleGenerator titleGenerator;
}
