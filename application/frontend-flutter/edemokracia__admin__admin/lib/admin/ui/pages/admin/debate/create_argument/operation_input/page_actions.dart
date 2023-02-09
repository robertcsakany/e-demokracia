//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageActionsPath(#self.owner)
// Template name: lib/ui/pages/page/page_actions.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.create_argument.operation_input;

class AdminDebateCreateArgumentOperationInputPageActions extends PageActions {
  NavigationState navigation;
  final messageHandler = locator<MessageHandler>();

  final CreateArgumentInputStore targetStore;
  final AdminDebateCreateArgumentOperationInputPageStore pageStore;
  final AdminDebateCreateArgumentOperationInputConfig pageConfig;

  AdminDebateCreateArgumentOperationInputPageActions(this.navigation, this.targetStore, this.pageStore, this.pageConfig);

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

  Widget getBackIcon(BuildContext context) {
    return JudoAppBarButton(
      padding: EdgeInsets.only(right: 8.0),
      icon: Icon(
        getIconByString('arrow_back'),
        color: Theme.of(context).colorScheme.secondary,
        size: 28,
      ),
      label: null,
      outlined: true,
      onPressed: () {
        if (pageConfig.backAction != null) {
          pageConfig.backAction(navigation: navigation, pageStore: pageStore);
        } else {
          navigation.close();
        }
      },
      disabled: pageStore.pageState.disabledByLoading || navigation.stack.length == 0,
    );
  }
}
