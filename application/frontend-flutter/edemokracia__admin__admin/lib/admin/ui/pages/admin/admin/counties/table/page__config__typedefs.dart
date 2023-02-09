//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.counties.table;

typedef AdminAdminCountiesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCountiesTablePageStore pageStore,
});

typedef AdminAdminCountiesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCountiesTablePageStore pageStore,
});

typedef AdminAdminCountiesTablePageAdminAdminCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminAdminCountiesTablePageAdminAdminCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminAdminCountiesTablePageStore pageStore,
);

typedef AdminAdminCountiesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCountiesTablePageStore pageStore,
);
