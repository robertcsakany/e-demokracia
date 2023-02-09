//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.pros.view;

typedef AdminDebateProsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateProsViewPageStore pageStore,
});

typedef AdminDebateProsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateProsViewPageStore pageStore,
  AdminDebateStore ownerStore,
  AdminProStore targetStore,
});

typedef AdminDebateProsViewPageAdminProConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsViewPageAdminProConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminDebateProsViewPageStore pageStore,
);
typedef AdminDebateProsViewPageAdminProProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsViewPageAdminProProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminDebateProsViewPageStore pageStore,
);
typedef AdminDebateProsViewPageAdminProCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsViewPageAdminProCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDebateProsViewPageStore pageStore,
);

typedef AdminDebateProsViewPageAdminProCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateProsViewPageStore pageStore,
  AdminProStore targetStore,
);
