//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #dialogPath(#self.pageDefinition,#self.dataElement.name)
// Template name: lib/ui/pages/page/select_dialog.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Admin.users#Edit
// Table: residentCity

part of admin.ui.pages.admin.admin.users.update;

class AdminAdminUsersUpdateResidentCityDialogStore extends _AdminAdminUsersUpdateResidentCityDialogStore with _$AdminAdminUsersUpdateResidentCityDialogStore {}

abstract class _AdminAdminUsersUpdateResidentCityDialogStore with Store {
  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'representation', attributeLabel: 'City', filterType: FilterType.string),
  ];

  String mask = '{representation}';

  int tableQueryLimit = (1.0 - 2).round() < 5 ? 5 : (1.0 - 2).round();

  @computed
  double get getInputWidgetsHeight => availableFilterList.length * JudoComponentCustomizer.get().getLineHeight();

  @computed
  bool get searchButtonEnabled => availableFilterList.isNotEmpty;

  @observable
  ObservableList<FilterStore> availableFilterList = <FilterStore>[].asObservable();

  @action
  void addNewFilter(FilterStore newFilterStore) => availableFilterList.add(FilterStore.clone(newFilterStore));

  @observable
  int numberOfColumns = 0;

  @observable
  int numberOfColumnsAfterFilterHorizontal = 0;

  @computed
  double get filterWidgetsColumnHeight {
    if (isFilterWidgetsBreakable(numberOfColumns, numberOfColumnsAfterFilterHorizontal)) {
      if (availableFilterList.length % 2 == 0) {
        return availableFilterList.length / 2;
      } else {
        return ((availableFilterList.length / 2).truncate() + 1).toDouble();
      }
    } else {
      return availableFilterList.length.toDouble();
    }
  }
}

