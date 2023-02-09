//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.admin.issues.table;

Widget getAdminAdminIssuesTableDesktopPage(BuildContext context, AdminAdminIssuesTablePageStore pageStore, AdminAdminIssuesTableConfig pageConfig) {
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
                col: 12.0,
                row: 12.0 + pageStore.getPlusRowSize,
                children: [
                  Observer(
                    builder: (_) => JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
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
                                  await pageStore.getIssues();
                                  pageStore.tableService.storeFilters('EdemokraciaAdminAdminIssuesTableIssues', pageStore.availableFilterList);
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
                          switch (pageStore.adminIssuesStoreFuture.status) {
                            case FutureStatus.pending:
                              return JudoLoadingProgress();
                            case FutureStatus.rejected:
                              return Container();
                            case FutureStatus.fulfilled:
                              var dataInfo = EdemokraciaAdminAdminIssuesTableIssueTableDesktopTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 12.0,
                                row: 12.0 - 1,
                                dataInfo: dataInfo,
                                rowList: pageStore.issuesStoreList.asObservable(),
                                sortAscending: pageStore.issuesSortAsc,
                                sortColumnIndex: pageStore.issuesSortColumnIndex,
                                onSort: (int columnIndex, bool asc) async {
                                  try {
                                    await pageStore.issuesSetSort(
                                      context,
                                      dataInfo.getColumnFieldByIndex(columnIndex),
                                      columnIndex,
                                      asc,
                                    );
                                  } catch (error) {
                                    messageHandler.handleApiException(context, error, 'Sorting');
                                  }
                                },
                                navigateToViewPageAction: pageConfig.issuesTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminAdminIssuesViewPage(id: element.internal__signedIdentifier),
                                              arguments: AdminAdminIssuesViewPageArguments());
                                          try {
                                            await pageStore.getIssues();
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
                                      AdminIssueStore cloned = AdminIssueStore.clone(element);
                                      var res = await navigation.open(Routes.adminAdminIssuesUpdatePage,
                                          arguments: AdminAdminIssuesUpdatePageArguments(targetStore: cloned));
                                      if (res != null) {
                                        try {
                                          await pageStore.updateIssue(cloned);
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
                                        await pageStore.deleteIssue(element);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'Delete');
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'Create debate'),
                                    icon: Icon(getIconByString('wechat')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminIssueCreateDebateOperationInputPage, arguments:
                                          AdminIssueCreateDebateOperationInputPageArguments(operationCall:
                                              (CreateDebateInputStore input, AdminIssueCreateDebateOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          var store = await pageStore.edemokraciaAdminIssueCreateDebate(input, element);

                                          if (store != null) {
                                            await navigation.open(Routes.adminIssueCreateDebateOperationOutputPage,
                                                arguments: AdminIssueCreateDebateOperationOutputPageArguments(targetStore: store));
                                          }
                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Create debate');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getIssues();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Create debate');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                                    icon: Icon(getIconByString('comment-text-multiple')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminIssueCreateCommentOperationInputPage, arguments:
                                          AdminIssueCreateCommentOperationInputPageArguments(operationCall:
                                              (CreateCommentInputStore input, AdminIssueCreateCommentOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          await pageStore.edemokraciaAdminIssueCreateComment(input, element);

                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Add comment');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getIssues();
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
                                    pageStore.issuesStoreList.length != 0
                                        ? '${pageStore.pageTableItemsRangeStart} - ${pageStore.pageTableItemsRangeStart - 1 + pageStore.issuesStoreList.length}'
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
                                              await pageStore.getIssues(isNext: false);
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
                                              await pageStore.getIssues(isNext: true);
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
