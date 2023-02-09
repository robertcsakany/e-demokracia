//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.admin.users.table;

Widget getAdminAdminUsersTableTabletPage(BuildContext context, AdminAdminUsersTablePageStore pageStore, AdminAdminUsersTableConfig pageConfig) {
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
                col: 8.0,
                row: 12.0 + pageStore.getPlusRowSize,
                children: [
                  Observer(
                    builder: (_) => JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
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
                                  await pageStore.getUsers();
                                  pageStore.tableService.storeFilters('EdemokraciaAdminAdminUsersTableUsers', pageStore.availableFilterList);
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
                          switch (pageStore.adminUsersStoreFuture.status) {
                            case FutureStatus.pending:
                              return JudoLoadingProgress();
                            case FutureStatus.rejected:
                              return Container();
                            case FutureStatus.fulfilled:
                              var dataInfo = EdemokraciaAdminAdminUsersTableUserTableTabletTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 8.0,
                                row: 12.0 - 1,
                                dataInfo: dataInfo,
                                rowList: pageStore.usersStoreList.asObservable(),
                                sortAscending: pageStore.usersSortAsc,
                                sortColumnIndex: pageStore.usersSortColumnIndex,
                                onSort: (int columnIndex, bool asc) async {
                                  try {
                                    await pageStore.usersSetSort(
                                      context,
                                      dataInfo.getColumnFieldByIndex(columnIndex),
                                      columnIndex,
                                      asc,
                                    );
                                  } catch (error) {
                                    messageHandler.handleApiException(context, error, 'Sorting');
                                  }
                                },
                                navigateToViewPageAction: pageConfig.usersTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminAdminUsersViewPage(id: element.internal__signedIdentifier),
                                              arguments: AdminAdminUsersViewPageArguments());
                                          try {
                                            await pageStore.getUsers();
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
                                      AdminUserStore cloned = AdminUserStore.clone(element);
                                      var res = await navigation.open(Routes.adminAdminUsersUpdatePage,
                                          arguments: AdminAdminUsersUpdatePageArguments(targetStore: cloned));
                                      if (res != null) {
                                        try {
                                          await pageStore.updateUser(cloned);
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
                                        await pageStore.deleteUser(element);
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
                                    pageStore.usersStoreList.length != 0
                                        ? '${pageStore.pageTableItemsRangeStart} - ${pageStore.pageTableItemsRangeStart - 1 + pageStore.usersStoreList.length}'
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
                                              await pageStore.getUsers(isNext: false);
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
                                              await pageStore.getUsers(isNext: true);
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
