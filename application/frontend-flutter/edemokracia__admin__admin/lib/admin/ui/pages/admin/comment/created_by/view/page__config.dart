part of admin.ui.pages.admin.comment.created_by.view;

class AdminCommentCreatedByViewConfig {
  AdminCommentCreatedByViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminCommentCreatedByViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminCommentCreatedByViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminCommentCreatedByViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminCommentCreatedByViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminCommentCreatedByViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminCommentCreatedByViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminCommentCreatedByViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminCommentCreatedByViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminCommentCreatedByViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminCommentCreatedByViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminCommentCreatedByViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminCommentCreatedByViewPageBackAction backAction;
  AdminCommentCreatedByViewPageExtendActions extendActions;
  AdminCommentCreatedByViewPageTitleGenerator titleGenerator;
}
