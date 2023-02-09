//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.cons.update;

typedef AdminConConsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConConsUpdatePageStore pageStore,
});

typedef AdminConConsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConConsUpdatePageStore pageStore,
  AdminConStore targetStore,
});

typedef AdminConConsUpdatePostTitleChanged = Function(dynamic value, {AdminConConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminConConsUpdatePostCreatedChanged = Function(dynamic value, {AdminConConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminConConsUpdatePostDescriptionChanged = Function(dynamic value, {AdminConConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminConConsUpdatePageAdminConConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminConConsUpdatePageAdminConConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminConConsUpdatePageStore pageStore,
);
typedef AdminConConsUpdatePageAdminConProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminConConsUpdatePageAdminConProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminConConsUpdatePageStore pageStore,
);
typedef AdminConConsUpdatePageAdminConCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminConConsUpdatePageAdminConCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminConConsUpdatePageStore pageStore,
);

typedef AdminConConsUpdatePageAdminConCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminConConsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminConConsUpdatePageStore pageStore,
  AdminConStore targetStore,
);
