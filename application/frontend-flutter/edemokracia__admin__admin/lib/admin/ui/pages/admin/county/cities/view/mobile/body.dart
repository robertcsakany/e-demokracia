//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.county.cities.view;

Widget getAdminCountyCitiesViewMobilePage(BuildContext context, AdminCityStore targetStore, AdminCountyStore ownerStore,
    AdminCountyCitiesViewPageStore pageStore, AdminCountyCitiesViewConfig pageConfig) {
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
              col: 4.0,
              row: 8.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 8.0,
                  children: [
                    Observer(
                        builder: (_) => JudoInputText(
                              key: UniqueKey(),
                              order: 1,
                              col: 4.0,
                              maxLength: 255 ?? 250,
                              readOnly: true,
                              label: AppLocalizations.of(context).lookUpValue(context, 'City name'),
                              icon: Icon(getIconByString('text_fields')),
                              initialValue: targetStore.name,
                            )),
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      col: 4.0,
                      row: 7.0,
                      children: [
                        JudoLabel(
                          col: 4.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Districts'),
                          icon: Icon(getIconByString('home-city')),
                          iconMargin: 4.0,
                        ),

                        // COMPOSITION TABLE

                        Observer(builder: (_) {
                          var dataInfo = EdemokraciaAdminCountyCitiesViewDistrictsMobileTable(context, pageStore, pageConfig, disabled: false);
                          return JudoTable(
                            key: UniqueKey(),
                            order: 2,
                            disabled: pageStore.pageState.disabledByLoading,
                            col: 4.0,
                            row: 6.0 - 1,
                            dataInfo: dataInfo,
                            rowList: pageStore.districtsTablePagingList,
                            sortAscending: pageStore.districtsSortAsc,
                            sortColumnIndex: pageStore.districtsSortColumnIndex,
                            sortInitially: true,
                            onSort: (int columnIndex, bool asc) {
                              pageStore.districtsSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                  TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                            },
                            tableActions: {
                              0: JudoMenuItemData(
                                  value: 0,
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Create'),
                                  icon: Icon(getIconByString('note_add')),
                                  disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                  onSelected: () async {
                                    var created = await navigation.open(Routes.adminCityDistrictsCreatePage,
                                        arguments: AdminCityDistrictsCreatePageArguments(ownerStore: targetStore));
                                    if (created != null) {
                                      try {
                                        await pageStore.createDistricts(targetStore, created);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'Create');
                                      }
                                    }
                                  }),
                            },
                            navigateToViewPageAction: pageConfig.districtsTableConfig.rowClickNavigate
                                ? (element) async {
                                    if (element != null) {
                                      await navigation.open(Routes.adminCityDistrictsViewPage,
                                          arguments: AdminCityDistrictsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                      try {
                                        await pageStore.refreshCity(targetStore);
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
                                  AdminDistrictStore cloned = AdminDistrictStore.clone(element);
                                  var res = await navigation.open(Routes.adminCityDistrictsUpdatePage,
                                      arguments: AdminCityDistrictsUpdatePageArguments(targetStore: cloned));
                                  if (res != null) {
                                    try {
                                      await pageStore.updateDistrictsDistrict(cloned, targetStore);
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
                                    await pageStore.deleteDistrictsDistrict(element, targetStore);
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
                                    pageStore.districtsTableItemsRangeEnd != 0
                                        ? '${pageStore.districtsTableItemsRangeStart} - ${pageStore.districtsTableItemsRangeEnd}'
                                        : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                    style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                  ),
                                ),
                              ),
                              Observer(
                                builder: (_) => Padding(
                                  padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                  child: ElevatedButton(
                                    onPressed: pageStore.districtsTablePreviousEnable
                                        ? () async {
                                            pageStore.districtsTablePreviousPage();
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
                                    onPressed: pageStore.districtsTableNextEnable
                                        ? () async {
                                            pageStore.districtsTableNextPage();
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
