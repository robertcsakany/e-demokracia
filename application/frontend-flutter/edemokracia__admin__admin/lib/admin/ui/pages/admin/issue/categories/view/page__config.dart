part of admin.ui.pages.admin.issue.categories.view;

class AdminIssueCategoriesViewConfig {
  AdminIssueCategoriesViewAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminIssueCategoriesViewAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminIssueCategoriesViewAdminIssueCategoryOwnerTableConfig ownerTableConfig = AdminIssueCategoriesViewAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCategoriesViewPageBackAction backAction;
  AdminIssueCategoriesViewPageExtendActions extendActions;
  AdminIssueCategoriesViewPageTitleGenerator titleGenerator;
}
