//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.comments.view;

typedef AdminConCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConCommentsViewPageStore pageStore,
});

typedef AdminConCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConCommentsViewPageStore pageStore,
  AdminConStore ownerStore,
  AdminCommentStore targetStore,
});

typedef AdminConCommentsViewPageAdminCommentCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminConCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminConCommentsViewPageStore pageStore,
  AdminCommentStore targetStore,
);
