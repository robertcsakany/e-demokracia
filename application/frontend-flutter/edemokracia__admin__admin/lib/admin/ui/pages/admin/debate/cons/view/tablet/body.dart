//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.debate.cons.view;

Widget getAdminDebateConsViewTabletPage(BuildContext context, AdminConStore targetStore, AdminDebateStore ownerStore, AdminDebateConsViewPageStore pageStore,
    AdminDebateConsViewConfig pageConfig) {
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
              row: 62.14285714285714,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 62.14285714285714,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 8.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 8.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Contra'),
                          icon: Icon(getIconByString('chat-minus')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 8.0,
                          row: 7.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 8.0,
                              row: 7.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: UniqueKey(),
                                              order: 1,
                                              col: 6.0,
                                              maxLength: 255 ?? 250,
                                              readOnly: true,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Title'),
                                              icon: Icon(getIconByString('text_fields')),
                                              inCard: true,
                                              initialValue: targetStore.title,
                                            )),
                                    JudoSpacer(
                                      col: 2.0,
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: UniqueKey(),
                                        order: 2,
                                        col: 3.0,
                                        readOnly: true,
                                        use24HourFormat: true,
                                        initialDate: targetStore.created,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                                        icon: Icon(getIconByString('schedule')),
                                        inCard: true,
                                      ),
                                    ),

                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        order: 3,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created by'),
                                        icon: Icon(getIconByString('table_rows')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 3.0,
                                        labelList: [
                                          targetStore.createdBy?.representation?.toString(),
                                        ],
                                        actions: [
                                          targetStore.createdBy != null
                                              ? IconButton(
                                                  icon: Icon(
                                                    Icons.visibility,
                                                  ),
                                                  onPressed: pageStore.pageState.disabledByLoading
                                                      ? null
                                                      : () async {
                                                          var response = await navigation.open(Routes.adminConCreatedByViewPage,
                                                              arguments: AdminConCreatedByViewPageArguments(
                                                                  ownerStore: targetStore, targetStore: targetStore.createdBy));
                                                          try {
                                                            await pageStore.refreshCon(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        })
                                              : null,
                                        ],
                                      );
                                    }),

                                    JudoSpacer(
                                      col: 2.0,
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 4.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: UniqueKey(),
                                              order: 4,
                                              col: 8.0,
                                              row: 4.0,
                                              multiline: true,
                                              inCard: true,
                                              maxLength: 2000 ?? 250,
                                              readOnly: true,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Description'),
                                              icon: Icon(getIconByString('text_fields')),
                                              initialValue: targetStore.description,
                                            )),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 1.0,
                                              icon: Icon(getIconByString('thumb-up')),
                                              loadingState: pageStore.voteUpButtonLoadingState,
                                              order: 5,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                try {
                                                  await pageStore.edemokraciaAdminConVoteUp(targetStore);

                                                  messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                  ;

                                                  await pageStore.refreshCon(targetStore);
                                                } catch (error) {
                                                  messageHandler.handleApiException(context, error, '');
                                                }
                                              },
                                            )),
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: UniqueKey(),
                                              order: 6,
                                              col: 1.0,
                                              inCard: true,
                                              readOnly: true,
                                              initialValue: targetStore.upVotes?.toString(),
                                              precision: 9,
                                              scale: 0,
                                            )),
                                    JudoSpacer(
                                      col: 1.0,
                                    ),
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 1.0,
                                              icon: Icon(getIconByString('thumb-down')),
                                              loadingState: pageStore.voteDownButtonLoadingState,
                                              order: 7,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                try {
                                                  await pageStore.edemokraciaAdminConVoteDown(targetStore);

                                                  messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                  ;

                                                  await pageStore.refreshCon(targetStore);
                                                } catch (error) {
                                                  messageHandler.handleApiException(context, error, '');
                                                }
                                              },
                                            )),
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: UniqueKey(),
                                              order: 8,
                                              col: 1.0,
                                              inCard: true,
                                              readOnly: true,
                                              initialValue: targetStore.downVotes?.toString(),
                                              precision: 9,
                                              scale: 0,
                                            )),
                                    JudoSpacer(
                                      col: 1.0,
                                    ),
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 2.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Votes'),
                                              icon: Icon(getIconByString('checkbox-multiple-marked')),
                                              order: 9,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                await navigation.open(Routes.adminConVotesTablePage,
                                                    arguments: AdminConVotesTablePageArguments(ownerStore: targetStore));
                                              },
                                            )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Observer(
                      builder: (_) => JudoTab(
                          col: 8.0,
                          row: 54.0,
                          order: 10,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Debate::cons_tabBar').tabIndex,
                          setTabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Debate::cons_tabBar').setTabIndex,
                          tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 8.0,
                              row: 53.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 8.0,
                                  row: 27.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 1.0,
                                      children: [
                                        JudoRow(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          col: 8.0,
                                          row: 1.0,
                                          children: [
                                            Observer(
                                                builder: (_) => JudoButton(
                                                      col: 4.0,
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Add argument'),
                                                      icon: Icon(getIconByString('account-voice')),
                                                      loadingState: pageStore.createSubArgumentButtonLoadingState,
                                                      order: 11,
                                                      disabled: pageStore.pageState.disabledByLoading || false,
                                                      onPressed: () async {
                                                        var ret = await navigation.open(Routes.adminConCreateSubArgumentOperationInputPage, arguments:
                                                            AdminConCreateSubArgumentOperationInputPageArguments(operationCall: (CreateArgumentInputStore input,
                                                                AdminConCreateSubArgumentOperationInputPageStore inputPageStore) async {
                                                          bool callSuccessful = false;

                                                          try {
                                                            await pageStore.edemokraciaAdminConCreateSubArgument(input, targetStore);

                                                            callSuccessful = true;
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add argument');
                                                          }
                                                          return callSuccessful;
                                                        }));

                                                        if (ret != null) {
                                                          try {
                                                            await pageStore.refreshCon(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add argument');
                                                          }
                                                        }
                                                      },
                                                    )),
                                            JudoSpacer(
                                              col: 4.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 13.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 6.0,
                                          row: 13.0,
                                          children: [
                                            JudoLabel(
                                              col: 6.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Pros'),
                                              icon: Icon(getIconByString('chat-plus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminDebateConsViewProsTabletTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 12,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 6.0,
                                                row: 12.0,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.prosTablePagingList,
                                                sortAscending: pageStore.prosSortAsc,
                                                sortColumnIndex: pageStore.prosSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.prosSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                navigateToViewPageAction: pageConfig.prosTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminConProsViewPage,
                                                              arguments: AdminConProsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshCon(targetStore);
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
                                                      pageStore.pageState.disabledByLoading = true;
                                                      AdminProStore cloned = AdminProStore.clone(element);
                                                      var res = await navigation.open(Routes.adminConProsUpdatePage,
                                                          arguments: AdminConProsUpdatePageArguments(targetStore: cloned));
                                                      if (res != null) {
                                                        try {
                                                          await pageStore.updateProsPro(cloned, targetStore);
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Edit');
                                                        }
                                                      }
                                                      pageStore.pageState.disabledByLoading = false;
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading || !element?.internal__deletable ?? true,
                                                    label: AppLocalizations.of(context).lookUpValue(context, 'Delete'),
                                                    icon: Icon(getIconByString('delete_forever')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.deleteProsPro(element, targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, 'Delete');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    icon: Icon(getIconByString('thumb-up')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.edemokraciaAdminProVoteUp(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshCon(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    icon: Icon(getIconByString('thumb-down')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.edemokraciaAdminProVoteDown(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshCon(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    label: AppLocalizations.of(context).lookUpValue(context, 'Add argument'),
                                                    icon: Icon(getIconByString('account-voice')),
                                                    action: (element) async {
                                                      var ret = await navigation.open(Routes.adminProCreateSubArgumentOperationInputPage, arguments:
                                                          AdminProCreateSubArgumentOperationInputPageArguments(operationCall: (CreateArgumentInputStore input,
                                                              AdminProCreateSubArgumentOperationInputPageStore inputPageStore) async {
                                                        bool callSuccessful = false;

                                                        try {
                                                          await pageStore.edemokraciaAdminProCreateSubArgument(input, element);

                                                          callSuccessful = true;
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add argument');
                                                        }
                                                        return callSuccessful;
                                                      }));

                                                      if (ret != null) {
                                                        try {
                                                          await pageStore.refreshCon(targetStore);
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
                                                      var ret = await navigation.open(Routes.adminProCreateCommentOperationInputPage, arguments:
                                                          AdminProCreateCommentOperationInputPageArguments(operationCall: (CreateCommentInputStore input,
                                                              AdminProCreateCommentOperationInputPageStore inputPageStore) async {
                                                        bool callSuccessful = false;

                                                        try {
                                                          await pageStore.edemokraciaAdminProCreateComment(input, element);

                                                          callSuccessful = true;
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add comment');
                                                        }
                                                        return callSuccessful;
                                                      }));

                                                      if (ret != null) {
                                                        try {
                                                          await pageStore.refreshCon(targetStore);
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add comment');
                                                        }
                                                      }
                                                    },
                                                  ),
                                                ],
                                              );
                                            }),
                                          ],
                                        ),
                                        JudoSpacer(
                                          col: 2.0,
                                          row: 13.0,
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 13.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 6.0,
                                          row: 13.0,
                                          children: [
                                            JudoLabel(
                                              col: 6.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Cons'),
                                              icon: Icon(getIconByString('chat-minus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminDebateConsViewConsTabletTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 13,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 6.0,
                                                row: 12.0,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.consTablePagingList,
                                                sortAscending: pageStore.consSortAsc,
                                                sortColumnIndex: pageStore.consSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.consSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                navigateToViewPageAction: pageConfig.consTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminConConsViewPage,
                                                              arguments: AdminConConsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshCon(targetStore);
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
                                                      pageStore.pageState.disabledByLoading = true;
                                                      AdminConStore cloned = AdminConStore.clone(element);
                                                      var res = await navigation.open(Routes.adminConConsUpdatePage,
                                                          arguments: AdminConConsUpdatePageArguments(targetStore: cloned));
                                                      if (res != null) {
                                                        try {
                                                          await pageStore.updateConsCon(cloned, targetStore);
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Edit');
                                                        }
                                                      }
                                                      pageStore.pageState.disabledByLoading = false;
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading || !element?.internal__deletable ?? true,
                                                    label: AppLocalizations.of(context).lookUpValue(context, 'Delete'),
                                                    icon: Icon(getIconByString('delete_forever')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.deleteConsCon(element, targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, 'Delete');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    icon: Icon(getIconByString('thumb-up')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.edemokraciaAdminConVoteUp(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshCon(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    icon: Icon(getIconByString('thumb-down')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.edemokraciaAdminConVoteDown(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshCon(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    label: AppLocalizations.of(context).lookUpValue(context, 'Add argument'),
                                                    icon: Icon(getIconByString('account-voice')),
                                                    action: (element) async {
                                                      var ret = await navigation.open(Routes.adminConCreateSubArgumentOperationInputPage, arguments:
                                                          AdminConCreateSubArgumentOperationInputPageArguments(operationCall: (CreateArgumentInputStore input,
                                                              AdminConCreateSubArgumentOperationInputPageStore inputPageStore) async {
                                                        bool callSuccessful = false;

                                                        try {
                                                          await pageStore.edemokraciaAdminConCreateSubArgument(input, element);

                                                          callSuccessful = true;
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add argument');
                                                        }
                                                        return callSuccessful;
                                                      }));

                                                      if (ret != null) {
                                                        try {
                                                          await pageStore.refreshCon(targetStore);
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
                                                      var ret = await navigation.open(Routes.adminConCreateCommentOperationInputPage, arguments:
                                                          AdminConCreateCommentOperationInputPageArguments(operationCall: (CreateCommentInputStore input,
                                                              AdminConCreateCommentOperationInputPageStore inputPageStore) async {
                                                        bool callSuccessful = false;

                                                        try {
                                                          await pageStore.edemokraciaAdminConCreateComment(input, element);

                                                          callSuccessful = true;
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add comment');
                                                        }
                                                        return callSuccessful;
                                                      }));

                                                      if (ret != null) {
                                                        try {
                                                          await pageStore.refreshCon(targetStore);
                                                        } catch (error) {
                                                          messageHandler.handleApiException(context, error, 'Add comment');
                                                        }
                                                      }
                                                    },
                                                  ),
                                                ],
                                              );
                                            }),
                                          ],
                                        ),
                                        JudoSpacer(
                                          col: 2.0,
                                          row: 13.0,
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
                              row: 53.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 8.0,
                                  row: 53.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 1.0,
                                      children: [
                                        JudoRow(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          col: 4.0,
                                          row: 1.0,
                                          children: [
                                            Observer(
                                                builder: (_) => JudoButton(
                                                      col: 4.0,
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                                                      icon: Icon(getIconByString('comment-text-multiple')),
                                                      loadingState: pageStore.createCommentButtonLoadingState,
                                                      order: 14,
                                                      disabled: pageStore.pageState.disabledByLoading || false,
                                                      onPressed: () async {
                                                        var ret = await navigation.open(Routes.adminConCreateCommentOperationInputPage, arguments:
                                                            AdminConCreateCommentOperationInputPageArguments(operationCall: (CreateCommentInputStore input,
                                                                AdminConCreateCommentOperationInputPageStore inputPageStore) async {
                                                          bool callSuccessful = false;

                                                          try {
                                                            await pageStore.edemokraciaAdminConCreateComment(input, targetStore);

                                                            callSuccessful = true;
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add comment');
                                                          }
                                                          return callSuccessful;
                                                        }));

                                                        if (ret != null) {
                                                          try {
                                                            await pageStore.refreshCon(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add comment');
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
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 52.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 8.0,
                                          row: 52.0,
                                          children: [
                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminDebateConsViewCommentsTabletTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 15,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 8.0,
                                                row: 52.0 - 1,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.commentsTablePagingList,
                                                sortAscending: pageStore.commentsSortAsc,
                                                sortColumnIndex: pageStore.commentsSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.commentsSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                navigateToViewPageAction: pageConfig.commentsTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminConCommentsViewPage,
                                                              arguments: AdminConCommentsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshCon(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        }
                                                      }
                                                    : null,
                                                rowActionList: [
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    icon: Icon(getIconByString('thumb-up')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.edemokraciaAdminCommentVoteUp(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshCon(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
                                                      }
                                                    },
                                                  ),
                                                  TableRowAction(
                                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                                    icon: Icon(getIconByString('thumb-down')),
                                                    action: (element) async {
                                                      try {
                                                        await pageStore.edemokraciaAdminCommentVoteDown(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshCon(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
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
                                                        pageStore.commentsTableItemsRangeEnd != 0
                                                            ? '${pageStore.commentsTableItemsRangeStart} - ${pageStore.commentsTableItemsRangeEnd}'
                                                            : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                                        style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                                      ),
                                                    ),
                                                  ),
                                                  Observer(
                                                    builder: (_) => Padding(
                                                      padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                      child: ElevatedButton(
                                                        onPressed: pageStore.commentsTablePreviousEnable
                                                            ? () async {
                                                                pageStore.commentsTablePreviousPage();
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
                                                        onPressed: pageStore.commentsTableNextEnable
                                                            ? () async {
                                                                pageStore.commentsTableNextPage();
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
                          ],
                          tabs: [
                            Tab(
                              icon: Icon(getIconByString('account-voice')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'Arguments'),
                            ),
                            Tab(
                              icon: Icon(getIconByString('comment-text-multiple')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'Comments'),
                            ),
                          ]),
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
