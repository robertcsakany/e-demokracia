//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue_category.subcategories.view;

typedef AdminIssueCategorySubcategoriesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCategorySubcategoriesViewPageStore pageStore,
});

typedef AdminIssueCategorySubcategoriesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCategorySubcategoriesViewPageStore pageStore,
  AdminIssueCategoryStore ownerStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminIssueCategorySubcategoriesViewPageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategorySubcategoriesViewPageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminIssueCategorySubcategoriesViewPageStore pageStore,
);

typedef AdminIssueCategorySubcategoriesViewPageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategorySubcategoriesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCategorySubcategoriesViewPageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
