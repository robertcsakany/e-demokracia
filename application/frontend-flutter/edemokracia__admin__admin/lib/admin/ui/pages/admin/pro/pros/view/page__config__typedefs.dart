//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.pros.view;

typedef AdminProProsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProProsViewPageStore pageStore,
});

typedef AdminProProsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProProsViewPageStore pageStore,
  AdminProStore ownerStore,
  AdminProStore targetStore,
});

typedef AdminProProsViewPageAdminProConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminProProsViewPageAdminProConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminProProsViewPageStore pageStore,
);
typedef AdminProProsViewPageAdminProProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminProProsViewPageAdminProProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminProProsViewPageStore pageStore,
);
typedef AdminProProsViewPageAdminProCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminProProsViewPageAdminProCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminProProsViewPageStore pageStore,
);

typedef AdminProProsViewPageAdminProCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminProProsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminProProsViewPageStore pageStore,
  AdminProStore targetStore,
);