Future<AdminCityStore> judoSelectAdminAdminUsersUpdateResidentCityDialog(
    {@required BuildContext context,
    AdminAdminUsersUpdatePageStore pageStore,
    AdminUserStore ownerStore,
    bool dialogTypeAdder = false,
    AdminAdminUsersUpdateConfig pageConfig}) async {
  final messageHandler = locator<MessageHandler>();
  var dialogHelperStore = AdminAdminUsersUpdateResidentCityDialogStore();
  dialogHelperStore.numberOfColumns = 1;
  dialogHelperStore.numberOfColumnsAfterFilterHorizontal = pageConfig.residentCityTableConfig.numberOfColumnsAfterFilterHorizontalInDialog;
  if (pageConfig.residentCityTableConfig.defaultOpenedFilters.isNotEmpty) {
    dialogHelperStore.availableFilterList.addAll(pageConfig.residentCityTableConfig.defaultOpenedFilters);
    setFiltersLocalizedLabel(context, dialogHelperStore.availableFilterList);
  }
  if (pageConfig.residentCityTableConfig.selectableFilters.isNotEmpty) {
    dialogHelperStore.selectableFilters.clear();
    dialogHelperStore.selectableFilters.addAll(pageConfig.residentCityTableConfig.selectableFilters);
  }

  try {
    await pageStore.getRangeForResidentCity(
      ownerStore,
      queryLimit: dialogHelperStore.tableQueryLimit,
      mask: dialogHelperStore.mask,
    );
  } catch (error) {
    messageHandler.handleApiException(context, error, dialogTypeAdder ? 'Add' : 'Select');
  }

  ObservableList<AdminCityStore> selected = <AdminCityStore>[].asObservable();

  var tableHelperStore = TableHelperStore(selected, (AdminCityStore value) => value?.internal__identifier);
  if (ownerStore.residentCity != null) {
    tableHelperStore.singleSelected = ownerStore.residentCity;
  }

  return await showDialog<AdminCityStore>(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    JudoPopupButton(
                      col: 1,
                      alignment: Alignment.center,
                      icon: Icon(Icons.add),
                      label: AppLocalizations.of(context).lookUpValue(context, 'Add Filter'),
                      items: Map<FilterStore, JudoMenuItemData>.fromIterable(dialogHelperStore.selectableFilters,
                          key: (item) => item,
                          value: (item) => JudoMenuItemData(
                              value: item,
                              label: AppLocalizations.of(context).lookUpValue(context, item.attributeLabel),
                              onSelected: () {
                                item.setWidgetLabel(context);
                                dialogHelperStore.addNewFilter(item);
                              })),
                    ),
                    Observer(
                      builder: (_) => dialogHelperStore.searchButtonEnabled
                          ? JudoButton(
                              col: 1,
                              alignment: Alignment.center,
                              icon: Icon(Icons.search),
                              label: AppLocalizations.of(context).lookUpValue(context, 'Search'),
                              onPressed: () async {
                                try {
                                  await pageStore.getRangeForResidentCity(
                                    ownerStore,
                                    queryLimit: dialogHelperStore.tableQueryLimit,
                                    filterStoreList: dialogHelperStore.availableFilterList,
                                    mask: dialogHelperStore.mask,
                                  );
                                } catch (error) {
                                  messageHandler.handleApiException(context, error, dialogTypeAdder ? 'Add' : 'Select');
                                }
                              },
                            )
                          : JudoSpacer(col: 1),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Observer(
                      builder: (_) => JudoColumn(
                        col: 1,
                        row: dialogHelperStore.filterWidgetsColumnHeight,
                        children: getInputFilterWidgetsForDialog(context, dialogHelperStore.availableFilterList, () async {
                          try {
                            await pageStore.getRangeForResidentCity(
                              ownerStore,
                              queryLimit: dialogHelperStore.tableQueryLimit,
                              filterStoreList: dialogHelperStore.availableFilterList,
                              mask: dialogHelperStore.mask,
                            );
                          } catch (error) {
                            messageHandler.handleApiException(context, error, '');
                          }
                        }, dialogHelperStore.numberOfColumns, dialogHelperStore.numberOfColumnsAfterFilterHorizontal, pageStore.pageState),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    // ignore: missing_return
                    Observer(builder: (_) {
                      switch (pageStore.userResidentCityStoreRangeFuture.status) {
                        case FutureStatus.pending:
                          return JudoLoadingProgress();
                        case FutureStatus.rejected:
                          return Container();
                        case FutureStatus.fulfilled:
                          var dataInfo = AdminAdminUsersUpdateResidentCityDialogTable(context, pageStore, pageConfig, disabled: false);
                          return JudoSelectorTable(
                            key: UniqueKey(),
                            alignment: Alignment.center,
                            disabled: false,
                            collectionSelector: false,
                            col: 1,
                            row: 1.0 - 1 >= 6 ? 1.0 - 1 : 6,
                            dataInfo: dataInfo,
                            sortAscending: pageStore.residentCitySortAscRange,
                            sortColumnIndex: pageStore.residentCitySortColumnIndexRange,
                            onSort: (int columnIndex, bool asc) async {
                              try {
                                await pageStore.residentCitySetSortRange(
                                  ownerStore,
                                  context,
                                  dataInfo.getColumnFieldByIndex(columnIndex),
                                  columnIndex,
                                  asc,
                                  filterStoreList: dialogHelperStore.availableFilterList,
                                  mask: dialogHelperStore.mask,
                                );
                              } catch (error) {
                                messageHandler.handleApiException(context, error, 'Sorting');
                              }
                            },
                            rowList: pageStore.residentCityStoreRangeList,
                            dialogTypeAdder: dialogTypeAdder,
                            multiSelectAction: (AdminCityStore element) => tableHelperStore.selectRow(element),
                            singleSelectAction: (AdminCityStore element) => tableHelperStore.singleSelectRow(element),
                            multiSelectedComparator: (AdminCityStore element) =>
                                tableHelperStore.selected
                                    .firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected), orElse: () => null) !=
                                null,
                            singleSelectedComparator: (AdminCityStore element) =>
                                tableHelperStore.getId(tableHelperStore.singleSelected) == tableHelperStore.getId(element),
                          );
                      }
                    }),
                  ],
                ),
                Padding(
                  padding: JudoComponentCustomizer.get().getNavigationButtonBarPadding(),
                  child: Row(
                    children: [
                      Padding(
                        padding: JudoComponentCustomizer.get().getDefaultPadding(),
                        child: Observer(
                          builder: (_) => Text(
                            pageStore.residentCityTableForRangeItemsRangeEnd != 0
                                ? '${pageStore.residentCityTableForRangeItemsRangeStart} - ${pageStore.residentCityTableForRangeItemsRangeEnd}'
                                : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                            style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                          ),
                        ),
                      ),
                      Observer(
                        builder: (_) => Padding(
                          padding: JudoComponentCustomizer.get().getDefaultPadding(),
                          child: ElevatedButton(
                            onPressed: pageStore.previousButtonEnableForResidentCityRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForResidentCity(
                                        ownerStore,
                                        queryLimit: dialogHelperStore.tableQueryLimit,
                                        filterStoreList: dialogHelperStore.availableFilterList,
                                        mask: dialogHelperStore.mask,
                                        isNext: false,
                                      );
                                    } catch (error) {
                                      messageHandler.handleApiException(context, error, 'Previous');
                                    }
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
                            onPressed: pageStore.nextButtonEnableForResidentCityRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForResidentCity(
                                        ownerStore,
                                        queryLimit: dialogHelperStore.tableQueryLimit,
                                        filterStoreList: dialogHelperStore.availableFilterList,
                                        mask: dialogHelperStore.mask,
                                        isNext: true,
                                      );
                                    } catch (error) {
                                      messageHandler.handleApiException(context, error, 'Next');
                                    }
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
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Observer(
              builder: (_) => ElevatedButton(
                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Select')),
                onPressed: tableHelperStore.selectButtonEnabled
                    ? () {
                        AdminCityStore result;
                        result = tableHelperStore.singleSelected;
                        Navigator.of(context).pop(result);
                      }
                    : null,
              ),
            ),
          ),
        ],
      );
    },
  );
}
