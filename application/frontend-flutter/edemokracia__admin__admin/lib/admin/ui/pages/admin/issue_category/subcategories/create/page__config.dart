part of admin.ui.pages.admin.issue_category.subcategories.create;

class AdminIssueCategorySubcategoriesCreateConfig {
  AdminIssueCategorySubcategoriesCreateAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminIssueCategorySubcategoriesCreateAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminIssueCategorySubcategoriesCreateAdminIssueCategoryOwnerTableConfig ownerTableConfig =
      AdminIssueCategorySubcategoriesCreateAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCategorySubcategoriesCreatePostTitleChanged postTitleChanged;
  AdminIssueCategorySubcategoriesCreatePostDescriptionChanged postDescriptionChanged;
  AdminIssueCategorySubcategoriesCreatePageBackAction backAction;
  AdminIssueCategorySubcategoriesCreatePageExtendActions extendActions;
  AdminIssueCategorySubcategoriesCreatePageTitleGenerator titleGenerator;
}
