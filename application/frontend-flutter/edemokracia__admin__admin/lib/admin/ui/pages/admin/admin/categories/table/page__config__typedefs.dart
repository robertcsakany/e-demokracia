//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.categories.table;

typedef AdminAdminCategoriesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCategoriesTablePageStore pageStore,
});

typedef AdminAdminCategoriesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCategoriesTablePageStore pageStore,
});

typedef AdminAdminCategoriesTablePageAdminAdminCategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesTablePageAdminAdminCategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminAdminCategoriesTablePageStore pageStore,
);

typedef AdminAdminCategoriesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCategoriesTablePageStore pageStore,
);
