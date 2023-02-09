//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.cons.view;

typedef AdminProConsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProConsViewPageStore pageStore,
});

typedef AdminProConsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProConsViewPageStore pageStore,
  AdminProStore ownerStore,
  AdminConStore targetStore,
});

typedef AdminProConsViewPageAdminConConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminProConsViewPageAdminConConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminProConsViewPageStore pageStore,
);
typedef AdminProConsViewPageAdminConProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminProConsViewPageAdminConProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminProConsViewPageStore pageStore,
);
typedef AdminProConsViewPageAdminConCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminProConsViewPageAdminConCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminProConsViewPageStore pageStore,
);

typedef AdminProConsViewPageAdminConCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminProConsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminProConsViewPageStore pageStore,
  AdminConStore targetStore,
);
