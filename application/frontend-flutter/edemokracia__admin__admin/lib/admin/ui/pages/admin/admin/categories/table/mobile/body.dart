//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.admin.categories.table;

Widget getAdminAdminCategoriesTableMobilePage(BuildContext context, AdminAdminCategoriesTablePageStore pageStore, AdminAdminCategoriesTableConfig pageConfig) {
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
            Observer(
              builder: (_) => JudoColumn(
                col: 4.0,
                row: 12.0 + pageStore.getPlusRowSize,
                children: [
                  Observer(
                    builder: (_) => JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 4.0,
                      row: 12.0 + pageStore.getPlusRowSize,
                      children: [
                        // STATIC TABLE

                        Observer(
                          builder: (_) => JudoColumn(
                            col: 1,
                            row: pageStore.getPlusRowSize as double,
                            children: getInputFilterWidgetsForTablePage(
                              context,
                              pageStore.availableFilterList,
                              pageStore.pageMaxCol,
                              () async {
                                try {
                                  await pageStore.getCategories();
                                  pageStore.tableService.storeFilters('EdemokraciaAdminAdminCategoriesTableCategories', pageStore.availableFilterList);
                                } catch (error) {
                                  messageHandler.handleApiException(context, error, 'Filter');
                                }
                              },
                              pageStore.filtersHorizontalOrientation,
                              pageStore.pageState,
                            ),
                          ),
                        ),
                        // ignore: missing_return
                        Observer(builder: (_) {
                          switch (pageStore.adminCategoriesStoreFuture.status) {
                            case FutureStatus.pending:
                              return JudoLoadingProgress();
                            case FutureStatus.rejected:
                              return Container();
                            case FutureStatus.fulfilled:
                              var dataInfo = EdemokraciaAdminAdminCategoriesTableCategoriesListMobileTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 4.0,
                                row: 12.0 - 1,
                                dataInfo: dataInfo,
                                rowList: pageStore.categoriesStoreList.asObservable(),
                                sortAscending: pageStore.categoriesSortAsc,
                                sortColumnIndex: pageStore.categoriesSortColumnIndex,
                                onSort: (int columnIndex, bool asc) async {
                                  try {
                                    await pageStore.categoriesSetSort(
                                      context,
                                      dataInfo.getColumnFieldByIndex(columnIndex),
                                      columnIndex,
                                      asc,
                                    );
                                  } catch (error) {
                                    messageHandler.handleApiException(context, error, 'Sorting');
                                  }
                                },
                                navigateToViewPageAction: pageConfig.categoriesTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminAdminCategoriesViewPage(id: element.internal__signedIdentifier),
                                              arguments: AdminAdminCategoriesViewPageArguments());
                                          try {
                                            await pageStore.getCategories();
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
                                      AdminIssueCategoryStore cloned = AdminIssueCategoryStore.clone(element);
                                      var res = await navigation.open(Routes.adminAdminCategoriesUpdatePage,
                                          arguments: AdminAdminCategoriesUpdatePageArguments(targetStore: cloned));
                                      if (res != null) {
                                        try {
                                          await pageStore.updateIssueCategory(cloned);
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Edit');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading || !element?.internal__deletable ?? true,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'Delete'),
                                    icon: Icon(getIconByString('delete_forever')),
                                    action: (element) async {
                                      try {
                                        await pageStore.deleteIssueCategory(element);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'Delete');
                                      }
                                    },
                                  ),
                                ],
                              );
                          }
                        }),
                        Padding(
                          padding: JudoComponentCustomizer.get().getNavigationButtonBarPadding(),
                          child: Row(
                            children: [
                              Padding(
                                padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                child: Observer(
                                  builder: (_) => Text(
                                    pageStore.categoriesStoreList.length != 0
                                        ? '${pageStore.pageTableItemsRangeStart} - ${pageStore.pageTableItemsRangeStart - 1 + pageStore.categoriesStoreList.length}'
                                        : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                    style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                  ),
                                ),
                              ),
                              Observer(
                                builder: (_) => Padding(
                                  padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                  child: ElevatedButton(
                                    onPressed: pageStore.previousButtonEnable && !pageStore.pageState.disabledByLoading
                                        ? () async {
                                            try {
                                              await pageStore.getCategories(isNext: false);
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
                                    onPressed: pageStore.nextButtonEnable && !pageStore.pageState.disabledByLoading
                                        ? () async {
                                            try {
                                              await pageStore.getCategories(isNext: true);
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
                ],
              ),
            ),
          ]),
        ),
      )
    ]),
  );
}
