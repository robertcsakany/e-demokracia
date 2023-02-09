//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.cons.update;

typedef AdminProConsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProConsUpdatePageStore pageStore,
});

typedef AdminProConsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProConsUpdatePageStore pageStore,
  AdminConStore targetStore,
});

typedef AdminProConsUpdatePostTitleChanged = Function(dynamic value, {AdminProConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminProConsUpdatePostCreatedChanged = Function(dynamic value, {AdminProConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminProConsUpdatePostDescriptionChanged = Function(dynamic value, {AdminProConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminProConsUpdatePageAdminConConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminProConsUpdatePageAdminConConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminProConsUpdatePageStore pageStore,
);
typedef AdminProConsUpdatePageAdminConProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminProConsUpdatePageAdminConProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminProConsUpdatePageStore pageStore,
);
typedef AdminProConsUpdatePageAdminConCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminProConsUpdatePageAdminConCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminProConsUpdatePageStore pageStore,
);

typedef AdminProConsUpdatePageAdminConCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminProConsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminProConsUpdatePageStore pageStore,
  AdminConStore targetStore,
);
