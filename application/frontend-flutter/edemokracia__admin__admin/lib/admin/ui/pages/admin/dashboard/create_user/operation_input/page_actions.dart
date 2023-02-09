//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageActionsPath(#self.owner)
// Template name: lib/ui/pages/page/page_actions.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.create_user.operation_input;

class AdminDashboardCreateUserOperationInputPageActions extends PageActions {
  NavigationState navigation;
  final messageHandler = locator<MessageHandler>();

  final AdminCreateUserInputStore targetStore;
  final AdminDashboardCreateUserOperationInputPageStore pageStore;
  final AdminDashboardCreateUserOperationInputConfig pageConfig;

  AdminDashboardCreateUserOperationInputPageActions(this.navigation, this.targetStore, this.pageStore, this.pageConfig);

  List<Widget> getActions(BuildContext context) {
    List<Widget> list = [];

    if (pageConfig.extendActions != null) {
      return pageConfig.extendActions(
        list,
        context: context,
        navigation: navigation,
        pageStore: pageStore,
        targetStore: targetStore,
      );
    }

    return list;
  }
}
