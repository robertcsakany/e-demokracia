//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageActionsPath(#self.owner)
// Template name: lib/ui/pages/page/page_actions.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.counties.create;

class AdminAdminCountiesCreatePageActions extends PageActions {
  NavigationState navigation;
  final messageHandler = locator<MessageHandler>();

  final AdminCountyStore targetStore;
  final AdminAdminCountiesCreatePageStore pageStore;
  final AdminAdminCountiesCreateConfig pageConfig;

  AdminAdminCountiesCreatePageActions(this.navigation, this.targetStore, this.pageStore, this.pageConfig);

  List<Widget> getActions(BuildContext context) {
    List<Widget> list = [];

    list.add(JudoAppBarButton(
      loadingState: pageStore.saveCreateActionLoadingState,
      label: AppLocalizations.of(context).lookUpValue(context, 'Save'),
      icon: Icon(getIconByString('save')),
      disabled: pageStore.pageState.disabledByLoading || false,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      onPressed: () async {
        try {
          var created = await pageStore.createCounties(targetStore);
          if (created != null) {
            if (pageConfig.createCallSuccess != null) {
              await pageConfig.createCallSuccess(
                navigation: navigation,
                targetStore: created,
                pageStore: pageStore,
              );
            } else {
              navigation.close(created);
            }
          }
        } catch (error) {
          messageHandler.handleApiException(context, error, 'Save', pageStore.validationAttributeErrorMessageMap);
        }
      },
    ));
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
