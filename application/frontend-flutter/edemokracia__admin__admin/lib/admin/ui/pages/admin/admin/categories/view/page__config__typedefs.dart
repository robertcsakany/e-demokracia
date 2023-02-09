//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.categories.view;

typedef AdminAdminCategoriesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCategoriesViewPageStore pageStore,
});

typedef AdminAdminCategoriesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCategoriesViewPageStore pageStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminAdminCategoriesViewPageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesViewPageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminAdminCategoriesViewPageStore pageStore,
);

typedef AdminAdminCategoriesViewPageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCategoriesViewPageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
