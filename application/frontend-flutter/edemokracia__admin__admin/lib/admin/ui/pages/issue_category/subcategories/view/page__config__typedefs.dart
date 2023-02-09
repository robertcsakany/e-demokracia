//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue_category.subcategories.view;

typedef IssueCategorySubcategoriesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueCategorySubcategoriesViewPageStore pageStore,
});

typedef IssueCategorySubcategoriesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueCategorySubcategoriesViewPageStore pageStore,
  IssueCategoryStore ownerStore,
  IssueCategoryStore targetStore,
});

typedef IssueCategorySubcategoriesViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueCategorySubcategoriesViewPageStore pageStore,
  IssueCategoryStore targetStore,
);
