//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageActionsPath(#self.owner)
// Template name: lib/ui/pages/page/page_actions.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.create_comment.operation_input;

class AdminProCreateCommentOperationInputPageActions extends PageActions {
  NavigationState navigation;
  final messageHandler = locator<MessageHandler>();

  final CreateCommentInputStore targetStore;
  final AdminProCreateCommentOperationInputPageStore pageStore;
  final AdminProCreateCommentOperationInputConfig pageConfig;

  AdminProCreateCommentOperationInputPageActions(this.navigation, this.targetStore, this.pageStore, this.pageConfig);

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
