//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageActionsPath(#self.owner)
// Template name: lib/ui/pages/page/page_actions.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.comments.view;

class AdminDebateCommentsViewPageActions extends PageActions {
  NavigationState navigation;
  final messageHandler = locator<MessageHandler>();

  final AdminCommentStore targetStore;
  final AdminDebateStore ownerStore;
  final AdminDebateCommentsViewPageStore pageStore;
  final AdminDebateCommentsViewConfig pageConfig;

  AdminDebateCommentsViewPageActions(this.navigation, this.targetStore, this.ownerStore, this.pageStore, this.pageConfig);

  List<Widget> getActions(BuildContext context) {
    List<Widget> list = [];

    list.add(JudoAppBarButton(
      loadingState: pageStore.refreshActionLoadingState,
      label: AppLocalizations.of(context).lookUpValue(context, 'Refresh'),
      icon: Icon(getIconByString('refresh')),
      disabled: pageStore.pageState.disabledByLoading || false,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      onPressed: () async {
        try {
          await pageStore.refreshComment(targetStore);
        } catch (error) {
          messageHandler.handleApiException(context, error, 'Refresh');
        }
      },
    ));
    list.add(JudoAppBarButton(
      loadingState: pageStore.deleteActionLoadingState,
      label: AppLocalizations.of(context).lookUpValue(context, 'Delete'),
      icon: Icon(getIconByString('delete_forever')),
      disabled: pageStore.pageState.disabledByLoading || false || !targetStore.internal__deletable,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      onPressed: () async {
        try {
          await pageStore.deleteComment(targetStore);
          navigation.close(targetStore);
        } catch (error) {
          messageHandler.handleApiException(context, error, 'Delete');
        }
      },
    ));
    list.add(JudoAppBarButton(
      label: AppLocalizations.of(context).lookUpValue(context, 'Edit'),
      icon: Icon(getIconByString('edit')),
      disabled: pageStore.pageState.disabledByLoading || false || !targetStore.internal__updatable,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      onPressed: () async {
        pageStore.pageState.disabledByLoading = true;
        AdminCommentStore cloned = AdminCommentStore.clone(targetStore);
        var res = await navigation.open(Routes.adminDebateCommentsUpdatePage, arguments: AdminDebateCommentsUpdatePageArguments(targetStore: cloned));
        if (res != null) {
          try {
            await pageStore.updateComment(cloned, targetStore);
          } catch (error) {
            messageHandler.handleApiException(context, error, 'Edit');
          }
        }
        pageStore.pageState.disabledByLoading = false;
      },
    ));
    if (pageConfig.extendActions != null) {
      return pageConfig.extendActions(
        list,
        context: context,
        navigation: navigation,
        pageStore: pageStore,
        ownerStore: ownerStore,
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
