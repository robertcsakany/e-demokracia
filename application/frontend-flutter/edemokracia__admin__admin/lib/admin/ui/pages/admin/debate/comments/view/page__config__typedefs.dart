//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.comments.view;

typedef AdminDebateCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateCommentsViewPageStore pageStore,
});

typedef AdminDebateCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateCommentsViewPageStore pageStore,
  AdminDebateStore ownerStore,
  AdminCommentStore targetStore,
});

typedef AdminDebateCommentsViewPageAdminCommentCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateCommentsViewPageStore pageStore,
  AdminCommentStore targetStore,
);
