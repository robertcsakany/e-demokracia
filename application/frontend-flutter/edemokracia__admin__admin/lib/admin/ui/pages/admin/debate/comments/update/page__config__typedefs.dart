//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.comments.update;

typedef AdminDebateCommentsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateCommentsUpdatePageStore pageStore,
});

typedef AdminDebateCommentsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateCommentsUpdatePageStore pageStore,
  AdminCommentStore targetStore,
});

typedef AdminDebateCommentsUpdatePostCommentChanged = Function(dynamic value, {AdminDebateCommentsUpdatePageStore pageStore, AdminCommentStore targetStore});

typedef AdminDebateCommentsUpdatePageAdminCommentCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateCommentsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateCommentsUpdatePageStore pageStore,
  AdminCommentStore targetStore,
);
