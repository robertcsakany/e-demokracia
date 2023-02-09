part of admin.ui.pages.admin.admin.users.update;

class AdminAdminUsersUpdateConfig {
  AdminAdminUsersUpdateAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminAdminUsersUpdateAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersUpdateAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminAdminUsersUpdateAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersUpdateAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminAdminUsersUpdateAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersUpdateAdminUserResidentCityTableConfig residentCityTableConfig = AdminAdminUsersUpdateAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersUpdateAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminAdminUsersUpdateAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminUsersUpdateAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminAdminUsersUpdateAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminUsersUpdatePostUserNameChanged postUserNameChanged;
  AdminAdminUsersUpdatePostIsAdminChanged postIsAdminChanged;
  AdminAdminUsersUpdatePostCreatedChanged postCreatedChanged;
  AdminAdminUsersUpdatePostFirstNameChanged postFirstNameChanged;
  AdminAdminUsersUpdatePostLastNameChanged postLastNameChanged;
  AdminAdminUsersUpdatePostEmailChanged postEmailChanged;
  AdminAdminUsersUpdatePostPhoneChanged postPhoneChanged;
  AdminAdminUsersUpdatePageBackAction backAction;
  AdminAdminUsersUpdatePageExtendActions extendActions;
  AdminAdminUsersUpdatePageTitleGenerator titleGenerator;
}
