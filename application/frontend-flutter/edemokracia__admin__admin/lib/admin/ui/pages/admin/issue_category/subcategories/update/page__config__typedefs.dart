//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue_category.subcategories.update;

typedef AdminIssueCategorySubcategoriesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCategorySubcategoriesUpdatePageStore pageStore,
});

typedef AdminIssueCategorySubcategoriesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCategorySubcategoriesUpdatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminIssueCategorySubcategoriesUpdatePostTitleChanged = Function(dynamic value,
    {AdminIssueCategorySubcategoriesUpdatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminIssueCategorySubcategoriesUpdatePostDescriptionChanged = Function(dynamic value,
    {AdminIssueCategorySubcategoriesUpdatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminIssueCategorySubcategoriesUpdatePageStore pageStore,
);

typedef AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategorySubcategoriesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCategorySubcategoriesUpdatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
