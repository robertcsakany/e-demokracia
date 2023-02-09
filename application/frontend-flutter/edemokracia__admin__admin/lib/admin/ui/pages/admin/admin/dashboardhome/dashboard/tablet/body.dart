//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.admin.dashboardhome.dashboard;

Widget getAdminAdminDashboardhomeDashboardTabletPage(BuildContext context, AdminDashboardStore targetStore, AdminAdminDashboardhomeDashboardPageStore pageStore,
    AdminAdminDashboardhomeDashboardConfig pageConfig) {
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
              row: 23.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 23.0,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 23.0,
                      children: [
                        Observer(
                          builder: (_) => JudoText(
                            col: 8.0,
                            text: targetStore.welcome?.toString() ?? '',
                          ),
                        ),
                        JudoRow(
                          col: 8.0,
                          row: 1.0,
                          children: [
                            JudoRow(
                              col: 4.0,
                              row: 1.0,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Observer(
                                    builder: (_) => JudoAppBarButton(
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Create issue'),
                                          icon: Icon(getIconByString('ticket-confirmation')),
                                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                                          loadingState: pageStore.createIssueButtonLoadingState,
                                          order: 0,
                                          disabled: pageStore.pageState.disabledByLoading || false,
                                          onPressed: () async {
                                            var ret = await navigation.open(Routes.adminDashboardCreateIssueOperationInputPage, arguments:
                                                AdminDashboardCreateIssueOperationInputPageArguments(operationCall:
                                                    (AdminCreateIssueInputStore input, AdminDashboardCreateIssueOperationInputPageStore inputPageStore) async {
                                              bool callSuccessful = false;

                                              try {
                                                var store = await pageStore.edemokraciaAdminDashboardCreateIssue(
                                                  input,
                                                );

                                                if (store != null) {
                                                  await navigation.open(Routes.adminDashboardCreateIssueOperationOutputPage,
                                                      arguments: AdminDashboardCreateIssueOperationOutputPageArguments(targetStore: store));
                                                }
                                                callSuccessful = true;
                                              } catch (error) {
                                                messageHandler.handleApiException(context, error, 'Create issue');
                                              }
                                              return callSuccessful;
                                            }));

                                            if (ret != null) {
                                              try {
                                                await pageStore.refreshDashboard(targetStore);
                                              } catch (error) {
                                                messageHandler.handleApiException(context, error, 'Create issue');
                                              }
                                            }
                                          },
                                        )),
                                Observer(
                                    builder: (_) => JudoAppBarButton(
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Create user'),
                                          icon: Icon(getIconByString('account')),
                                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                                          loadingState: pageStore.createUserButtonLoadingState,
                                          order: 0,
                                          disabled: pageStore.pageState.disabledByLoading || false,
                                          onPressed: () async {
                                            var ret = await navigation.open(Routes.adminDashboardCreateUserOperationInputPage, arguments:
                                                AdminDashboardCreateUserOperationInputPageArguments(operationCall:
                                                    (AdminCreateUserInputStore input, AdminDashboardCreateUserOperationInputPageStore inputPageStore) async {
                                              bool callSuccessful = false;

                                              try {
                                                var store = await pageStore.edemokraciaAdminDashboardCreateUser(
                                                  input,
                                                );

                                                if (store != null) {
                                                  await navigation.open(Routes.adminDashboardCreateUserOperationOutputPage,
                                                      arguments: AdminDashboardCreateUserOperationOutputPageArguments(targetStore: store));
                                                }
                                                callSuccessful = true;
                                              } catch (error) {
                                                messageHandler.handleApiException(context, error, 'Create user');
                                              }
                                              return callSuccessful;
                                            }));

                                            if (ret != null) {
                                              try {
                                                await pageStore.refreshDashboard(targetStore);
                                              } catch (error) {
                                                messageHandler.handleApiException(context, error, 'Create user');
                                              }
                                            }
                                          },
                                        )),
                              ],
                            ),
                            JudoSpacer(
                              col: 4.0,
                            ),
                          ],
                        ),
                        Observer(
                          builder: (_) => JudoTab(col: 8.0, row: 21.0, order: 1, tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 8.0,
                              row: 20.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 8.0,
                                  row: 6.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 6.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 8.0,
                                          row: 6.0,
                                          children: [
                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo =
                                                  EdemokraciaAdminAdminDashboardhomeDashboardIssuesTabletTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 2,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 8.0,
                                                row: 6.0 - 1,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.issuesTablePagingList,
                                                sortAscending: pageStore.issuesSortAsc,
                                                sortColumnIndex: pageStore.issuesSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.issuesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                navigateToViewPageAction: pageConfig.issuesTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminDashboardIssuesViewPage,
                                                              arguments: AdminDashboardIssuesViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshDashboard(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        }
                                                      }
                                                    : null,
                                                rowActionList: [
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    label: AppLocalizations.of(context).lookUpValue(context, 'Create debate'),
                                                    icon: Icon(getIconByString('wechat')),
                                                    action: (element) async {
                                                      var ret = await navigation.open(Routes.adminIssueCreateDebateOperationInputPage, arguments:
                                                          AdminIssueCreateDebateOperationInputPageArguments(operationCall: (CreateDebateInputStore input,
                                                              AdminIssueCreateDebateOperationInputPageStore inputPageStore) async {
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
                                                          await pageStore.refreshDashboard(targetStore);
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
                                                          AdminIssueCreateCommentOperationInputPageArguments(operationCall: (CreateCommentInputStore input,
                                                              AdminIssueCreateCommentOperationInputPageStore inputPageStore) async {
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
                                                          await pageStore.refreshDashboard(targetStore);
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add comment');
                                                        }
                                                      }
                                                    },
                                                  ),
                                                ],
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
                                                        pageStore.issuesTableItemsRangeEnd != 0
                                                            ? '${pageStore.issuesTableItemsRangeStart} - ${pageStore.issuesTableItemsRangeEnd}'
                                                            : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                                        style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                                      ),
                                                    ),
                                                  ),
                                                  Observer(
                                                    builder: (_) => Padding(
                                                      padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                      child: ElevatedButton(
                                                        onPressed: pageStore.issuesTablePreviousEnable
                                                            ? () async {
                                                                pageStore.issuesTablePreviousPage();
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
                                                        onPressed: pageStore.issuesTableNextEnable
                                                            ? () async {
                                                                pageStore.issuesTableNextPage();
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
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 8.0,
                              row: 20.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 8.0,
                                  row: 6.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 6.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 8.0,
                                          row: 6.0,
                                          children: [
                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminAdminDashboardhomeDashboardDebatesTabletTable(context, pageStore, pageConfig,
                                                  disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 3,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 8.0,
                                                row: 6.0 - 1,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.debatesTablePagingList,
                                                sortAscending: pageStore.debatesSortAsc,
                                                sortColumnIndex: pageStore.debatesSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.debatesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                navigateToViewPageAction: pageConfig.debatesTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminDashboardDebatesViewPage,
                                                              arguments: AdminDashboardDebatesViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshDashboard(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        }
                                                      }
                                                    : null,
                                                rowActionList: [
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    label: AppLocalizations.of(context).lookUpValue(context, 'Close debate'),
                                                    icon: Icon(getIconByString('wechat')),
                                                    action: (element) async {
                                                      var ret = await navigation.open(Routes.adminDebateCloseDebateOperationInputPage, arguments:
                                                          AdminDebateCloseDebateOperationInputPageArguments(operationCall: (CloseDebateInputStore input,
                                                              AdminDebateCloseDebateOperationInputPageStore inputPageStore) async {
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
                                                          await pageStore.refreshDashboard(targetStore);
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
                                                          AdminDebateCreateArgumentOperationInputPageArguments(operationCall: (CreateArgumentInputStore input,
                                                              AdminDebateCreateArgumentOperationInputPageStore inputPageStore) async {
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
                                                          await pageStore.refreshDashboard(targetStore);
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
                                                          AdminDebateCreateCommentOperationInputPageArguments(operationCall: (CreateCommentInputStore input,
                                                              AdminDebateCreateCommentOperationInputPageStore inputPageStore) async {
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
                                                          await pageStore.refreshDashboard(targetStore);
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add comment');
                                                        }
                                                      }
                                                    },
                                                  ),
                                                ],
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
                                                        pageStore.debatesTableItemsRangeEnd != 0
                                                            ? '${pageStore.debatesTableItemsRangeStart} - ${pageStore.debatesTableItemsRangeEnd}'
                                                            : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                                        style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                                      ),
                                                    ),
                                                  ),
                                                  Observer(
                                                    builder: (_) => Padding(
                                                      padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                      child: ElevatedButton(
                                                        onPressed: pageStore.debatesTablePreviousEnable
                                                            ? () async {
                                                                pageStore.debatesTablePreviousPage();
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
                                                        onPressed: pageStore.debatesTableNextEnable
                                                            ? () async {
                                                                pageStore.debatesTableNextPage();
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
                          ], tabs: [
                            Tab(
                              icon: Icon(getIconByString('ticket-account')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'My issues'),
                            ),
                            Tab(
                              icon: Icon(getIconByString('wechat')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'My debates'),
                            ),
                          ]),
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
