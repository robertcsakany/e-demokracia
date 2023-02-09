//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.pros.view;

typedef AdminConProsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConProsViewPageStore pageStore,
});

typedef AdminConProsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConProsViewPageStore pageStore,
  AdminConStore ownerStore,
  AdminProStore targetStore,
});

typedef AdminConProsViewPageAdminProConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminConProsViewPageAdminProConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminConProsViewPageStore pageStore,
);
typedef AdminConProsViewPageAdminProProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminConProsViewPageAdminProProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminConProsViewPageStore pageStore,
);
typedef AdminConProsViewPageAdminProCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminConProsViewPageAdminProCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminConProsViewPageStore pageStore,
);

typedef AdminConProsViewPageAdminProCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminConProsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminConProsViewPageStore pageStore,
  AdminProStore targetStore,
);
