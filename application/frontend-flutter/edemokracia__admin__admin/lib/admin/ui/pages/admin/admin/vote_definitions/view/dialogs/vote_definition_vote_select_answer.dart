//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #dialogFactoryExpressionForOperations(#application)
// Path expression: #dialogPathForOperations(#self.owner,#self.operation)
// Template name: lib/ui/pages/page/operation_select_dialog.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Admin.voteDefinitions#View
// Operation: voteSelectAnswer

part of admin.ui.pages.admin.admin.vote_definitions.view;

class AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore extends _AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore
    with _$AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore {}

abstract class _AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore with Store {
  final List<FilterStore> selectableFilters = [
    FilterStore(attributeName: 'title', attributeLabel: 'Title', filterType: FilterType.string),
    FilterStore(attributeName: 'description', attributeLabel: 'Description', filterType: FilterType.string),
  ];

  String mask = '{title,description}';

  int tableQueryLimit = (2.0 - 2).round() < 5 ? 5 : (2.0 - 2).round();

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

Future<SelectAnswerVoteSelectionStore> judoSelectAdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialog(
    {@required BuildContext context,
    AdminAdminVoteDefinitionsViewPageStore pageStore,
    AdminVoteDefinitionStore ownerStore,
    bool dialogTypeAdder = false,
    AdminAdminVoteDefinitionsViewConfig pageConfig}) async {
  final messageHandler = locator<MessageHandler>();
  var dialogHelperStore = AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogStore();
  dialogHelperStore.numberOfColumns = 2;
  dialogHelperStore.numberOfColumnsAfterFilterHorizontal = pageConfig.voteSelectAnswerTableConfig.numberOfColumnsAfterFilterHorizontalInDialog;
  if (pageConfig.voteSelectAnswerTableConfig.defaultOpenedFilters.isNotEmpty) {
    dialogHelperStore.availableFilterList.addAll(pageConfig.voteSelectAnswerTableConfig.defaultOpenedFilters);
    setFiltersLocalizedLabel(context, dialogHelperStore.availableFilterList);
  }
  if (pageConfig.voteSelectAnswerTableConfig.selectableFilters.isNotEmpty) {
    dialogHelperStore.selectableFilters.clear();
    dialogHelperStore.selectableFilters.addAll(pageConfig.voteSelectAnswerTableConfig.selectableFilters);
  }
  try {
    await pageStore.getRangeForVoteSelectAnswer(
      ownerStore,
      queryLimit: dialogHelperStore.tableQueryLimit,
      mask: dialogHelperStore.mask,
    );
  } catch (error) {
    messageHandler.handleApiException(context, error, 'VoteSelectAnswer');
  }

  ObservableList<SelectAnswerVoteSelectionStore> selected = <SelectAnswerVoteSelectionStore>[].asObservable();

  var tableHelperStore = TableHelperStore(selected, (SelectAnswerVoteSelectionStore value) => value?.internal__identifier);

  return await showDialog<SelectAnswerVoteSelectionStore>(
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
                                  await pageStore.getRangeForVoteSelectAnswer(
                                    ownerStore,
                                    queryLimit: dialogHelperStore.tableQueryLimit,
                                    filterStoreList: dialogHelperStore.availableFilterList,
                                    mask: dialogHelperStore.mask,
                                  );
                                } catch (error) {
                                  messageHandler.handleApiException(context, error, 'VoteSelectAnswer');
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
                            await pageStore.getRangeForVoteSelectAnswer(
                              ownerStore,
                              queryLimit: dialogHelperStore.tableQueryLimit,
                              filterStoreList: dialogHelperStore.availableFilterList,
                              mask: dialogHelperStore.mask,
                            );
                          } catch (error) {
                            messageHandler.handleApiException(context, error, 'Filter');
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
                      switch (pageStore.voteDefinitionVoteSelectAnswerStoreRangeFuture.status) {
                        case FutureStatus.pending:
                          return JudoLoadingProgress();
                        case FutureStatus.rejected:
                          return Container();
                        case FutureStatus.fulfilled:
                          var dataInfo =
                              AdminAdminVoteDefinitionsViewVoteDefinitionVoteSelectAnswerDialogTable(context, pageStore, pageConfig, disabled: false);
                          return JudoSelectorTable(
                            key: UniqueKey(),
                            alignment: Alignment.center,
                            disabled: false,
                            collectionSelector: false,
                            col: 1,
                            row: 2.0 - 1 >= 6 ? 2.0 - 1 : 6,
                            dataInfo: dataInfo,
                            sortAscending: pageStore.voteSelectAnswerSortAscRange,
                            sortColumnIndex: pageStore.voteSelectAnswerSortColumnIndexRange,
                            onSort: (int columnIndex, bool asc) async {
                              try {
                                await pageStore.voteSelectAnswerSetSortRange(
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
                            rowList: pageStore.voteSelectAnswerStoreRangeList,
                            dialogTypeAdder: dialogTypeAdder,
                            multiSelectAction: (SelectAnswerVoteSelectionStore element) => tableHelperStore.selectRow(element),
                            singleSelectAction: (SelectAnswerVoteSelectionStore element) => tableHelperStore.singleSelectRow(element),
                            multiSelectedComparator: (SelectAnswerVoteSelectionStore element) =>
                                tableHelperStore.selected
                                    .firstWhere((selected) => tableHelperStore.getId(element) == tableHelperStore.getId(selected), orElse: () => null) !=
                                null,
                            singleSelectedComparator: (SelectAnswerVoteSelectionStore element) =>
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
                            pageStore.voteSelectAnswerTableForRangeItemsRangeEnd != 0
                                ? '${pageStore.voteSelectAnswerTableForRangeItemsRangeStart} - ${pageStore.voteSelectAnswerTableForRangeItemsRangeEnd}'
                                : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                            style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                          ),
                        ),
                      ),
                      Observer(
                        builder: (_) => Padding(
                          padding: JudoComponentCustomizer.get().getDefaultPadding(),
                          child: ElevatedButton(
                            onPressed: pageStore.previousButtonEnableForVoteSelectAnswerRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForVoteSelectAnswer(
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
                            onPressed: pageStore.nextButtonEnableForVoteSelectAnswerRange
                                ? () async {
                                    try {
                                      await pageStore.getRangeForVoteSelectAnswer(
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
              builder: (_) => JudoButtonWidget(
                onPressed: tableHelperStore.selectButtonEnabled
                    ? () {
                        SelectAnswerVoteSelectionStore result;
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
