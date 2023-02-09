//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.user.activity_counties.update;

Widget getAdminUserActivityCountiesUpdateTabletPage(BuildContext context, AdminCountyStore targetStore, AdminUserActivityCountiesUpdatePageStore pageStore,
    AdminUserActivityCountiesUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
                              key: inputWidgetKeyMap['name'],
                              order: 1,
                              errorMessage: pageStore.validationAttributeErrorMessageMap['name'].message,
                              col: 8.0,
                              maxLength: 255 ?? 250,
                              label: AppLocalizations.of(context).lookUpValue(context, 'County name'),
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
                          var dataInfo = EdemokraciaAdminUserActivityCountiesEditCitiesTabletTable(context, pageStore, pageConfig, disabled: true);
                          return JudoTable(
                            key: UniqueKey(),
                            order: 2,
                            disabled: true,
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
