part of admin.ui.pages.admin.admin.categories.view;

class AdminAdminCategoriesViewConfig {
  AdminAdminCategoriesViewAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminAdminCategoriesViewAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminCategoriesViewAdminIssueCategoryOwnerTableConfig ownerTableConfig = AdminAdminCategoriesViewAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminCategoriesViewPageBackAction backAction;
  AdminAdminCategoriesViewPageExtendActions extendActions;
  AdminAdminCategoriesViewPageTitleGenerator titleGenerator;
}
