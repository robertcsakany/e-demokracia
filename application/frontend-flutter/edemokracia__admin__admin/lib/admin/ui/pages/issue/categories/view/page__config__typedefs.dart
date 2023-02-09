//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue.categories.view;

typedef IssueCategoriesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueCategoriesViewPageStore pageStore,
});

typedef IssueCategoriesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueCategoriesViewPageStore pageStore,
  IssueStore ownerStore,
  IssueCategoryStore targetStore,
});

typedef IssueCategoriesViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueCategoriesViewPageStore pageStore,
  IssueCategoryStore targetStore,
);
