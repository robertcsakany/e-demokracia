//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.attachments.create;

typedef AdminIssueAttachmentsCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueAttachmentsCreatePageStore pageStore,
});

typedef AdminIssueAttachmentsCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueAttachmentsCreatePageStore pageStore,
  AdminIssueStore ownerStore,
  AdminIssueAttachmentStore targetStore,
});

typedef AdminIssueAttachmentsCreatePostTypeChanged = Function(dynamic value,
    {AdminIssueAttachmentsCreatePageStore pageStore, AdminIssueAttachmentStore targetStore});

typedef AdminIssueAttachmentsCreatePostLinkChanged = Function(dynamic value,
    {AdminIssueAttachmentsCreatePageStore pageStore, AdminIssueAttachmentStore targetStore});

typedef AdminIssueAttachmentsCreatePostFileChanged = Function(dynamic value,
    {AdminIssueAttachmentsCreatePageStore pageStore, AdminIssueAttachmentStore targetStore});

typedef AdminIssueAttachmentsCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueAttachmentsCreatePageStore pageStore,
  AdminIssueAttachmentStore targetStore,
);
