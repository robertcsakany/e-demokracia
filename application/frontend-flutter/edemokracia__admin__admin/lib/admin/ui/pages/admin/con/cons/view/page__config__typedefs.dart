//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.cons.view;

typedef AdminConConsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConConsViewPageStore pageStore,
});

typedef AdminConConsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConConsViewPageStore pageStore,
  AdminConStore ownerStore,
  AdminConStore targetStore,
});

typedef AdminConConsViewPageAdminConConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminConConsViewPageAdminConConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminConConsViewPageStore pageStore,
);
typedef AdminConConsViewPageAdminConProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminConConsViewPageAdminConProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminConConsViewPageStore pageStore,
);
typedef AdminConConsViewPageAdminConCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminConConsViewPageAdminConCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminConConsViewPageStore pageStore,
);

typedef AdminConConsViewPageAdminConCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminConConsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminConConsViewPageStore pageStore,
  AdminConStore targetStore,
);
