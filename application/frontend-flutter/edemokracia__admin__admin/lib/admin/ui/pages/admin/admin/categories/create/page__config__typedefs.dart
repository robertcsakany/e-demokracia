//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.categories.create;

typedef AdminAdminCategoriesCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCategoriesCreatePageStore pageStore,
});

typedef AdminAdminCategoriesCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCategoriesCreatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminAdminCategoriesCreatePostTitleChanged = Function(dynamic value,
    {AdminAdminCategoriesCreatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminAdminCategoriesCreatePostDescriptionChanged = Function(dynamic value,
    {AdminAdminCategoriesCreatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminAdminCategoriesCreateCreateCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminAdminCategoriesCreatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminAdminCategoriesCreatePageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesCreatePageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminAdminCategoriesCreatePageStore pageStore,
);

typedef AdminAdminCategoriesCreatePageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCategoriesCreatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
