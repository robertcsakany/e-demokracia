//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.create_user.operation_input;

typedef AdminDashboardCreateUserOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateUserOperationInputPageStore pageStore,
  AdminCreateUserInputStore targetStore,
});

typedef AdminDashboardCreateUserOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateUserOperationInputPageStore pageStore,
  AdminCreateUserInputStore targetStore,
});

typedef AdminDashboardCreateUserOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateUserOperationInputPageStore pageStore,
});

typedef AdminDashboardCreateUserOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDashboardCreateUserOperationInputPageStore pageStore,
  AdminCreateUserInputStore targetStore,
});

typedef AdminDashboardCreateUserOperationInputPostUserNameChanged = Function(dynamic value,
    {AdminDashboardCreateUserOperationInputPageStore pageStore, AdminCreateUserInputStore targetStore});

typedef AdminDashboardCreateUserOperationInputPostHasAdminAccessChanged = Function(dynamic value,
    {AdminDashboardCreateUserOperationInputPageStore pageStore, AdminCreateUserInputStore targetStore});

typedef AdminDashboardCreateUserOperationInputPostFirstNameChanged = Function(dynamic value,
    {AdminDashboardCreateUserOperationInputPageStore pageStore, AdminCreateUserInputStore targetStore});

typedef AdminDashboardCreateUserOperationInputPostLastNameChanged = Function(dynamic value,
    {AdminDashboardCreateUserOperationInputPageStore pageStore, AdminCreateUserInputStore targetStore});

typedef AdminDashboardCreateUserOperationInputPostEmailChanged = Function(dynamic value,
    {AdminDashboardCreateUserOperationInputPageStore pageStore, AdminCreateUserInputStore targetStore});

typedef AdminDashboardCreateUserOperationInputPostPhoneChanged = Function(dynamic value,
    {AdminDashboardCreateUserOperationInputPageStore pageStore, AdminCreateUserInputStore targetStore});

typedef AdminDashboardCreateUserOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDashboardCreateUserOperationInputPageStore pageStore,
  AdminCreateUserInputStore targetStore,
);
