//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageActionsPath(#self.owner)
// Template name: lib/ui/pages/page/page_actions.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.categories.table;

class AdminAdminCategoriesTablePageActions extends PageActions {
  NavigationState navigation;
  final messageHandler = locator<MessageHandler>();

  final AdminAdminCategoriesTablePageStore pageStore;
  final AdminAdminCategoriesTableConfig pageConfig;

  AdminAdminCategoriesTablePageActions(this.navigation, this.pageStore, this.pageConfig);

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
          await pageStore.getCategories();
        } catch (error) {
          messageHandler.handleApiException(context, error, 'Refresh');
        }
      },
    ));
    list.add(JudoAppBarPopupButton(
      label: AppLocalizations.of(context).lookUpValue(context, 'Add Filter'),
      icon: Icon(getIconByString('filter_alt')),
      disabled: pageStore.pageState.disabledByLoading || false,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      items: Map<FilterStore, JudoMenuItemData>.fromIterable(pageStore.selectableFilters,
          key: (item) => item,
          value: (item) => JudoMenuItemData(
              value: item,
              label: AppLocalizations.of(context).lookUpValue(context, item.attributeLabel),
              onSelected: () {
                item.setWidgetLabel(context);
                pageStore.addNewFilter(item);
              })),
    ));
    list.add(JudoAppBarButton(
      label: AppLocalizations.of(context).lookUpValue(context, 'Create'),
      icon: Icon(getIconByString('note_add')),
      disabled: pageStore.pageState.disabledByLoading || false,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      onPressed: () async {
        var created = await navigation.open(Routes.adminAdminCategoriesCreatePage);
        if (created != null) {
          try {
            await pageStore.getCategories();
          } catch (error) {
            messageHandler.handleApiException(context, error, 'Create');
          }
        }
      },
    ));
    if (pageConfig.extendActions != null) {
      return pageConfig.extendActions(
        list,
        context: context,
        navigation: navigation,
        pageStore: pageStore,
      );
    }

    return list;
  }
}
