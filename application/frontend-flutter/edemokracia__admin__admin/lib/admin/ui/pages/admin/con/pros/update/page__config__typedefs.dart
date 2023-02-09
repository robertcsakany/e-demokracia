//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.pros.update;

typedef AdminConProsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConProsUpdatePageStore pageStore,
});

typedef AdminConProsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConProsUpdatePageStore pageStore,
  AdminProStore targetStore,
});

typedef AdminConProsUpdatePostTitleChanged = Function(dynamic value, {AdminConProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminConProsUpdatePostCreatedChanged = Function(dynamic value, {AdminConProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminConProsUpdatePostDescriptionChanged = Function(dynamic value, {AdminConProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminConProsUpdatePageAdminProConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminConProsUpdatePageAdminProConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminConProsUpdatePageStore pageStore,
);
typedef AdminConProsUpdatePageAdminProProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminConProsUpdatePageAdminProProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminConProsUpdatePageStore pageStore,
);
typedef AdminConProsUpdatePageAdminProCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminConProsUpdatePageAdminProCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminConProsUpdatePageStore pageStore,
);

typedef AdminConProsUpdatePageAdminProCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminConProsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminConProsUpdatePageStore pageStore,
  AdminProStore targetStore,
);
