//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.pros.update;

typedef AdminProProsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProProsUpdatePageStore pageStore,
});

typedef AdminProProsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProProsUpdatePageStore pageStore,
  AdminProStore targetStore,
});

typedef AdminProProsUpdatePostTitleChanged = Function(dynamic value, {AdminProProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminProProsUpdatePostCreatedChanged = Function(dynamic value, {AdminProProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminProProsUpdatePostDescriptionChanged = Function(dynamic value, {AdminProProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminProProsUpdatePageAdminProConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminProProsUpdatePageAdminProConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminProProsUpdatePageStore pageStore,
);
typedef AdminProProsUpdatePageAdminProProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminProProsUpdatePageAdminProProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminProProsUpdatePageStore pageStore,
);
typedef AdminProProsUpdatePageAdminProCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminProProsUpdatePageAdminProCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminProProsUpdatePageStore pageStore,
);

typedef AdminProProsUpdatePageAdminProCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminProProsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminProProsUpdatePageStore pageStore,
  AdminProStore targetStore,
);
