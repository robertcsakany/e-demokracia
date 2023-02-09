//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.user.activity_cities.update;

Widget getAdminUserActivityCitiesUpdateDesktopPage(BuildContext context, AdminCityStore targetStore, AdminUserActivityCitiesUpdatePageStore pageStore,
    AdminUserActivityCitiesUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
              col: 12.0,
              row: 8.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 8.0,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 8.0,
                      children: [
                        JudoRow(
                          col: 12.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: inputWidgetKeyMap['name'],
                                      order: 1,
                                      errorMessage: pageStore.validationAttributeErrorMessageMap['name'].message,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'City name'),
                                      icon: Icon(getIconByString('text_fields')),
                                      initialValue: targetStore.name,
                                      mandatory: true,
                                      onChanged: (value) {
                                        targetStore.setName(value.toString());
                                      },
                                      onBlur: () {
                                        validateMissingRequiredAttribute(context, pageStore.validationAttributeErrorMessageMap['name'], targetStore.name);
                                        if (pageConfig.postNameChanged != null) {
                                          pageConfig.postNameChanged(targetStore.name, pageStore: pageStore, targetStore: targetStore);
                                        }
                                      },
                                    )),
                            JudoSpacer(
                              col: 8.0,
                            ),
                          ],
                        ),
                        JudoColumn(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          col: 12.0,
                          row: 7.0,
                          children: [
                            JudoLabel(
                              col: 12.0,
                              label: AppLocalizations.of(context).lookUpValue(context, 'Districts'),
                              icon: Icon(getIconByString('home-city')),
                              iconMargin: 4.0,
                            ),

                            // COMPOSITION TABLE

                            Observer(builder: (_) {
                              var dataInfo = EdemokraciaAdminUserActivityCitiesEditDistrictsDesktopTable(context, pageStore, pageConfig, disabled: true);
                              return JudoTable(
                                key: UniqueKey(),
                                order: 2,
                                disabled: true,
                                col: 12.0,
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
                                rowActionList: [],
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
              ],
            ),
          ]),
        ),
      )
    ]),
  );
}
