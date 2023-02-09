//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.comments.view;

typedef AdminProCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProCommentsViewPageStore pageStore,
});

typedef AdminProCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProCommentsViewPageStore pageStore,
  AdminProStore ownerStore,
  AdminCommentStore targetStore,
});

typedef AdminProCommentsViewPageAdminCommentCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminProCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminProCommentsViewPageStore pageStore,
  AdminCommentStore targetStore,
);
