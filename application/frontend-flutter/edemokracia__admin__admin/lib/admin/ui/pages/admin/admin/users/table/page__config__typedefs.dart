//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.users.table;

typedef AdminAdminUsersTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminUsersTablePageStore pageStore,
});

typedef AdminAdminUsersTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminUsersTablePageStore pageStore,
});

typedef AdminAdminUsersTablePageAdminAdminUsersTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminAdminUsersTablePageAdminAdminUsersTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminUserStore targetStore,
  AdminAdminUsersTablePageStore pageStore,
);

typedef AdminAdminUsersTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminUsersTablePageStore pageStore,
);
