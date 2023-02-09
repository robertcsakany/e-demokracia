//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.cons.view;

typedef AdminDebateConsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateConsViewPageStore pageStore,
});

typedef AdminDebateConsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateConsViewPageStore pageStore,
  AdminDebateStore ownerStore,
  AdminConStore targetStore,
});

typedef AdminDebateConsViewPageAdminConConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsViewPageAdminConConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminDebateConsViewPageStore pageStore,
);
typedef AdminDebateConsViewPageAdminConProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsViewPageAdminConProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminDebateConsViewPageStore pageStore,
);
typedef AdminDebateConsViewPageAdminConCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsViewPageAdminConCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDebateConsViewPageStore pageStore,
);

typedef AdminDebateConsViewPageAdminConCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateConsViewPageStore pageStore,
  AdminConStore targetStore,
);
