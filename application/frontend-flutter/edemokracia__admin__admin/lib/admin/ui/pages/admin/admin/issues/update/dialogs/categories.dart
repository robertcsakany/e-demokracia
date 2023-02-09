//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #dialogPath(#self.pageDefinition,#self.dataElement.name)
// Template name: lib/ui/pages/page/select_dialog.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Admin.issues#Edit
// Table: categories

part of admin.ui.pages.admin.admin.issues.update;

class AdminAdminIssuesUpdateCategoriesDialogStore extends _AdminAdminIssuesUpdateCategoriesDialogStore with _$AdminAdminIssuesUpdateCategoriesDialogStore {}

abstract class _AdminAdminIssuesUpdateCategoriesDialogStore with Store {
  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
  ];

  String mask = '{title,description}';

  int tableQueryLimit = (12.0 - 2).round() < 5 ? 5 : (12.0 - 2).round();

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

Future<List<AdminIssueCategoryStore>> judoSelectAdminAdminIssuesUpdateCategoriesDialog(
    {@required BuildContext context,
    AdminAdminIssuesUpdatePageStore pageStore,
    AdminIssueStore ownerStore,
    bool dialogTypeAdder = false,
    AdminAdminIssuesUpdateConfig pageConfig}) async {
  final messageHandler = locator<MessageHandler>();
  var dialogHelperStore = AdminAdminIssuesUpdateCategoriesDialogStore();
  dialogHelperStore.numberOfColumns = 2;
  dialogHelperStore.numberOfColumnsAfterFilterHorizontal = pageConfig.categoriesTableConfig.numberOfColumnsAfterFilterHorizontalInDialog;
  if (pageConfig.categoriesTableConfig.defaultOpenedFilters.isNotEmpty) {
    dialogHelperStore.availableFilterList.addAll(pageConfig.categoriesTableConfig.defaultOpenedFilters);
    setFiltersLocalizedLabel(context, dialogHelperStore.availableFilterList);
  }
  if (pageConfig.categoriesTableConfig.selectableFilters.isNotEmpty) {
    dialogHelperStore.selectableFilters.clear();
    dialogHelperStore.selectableFilters.addAll(pageConfig.categoriesTableConfig.selectableFilters);
  }

  try {
    await pageStore.getRangeForCategories(
      ownerStore,
      queryLimit: dialogHelperStore.tableQueryLimit,
      mask: dialogHelperStore.mask,
    );
  } catch (error) {
    messageHandler.handleApiException(context, error, dialogTypeAdder ? 'Add' : 'Select');
  }

  ObservableList<AdminIssueCategoryStore> selected = ObservableList.of(ownerStore.categories);
  List<AdminIssueCategoryStore> alreadyAddedItems = List.of(selected);

  var tableHelperStore = TableHelperStore(selected, (AdminIssueCategoryStore value) => value?.internal__identifier);

  return await showDialog<List<AdminIssueCategoryStore>>(
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
                                  await pageStore.getRangeForCategories(
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
                            await pageStore.getRangeForCategories(
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
                      switch (pageStore.issueCategoriesStoreRangeFuture.status) {
                        case FutureStatus.pending:
                          return JudoLoadingProgress();
                        case FutureStatus.rejected:
                          return Container();
                        case FutureStatus.fulfilled:
                          var dataInfo = AdminAdminIssuesUpdateCategoriesDialogTable(context, pageStore, pageConfig, disabled: false);
                          return JudoSelectorTable(
                            key: UniqueKey(),
                            alignment: Alignment.center,
                            disabled: false,
                            collectionSelector: true,
                            col: 1,
                            row: 12.0 - 1 >= 6 ? 12.0 - 1 : 6,
                            dataInfo: dataInfo,
                            sortAscending: pageStore.categoriesSortAscRange,
                            sortColumnIndex: pageStore.categoriesSortColumnIndexRange,
                            onSort: (int columnIndex, bool asc) async {
                              try {
                                await pageStore.categoriesSetSortRange(
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
                            rowList: pageStore.categoriesStoreRangeList,
                            dialogTypeAdder: dialogTypeAdder,
                            alreadyAddedItemsComparator: (AdminIssueCategoryStore element) =>
                                alreadyAddedItems.firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected),
                                    orElse: () => null) !=
                                null,
                            multiSelectAction: (AdminIssueCategoryStore element) => tableHelperStore.selectRow(element),
                            singleSelectAction: (AdminIssueCategoryStore element) => tableHelperStore.singleSelectRow(element),
                            multiSelectedComparator: (AdminIssueCategoryStore element) =>
                                tableHelperStore.selected
                                    .firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected), orElse: () => null) !=
                                null,
                            singleSelectedComparator: (AdminIssueCategoryStore element) =>
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
                            pageStore.categoriesTableForRangeItemsRangeEnd != 0
                                ? '${pageStore.categoriesTableForRangeItemsRangeStart} - ${pageStore.categoriesTableForRangeItemsRangeEnd}'
                                : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                            style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                          ),
                        ),
                      ),
                      Observer(
                        builder: (_) => Padding(
                          padding: JudoComponentCustomizer.get().getDefaultPadding(),
                          child: ElevatedButton(
                            onPressed: pageStore.previousButtonEnableForCategoriesRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForCategories(
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
                            onPressed: pageStore.nextButtonEnableForCategoriesRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForCategories(
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
                        List<AdminIssueCategoryStore> result;
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
