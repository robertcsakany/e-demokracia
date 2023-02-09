//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue_category.owner.view;

typedef IssueCategoryOwnerViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueCategoryOwnerViewPageStore pageStore,
});

typedef IssueCategoryOwnerViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueCategoryOwnerViewPageStore pageStore,
  IssueCategoryStore ownerStore,
  UserStore targetStore,
});

typedef IssueCategoryOwnerViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueCategoryOwnerViewPageStore pageStore,
  UserStore targetStore,
);
