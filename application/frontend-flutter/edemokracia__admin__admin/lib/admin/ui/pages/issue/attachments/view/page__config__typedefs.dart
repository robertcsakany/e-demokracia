//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue.attachments.view;

typedef IssueAttachmentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueAttachmentsViewPageStore pageStore,
});

typedef IssueAttachmentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueAttachmentsViewPageStore pageStore,
  IssueStore ownerStore,
  IssueAttachmentStore targetStore,
});

typedef IssueAttachmentsViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueAttachmentsViewPageStore pageStore,
  IssueAttachmentStore targetStore,
);
