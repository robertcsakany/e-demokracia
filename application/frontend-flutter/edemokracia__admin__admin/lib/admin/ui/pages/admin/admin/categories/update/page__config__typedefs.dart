//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.categories.update;

typedef AdminAdminCategoriesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCategoriesUpdatePageStore pageStore,
});

typedef AdminAdminCategoriesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCategoriesUpdatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
});

typedef AdminAdminCategoriesUpdatePostTitleChanged = Function(dynamic value,
    {AdminAdminCategoriesUpdatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminAdminCategoriesUpdatePostDescriptionChanged = Function(dynamic value,
    {AdminAdminCategoriesUpdatePageStore pageStore, AdminIssueCategoryStore targetStore});

typedef AdminAdminCategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminAdminCategoriesUpdatePageStore pageStore,
);

typedef AdminAdminCategoriesUpdatePageAdminIssueCategoryOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminAdminCategoriesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCategoriesUpdatePageStore pageStore,
  AdminIssueCategoryStore targetStore,
);
