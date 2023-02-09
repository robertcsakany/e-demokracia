//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.attachments.update;

typedef AdminIssueAttachmentsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueAttachmentsUpdatePageStore pageStore,
});

typedef AdminIssueAttachmentsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueAttachmentsUpdatePageStore pageStore,
  AdminIssueAttachmentStore targetStore,
});

typedef AdminIssueAttachmentsUpdatePostTypeChanged = Function(dynamic value,
    {AdminIssueAttachmentsUpdatePageStore pageStore, AdminIssueAttachmentStore targetStore});

typedef AdminIssueAttachmentsUpdatePostFileChanged = Function(dynamic value,
    {AdminIssueAttachmentsUpdatePageStore pageStore, AdminIssueAttachmentStore targetStore});

typedef AdminIssueAttachmentsUpdatePostLinkChanged = Function(dynamic value,
    {AdminIssueAttachmentsUpdatePageStore pageStore, AdminIssueAttachmentStore targetStore});

typedef AdminIssueAttachmentsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueAttachmentsUpdatePageStore pageStore,
  AdminIssueAttachmentStore targetStore,
);
