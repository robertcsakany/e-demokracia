//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.admin.debates.table;

Widget getAdminAdminDebatesTableMobilePage(BuildContext context, AdminAdminDebatesTablePageStore pageStore, AdminAdminDebatesTableConfig pageConfig) {
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
                                  await pageStore.getDebates();
                                  pageStore.tableService.storeFilters('EdemokraciaAdminAdminDebatesTableDebates', pageStore.availableFilterList);
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
                          switch (pageStore.adminDebatesStoreFuture.status) {
                            case FutureStatus.pending:
                              return JudoLoadingProgress();
                            case FutureStatus.rejected:
                              return Container();
                            case FutureStatus.fulfilled:
                              var dataInfo = EdemokraciaAdminAdminDebatesTableDebateTableMobileTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 4.0,
                                row: 12.0 - 1,
                                dataInfo: dataInfo,
                                rowList: pageStore.debatesStoreList.asObservable(),
                                sortAscending: pageStore.debatesSortAsc,
                                sortColumnIndex: pageStore.debatesSortColumnIndex,
                                onSort: (int columnIndex, bool asc) async {
                                  try {
                                    await pageStore.debatesSetSort(
                                      context,
                                      dataInfo.getColumnFieldByIndex(columnIndex),
                                      columnIndex,
                                      asc,
                                    );
                                  } catch (error) {
                                    messageHandler.handleApiException(context, error, 'Sorting');
                                  }
                                },
                                navigateToViewPageAction: pageConfig.debatesTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminAdminDebatesViewPage(id: element.internal__signedIdentifier),
                                              arguments: AdminAdminDebatesViewPageArguments());
                                          try {
                                            await pageStore.getDebates();
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
                                      AdminDebateStore cloned = AdminDebateStore.clone(element);
                                      var res = await navigation.open(Routes.adminAdminDebatesUpdatePage,
                                          arguments: AdminAdminDebatesUpdatePageArguments(targetStore: cloned));
                                      if (res != null) {
                                        try {
                                          await pageStore.updateDebate(cloned);
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
                                        await pageStore.deleteDebate(element);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'Delete');
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'Close debate'),
                                    icon: Icon(getIconByString('wechat')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminDebateCloseDebateOperationInputPage, arguments:
                                          AdminDebateCloseDebateOperationInputPageArguments(
                                              operationCall: (CloseDebateInputStore input, AdminDebateCloseDebateOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          var store = await pageStore.edemokraciaAdminDebateCloseDebate(input, element);

                                          if (store != null) {
                                            await navigation.open(Routes.adminDebateCloseDebateOperationOutputPage,
                                                arguments: AdminDebateCloseDebateOperationOutputPageArguments(targetStore: store));
                                          }
                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Close debate');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getDebates();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Close debate');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'Add argument'),
                                    icon: Icon(getIconByString('account-voice')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminDebateCreateArgumentOperationInputPage, arguments:
                                          AdminDebateCreateArgumentOperationInputPageArguments(operationCall:
                                              (CreateArgumentInputStore input, AdminDebateCreateArgumentOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          await pageStore.edemokraciaAdminDebateCreateArgument(input, element);

                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Add argument');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getDebates();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Add argument');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                                    icon: Icon(getIconByString('comment-text-multiple')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminDebateCreateCommentOperationInputPage, arguments:
                                          AdminDebateCreateCommentOperationInputPageArguments(operationCall:
                                              (CreateCommentInputStore input, AdminDebateCreateCommentOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          await pageStore.edemokraciaAdminDebateCreateComment(input, element);

                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Add comment');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getDebates();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Add comment');
                                        }
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
                                    pageStore.debatesStoreList.length != 0
                                        ? '${pageStore.pageTableItemsRangeStart} - ${pageStore.pageTableItemsRangeStart - 1 + pageStore.debatesStoreList.length}'
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
                                              await pageStore.getDebates(isNext: false);
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
                                              await pageStore.getDebates(isNext: true);
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
