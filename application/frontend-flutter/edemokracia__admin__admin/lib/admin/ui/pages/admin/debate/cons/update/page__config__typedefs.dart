//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.cons.update;

typedef AdminDebateConsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateConsUpdatePageStore pageStore,
});

typedef AdminDebateConsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateConsUpdatePageStore pageStore,
  AdminConStore targetStore,
});

typedef AdminDebateConsUpdatePostTitleChanged = Function(dynamic value, {AdminDebateConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminDebateConsUpdatePostCreatedChanged = Function(dynamic value, {AdminDebateConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminDebateConsUpdatePostDescriptionChanged = Function(dynamic value, {AdminDebateConsUpdatePageStore pageStore, AdminConStore targetStore});

typedef AdminDebateConsUpdatePageAdminConConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsUpdatePageAdminConConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminDebateConsUpdatePageStore pageStore,
);
typedef AdminDebateConsUpdatePageAdminConProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsUpdatePageAdminConProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminDebateConsUpdatePageStore pageStore,
);
typedef AdminDebateConsUpdatePageAdminConCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsUpdatePageAdminConCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDebateConsUpdatePageStore pageStore,
);

typedef AdminDebateConsUpdatePageAdminConCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateConsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateConsUpdatePageStore pageStore,
  AdminConStore targetStore,
);
