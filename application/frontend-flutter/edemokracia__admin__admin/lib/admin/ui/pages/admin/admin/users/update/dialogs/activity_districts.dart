//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #dialogPath(#self.pageDefinition,#self.dataElement.name)
// Template name: lib/ui/pages/page/select_dialog.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Admin.users#Edit
// Table: activityDistricts

part of admin.ui.pages.admin.admin.users.update;

class AdminAdminUsersUpdateActivityDistrictsDialogStore extends _AdminAdminUsersUpdateActivityDistrictsDialogStore
    with _$AdminAdminUsersUpdateActivityDistrictsDialogStore {}

abstract class _AdminAdminUsersUpdateActivityDistrictsDialogStore with Store {
  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'representation', attributeLabel: 'District', filterType: FilterType.string),
  ];

  String mask = '{representation}';

  int tableQueryLimit = (3.0 - 2).round() < 5 ? 5 : (3.0 - 2).round();

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

Future<List<AdminDistrictStore>> judoSelectAdminAdminUsersUpdateActivityDistrictsDialog(
    {@required BuildContext context,
    AdminAdminUsersUpdatePageStore pageStore,
    AdminUserStore ownerStore,
    bool dialogTypeAdder = false,
    AdminAdminUsersUpdateConfig pageConfig}) async {
  final messageHandler = locator<MessageHandler>();
  var dialogHelperStore = AdminAdminUsersUpdateActivityDistrictsDialogStore();
  dialogHelperStore.numberOfColumns = 1;
  dialogHelperStore.numberOfColumnsAfterFilterHorizontal = pageConfig.activityDistrictsTableConfig.numberOfColumnsAfterFilterHorizontalInDialog;
  if (pageConfig.activityDistrictsTableConfig.defaultOpenedFilters.isNotEmpty) {
    dialogHelperStore.availableFilterList.addAll(pageConfig.activityDistrictsTableConfig.defaultOpenedFilters);
    setFiltersLocalizedLabel(context, dialogHelperStore.availableFilterList);
  }
  if (pageConfig.activityDistrictsTableConfig.selectableFilters.isNotEmpty) {
    dialogHelperStore.selectableFilters.clear();
    dialogHelperStore.selectableFilters.addAll(pageConfig.activityDistrictsTableConfig.selectableFilters);
  }

  try {
    await pageStore.getRangeForActivityDistricts(
      ownerStore,
      queryLimit: dialogHelperStore.tableQueryLimit,
      mask: dialogHelperStore.mask,
    );
  } catch (error) {
    messageHandler.handleApiException(context, error, dialogTypeAdder ? 'Add' : 'Select');
  }

  ObservableList<AdminDistrictStore> selected = ObservableList.of(ownerStore.activityDistricts);
  List<AdminDistrictStore> alreadyAddedItems = List.of(selected);

  var tableHelperStore = TableHelperStore(selected, (AdminDistrictStore value) => value?.internal__identifier);

  return await showDialog<List<AdminDistrictStore>>(
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
                                  await pageStore.getRangeForActivityDistricts(
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
                            await pageStore.getRangeForActivityDistricts(
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
                      switch (pageStore.userActivityDistrictsStoreRangeFuture.status) {
                        case FutureStatus.pending:
                          return JudoLoadingProgress();
                        case FutureStatus.rejected:
                          return Container();
                        case FutureStatus.fulfilled:
                          var dataInfo = AdminAdminUsersUpdateActivityDistrictsDialogTable(context, pageStore, pageConfig, disabled: false);
                          return JudoSelectorTable(
                            key: UniqueKey(),
                            alignment: Alignment.center,
                            disabled: false,
                            collectionSelector: true,
                            col: 1,
                            row: 3.0 - 1 >= 6 ? 3.0 - 1 : 6,
                            dataInfo: dataInfo,
                            sortAscending: pageStore.activityDistrictsSortAscRange,
                            sortColumnIndex: pageStore.activityDistrictsSortColumnIndexRange,
                            onSort: (int columnIndex, bool asc) async {
                              try {
                                await pageStore.activityDistrictsSetSortRange(
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
                            rowList: pageStore.activityDistrictsStoreRangeList,
                            dialogTypeAdder: dialogTypeAdder,
                            alreadyAddedItemsComparator: (AdminDistrictStore element) =>
                                alreadyAddedItems.firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected),
                                    orElse: () => null) !=
                                null,
                            multiSelectAction: (AdminDistrictStore element) => tableHelperStore.selectRow(element),
                            singleSelectAction: (AdminDistrictStore element) => tableHelperStore.singleSelectRow(element),
                            multiSelectedComparator: (AdminDistrictStore element) =>
                                tableHelperStore.selected
                                    .firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected), orElse: () => null) !=
                                null,
                            singleSelectedComparator: (AdminDistrictStore element) =>
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
                            pageStore.activityDistrictsTableForRangeItemsRangeEnd != 0
                                ? '${pageStore.activityDistrictsTableForRangeItemsRangeStart} - ${pageStore.activityDistrictsTableForRangeItemsRangeEnd}'
                                : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                            style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                          ),
                        ),
                      ),
                      Observer(
                        builder: (_) => Padding(
                          padding: JudoComponentCustomizer.get().getDefaultPadding(),
                          child: ElevatedButton(
                            onPressed: pageStore.previousButtonEnableForActivityDistrictsRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForActivityDistricts(
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
                            onPressed: pageStore.nextButtonEnableForActivityDistrictsRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForActivityDistricts(
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
                        List<AdminDistrictStore> result;
                        if (dialogTypeAdder) {
                          result = selected
                              .where((element) =>
                                  alreadyAddedItems.firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected),
                                      orElse: () => null) ==
                                  null)
                              .toList();
                        } else {
                          result = selected;
                        }
                        if (result == null || result.isEmpty) {
                          Navigator.of(context).pop();
                        } else {
                          Navigator.of(context).pop(result);
                        }
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
