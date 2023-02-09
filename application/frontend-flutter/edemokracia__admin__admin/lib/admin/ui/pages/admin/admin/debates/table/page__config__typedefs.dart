//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.debates.table;

typedef AdminAdminDebatesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminDebatesTablePageStore pageStore,
});

typedef AdminAdminDebatesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminDebatesTablePageStore pageStore,
});

typedef AdminAdminDebatesTablePageAdminAdminDebatesTableDataCell = DataCell Function(
  AdminDebateStore targetStore,
  BuildContext context,
);

typedef AdminAdminDebatesTablePageAdminAdminDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDebateStore targetStore,
  AdminAdminDebatesTablePageStore pageStore,
);

typedef AdminAdminDebatesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminDebatesTablePageStore pageStore,
);
