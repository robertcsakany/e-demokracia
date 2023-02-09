//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.pros.update;

typedef AdminDebateProsUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateProsUpdatePageStore pageStore,
});

typedef AdminDebateProsUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateProsUpdatePageStore pageStore,
  AdminProStore targetStore,
});

typedef AdminDebateProsUpdatePostTitleChanged = Function(dynamic value, {AdminDebateProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminDebateProsUpdatePostCreatedChanged = Function(dynamic value, {AdminDebateProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminDebateProsUpdatePostDescriptionChanged = Function(dynamic value, {AdminDebateProsUpdatePageStore pageStore, AdminProStore targetStore});

typedef AdminDebateProsUpdatePageAdminProConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsUpdatePageAdminProConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminDebateProsUpdatePageStore pageStore,
);
typedef AdminDebateProsUpdatePageAdminProProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsUpdatePageAdminProProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminDebateProsUpdatePageStore pageStore,
);
typedef AdminDebateProsUpdatePageAdminProCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsUpdatePageAdminProCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDebateProsUpdatePageStore pageStore,
);

typedef AdminDebateProsUpdatePageAdminProCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateProsUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateProsUpdatePageStore pageStore,
  AdminProStore targetStore,
);
