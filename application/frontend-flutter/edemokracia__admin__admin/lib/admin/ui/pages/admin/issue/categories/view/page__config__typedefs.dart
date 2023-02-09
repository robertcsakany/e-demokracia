//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.categories.view;

typedef AdminIssueCategoriesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCategoriesViewPageStore pageStore,
});

typedef AdminIssueCategoriesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCategoriesViewPageStore pageStore,
  AdminIssueStore ownerStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminIssueCategoriesViewPageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategoriesViewPageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminIssueCategoriesViewPageStore pageStore,
);

typedef AdminIssueCategoriesViewPageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminIssueCategoriesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCategoriesViewPageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
