//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.attachments.view;

typedef AdminIssueAttachmentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueAttachmentsViewPageStore pageStore,
});

typedef AdminIssueAttachmentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueAttachmentsViewPageStore pageStore,
  AdminIssueStore ownerStore,
  AdminIssueAttachmentStore targetStore,
});

typedef AdminIssueAttachmentsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueAttachmentsViewPageStore pageStore,
  AdminIssueAttachmentStore targetStore,
);
