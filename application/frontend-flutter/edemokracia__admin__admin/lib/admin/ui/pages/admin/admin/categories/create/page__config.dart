part of admin.ui.pages.admin.admin.categories.create;

class AdminAdminCategoriesCreateConfig {
  AdminAdminCategoriesCreateAdminIssueCategorySubcategoriesTableConfig subcategoriesTableConfig =
      AdminAdminCategoriesCreateAdminIssueCategorySubcategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminCategoriesCreateAdminIssueCategoryOwnerTableConfig ownerTableConfig = AdminAdminCategoriesCreateAdminIssueCategoryOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminCategoriesCreateCreateCallSuccess createCallSuccess;
  AdminAdminCategoriesCreatePostTitleChanged postTitleChanged;
  AdminAdminCategoriesCreatePostDescriptionChanged postDescriptionChanged;
  AdminAdminCategoriesCreatePageBackAction backAction;
  AdminAdminCategoriesCreatePageExtendActions extendActions;
  AdminAdminCategoriesCreatePageTitleGenerator titleGenerator;
}
