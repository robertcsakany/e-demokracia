part of admin.ui.pages.admin.issue_category.owner.view;

class AdminIssueCategoryOwnerViewConfig {
  AdminIssueCategoryOwnerViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminIssueCategoryOwnerViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCategoryOwnerViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig =
      AdminIssueCategoryOwnerViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCategoryOwnerViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminIssueCategoryOwnerViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCategoryOwnerViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminIssueCategoryOwnerViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCategoryOwnerViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminIssueCategoryOwnerViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCategoryOwnerViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminIssueCategoryOwnerViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCategoryOwnerViewPageBackAction backAction;
  AdminIssueCategoryOwnerViewPageExtendActions extendActions;
  AdminIssueCategoryOwnerViewPageTitleGenerator titleGenerator;
}
