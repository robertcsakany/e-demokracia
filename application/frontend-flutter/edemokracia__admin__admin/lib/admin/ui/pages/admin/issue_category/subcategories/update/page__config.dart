part of admin.ui.pages.admin.issue_category.subcategories.update;

class AdminIssueCategorySubcategoriesUpdateConfig {
  AdminIssueCategorySubcategoriesUpdateAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminIssueCategorySubcategoriesUpdateAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminIssueCategorySubcategoriesUpdateAdminIssueCategoryOwnerTableConfig ownerTableConfig =
      AdminIssueCategorySubcategoriesUpdateAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCategorySubcategoriesUpdatePostTitleChanged postTitleChanged;
  AdminIssueCategorySubcategoriesUpdatePostDescriptionChanged postDescriptionChanged;
  AdminIssueCategorySubcategoriesUpdatePageBackAction backAction;
  AdminIssueCategorySubcategoriesUpdatePageExtendActions extendActions;
  AdminIssueCategorySubcategoriesUpdatePageTitleGenerator titleGenerator;
}
