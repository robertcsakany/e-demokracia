//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.user.activity_counties.view;

Widget getAdminUserActivityCountiesViewTabletPage(BuildContext context, AdminCountyStore targetStore, AdminUserStore ownerStore,
    AdminUserActivityCountiesViewPageStore pageStore, AdminUserActivityCountiesViewConfig pageConfig) {
  final navigation = locator<NavigationState>();
  final tabService = locator<TabService>();
  final messageHandler = locator<MessageHandler>();

  return Scrollbar(
    isAlwaysShown: true,
    child: CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            JudoColumn(
              col: 8.0,
              row: 12.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 12.0,
                  children: [
                    Observer(
                        builder: (_) => JudoInputText(
                              key: UniqueKey(),
                              order: 1,
                              col: 8.0,
                              maxLength: 255 ?? 250,
                              readOnly: true,
                              label: AppLocalizations.of(context).lookUpValue(context, 'County name'),
                              icon: Icon(getIconByString('text_fields')),
                              initialValue: targetStore.name,
                            )),
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      col: 8.0,
                      row: 11.0,
                      children: [
                        JudoLabel(
                          col: 8.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Cities'),
                          icon: Icon(getIconByString('city')),
                          iconMargin: 4.0,
                        ),

                        // COMPOSITION TABLE

                        Observer(builder: (_) {
                          var dataInfo = EdemokraciaAdminUserActivityCountiesViewCitiesTabletTable(context, pageStore, pageConfig, disabled: false);
                          return JudoTable(
                            key: UniqueKey(),
                            order: 2,
                            disabled: pageStore.pageState.disabledByLoading,
                            col: 8.0,
                            row: 10.0 - 1,
                            dataInfo: dataInfo,
                            rowList: pageStore.citiesTablePagingList,
                            sortAscending: pageStore.citiesSortAsc,
                            sortColumnIndex: pageStore.citiesSortColumnIndex,
                            sortInitially: true,
                            onSort: (int columnIndex, bool asc) {
                              pageStore.citiesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                  TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                            },
                            tableActions: {
                              0: JudoMenuItemData(
                                  value: 0,
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Create'),
                                  icon: Icon(getIconByString('note_add')),
                                  disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                  onSelected: () async {
                                    var created = await navigation.open(Routes.adminCountyCitiesCreatePage,
                                        arguments: AdminCountyCitiesCreatePageArguments(ownerStore: targetStore));
                                    if (created != null) {
                                      try {
                                        await pageStore.createCities(targetStore, created);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'Create');
                                      }
                                    }
                                  }),
                            },
                            navigateToViewPageAction: pageConfig.citiesTableConfig.rowClickNavigate
                                ? (element) async {
                                    if (element != null) {
                                      await navigation.open(Routes.adminCountyCitiesViewPage,
                                          arguments: AdminCountyCitiesViewPageArguments(ownerStore: targetStore, targetStore: element));
                                      try {
                                        await pageStore.refreshCounty(targetStore);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'View');
                                      }
                                    }
                                  }
                                : null,
                            rowActionList: [
                              TableRowAction(
                                disabled: (element) => pageStore.pageState.disabledByLoading || !element?.internal__updatable ?? true,
                                label: AppLocalizations.of(context).lookUpValue(context, 'Edit'),
                                icon: Icon(getIconByString('edit')),
                                action: (element) async {
                                  pageStore.pageState.disabledByLoading = true;
                                  AdminCityStore cloned = AdminCityStore.clone(element);
                                  var res = await navigation.open(Routes.adminCountyCitiesUpdatePage,
                                      arguments: AdminCountyCitiesUpdatePageArguments(targetStore: cloned));
                                  if (res != null) {
                                    try {
                                      await pageStore.updateCitiesCity(cloned, targetStore);
                                    } catch (error) {
                                      messageHandler.handleApiException(context, error, 'Edit');
                                    }
                                  }
                                  pageStore.pageState.disabledByLoading = false;
                                },
                              ),
                              TableRowAction(
                                disabled: (element) => pageStore.pageState.disabledByLoading || !element?.internal__deletable ?? true,
                                label: AppLocalizations.of(context).lookUpValue(context, 'Delete'),
                                icon: Icon(getIconByString('delete_forever')),
                                action: (element) async {
                                  try {
                                    await pageStore.deleteCitiesCity(element, targetStore);
                                  } catch (error) {
                                    messageHandler.handleApiException(context, error, 'Delete');
                                  }
                                },
                              ),
                            ],
                          );
                        }),
                        Padding(
                          padding: JudoComponentCustomizer.get().getNavigationButtonBarPadding(),
                          child: Row(
                            children: [
                              Padding(
                                padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                child: Observer(
                                  builder: (_) => Text(
                                    pageStore.citiesTableItemsRangeEnd != 0
                                        ? '${pageStore.citiesTableItemsRangeStart} - ${pageStore.citiesTableItemsRangeEnd}'
                                        : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                    style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                  ),
                                ),
                              ),
                              Observer(
                                builder: (_) => Padding(
                                  padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                  child: ElevatedButton(
                                    onPressed: pageStore.citiesTablePreviousEnable
                                        ? () async {
                                            pageStore.citiesTablePreviousPage();
                                          }
                                        : null,
                                    child: Text(AppLocalizations.of(context).lookUpValue(context, 'Previous')),
                                  ),
                                ),
                              ),
                              Observer(
                                builder: (_) => Padding(
                                  padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                  child: ElevatedButton(
                                    onPressed: pageStore.citiesTableNextEnable
                                        ? () async {
                                            pageStore.citiesTableNextPage();
                                          }
                                        : null,
                                    child: Text(AppLocalizations.of(context).lookUpValue(context, 'Next')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      )
    ]),
  );
}
