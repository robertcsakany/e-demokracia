//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue_category.subcategories.create;

typedef AdminIssueCategorySubcategoriesCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCategorySubcategoriesCreatePageStore pageStore,
});

typedef AdminIssueCategorySubcategoriesCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCategorySubcategoriesCreatePageStore pageStore,
  AdminIssueCategoryStore ownerStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminIssueCategorySubcategoriesCreatePostTitleChanged = Function(dynamic value,
    {AdminIssueCategorySubcategoriesCreatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminIssueCategorySubcategoriesCreatePostDescriptionChanged = Function(dynamic value,
    {AdminIssueCategorySubcategoriesCreatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminIssueCategorySubcategoriesCreatePageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategorySubcategoriesCreatePageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminIssueCategorySubcategoriesCreatePageStore pageStore,
);

typedef AdminIssueCategorySubcategoriesCreatePageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategorySubcategoriesCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCategorySubcategoriesCreatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
