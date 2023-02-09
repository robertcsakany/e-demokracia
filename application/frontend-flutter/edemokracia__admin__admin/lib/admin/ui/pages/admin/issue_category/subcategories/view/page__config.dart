part of admin.ui.pages.admin.issue_category.subcategories.view;

class AdminIssueCategorySubcategoriesViewConfig {
  AdminIssueCategorySubcategoriesViewAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminIssueCategorySubcategoriesViewAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminIssueCategorySubcategoriesViewAdminIssueCategoryOwnerTableConfig ownerTableConfig =
      AdminIssueCategorySubcategoriesViewAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCategorySubcategoriesViewPageBackAction backAction;
  AdminIssueCategorySubcategoriesViewPageExtendActions extendActions;
  AdminIssueCategorySubcategoriesViewPageTitleGenerator titleGenerator;
}
