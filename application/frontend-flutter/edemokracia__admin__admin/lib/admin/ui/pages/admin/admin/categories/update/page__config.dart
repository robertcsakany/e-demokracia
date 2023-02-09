part of admin.ui.pages.admin.admin.categories.update;

class AdminAdminCategoriesUpdateConfig {
  AdminAdminCategoriesUpdateAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminAdminCategoriesUpdateAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminCategoriesUpdateAdminIssueCategoryOwnerTableConfig ownerTableConfig = AdminAdminCategoriesUpdateAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminCategoriesUpdatePostTitleChanged postTitleChanged;
  AdminAdminCategoriesUpdatePostDescriptionChanged postDescriptionChanged;
  AdminAdminCategoriesUpdatePageBackAction backAction;
  AdminAdminCategoriesUpdatePageExtendActions extendActions;
  AdminAdminCategoriesUpdatePageTitleGenerator titleGenerator;
}
