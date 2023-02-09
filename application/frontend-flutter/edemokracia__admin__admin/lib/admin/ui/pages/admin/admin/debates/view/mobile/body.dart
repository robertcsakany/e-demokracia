//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.admin.debates.view;

Widget getAdminAdminDebatesViewMobilePage(
    BuildContext context, AdminDebateStore targetStore, AdminAdminDebatesViewPageStore pageStore, AdminAdminDebatesViewConfig pageConfig) {
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
              col: 4.0,
              row: 39.14285714285714,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 39.14285714285714,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 4.0,
                      row: 11.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 4.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Debate'),
                          icon: Icon(getIconByString('wechat')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 4.0,
                          row: 10.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 4.0,
                              row: 10.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: UniqueKey(),
                                              order: 1,
                                              col: 4.0,
                                              maxLength: 255 ?? 250,
                                              readOnly: true,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Title'),
                                              icon: Icon(getIconByString('text_fields')),
                                              inCard: true,
                                              initialValue: targetStore.title,
                                            )),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoComboBox<EdemokraciaDebateStatus>(
                                              key: UniqueKey(),
                                              order: 2,
                                              col: 2.0,
                                              icon: Icon(getIconByString('list')),
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Status'),
                                              inCard: true,
                                              readOnly: true,
                                              mandatory: true,
                                              items: EdemokraciaDebateStatus.values,
                                              value: targetStore.status,
                                              dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaDebateStatus>(
                                                  value: value,
                                                  child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                            )),
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: UniqueKey(),
                                        order: 3,
                                        col: 2.0,
                                        readOnly: true,
                                        use24HourFormat: true,
                                        initialDate: targetStore.closeAt,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Close at'),
                                        icon: Icon(getIconByString('schedule')),
                                        inCard: true,
                                      ),
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        order: 4,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Issue'),
                                        icon: Icon(getIconByString('file-document')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 4.0,
                                        labelList: [
                                          targetStore.issue?.representation?.toString(),
                                        ],
                                        actions: [
                                          targetStore.issue != null
                                              ? IconButton(
                                                  icon: Icon(
                                                    Icons.visibility,
                                                  ),
                                                  onPressed: pageStore.pageState.disabledByLoading
                                                      ? null
                                                      : () async {
                                                          var response = await navigation.open(Routes.adminDebateIssueViewPage,
                                                              arguments:
                                                                  AdminDebateIssueViewPageArguments(ownerStore: targetStore, targetStore: targetStore.issue));
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        })
                                              : null,
                                        ],
                                      );
                                    }),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        order: 5,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created by'),
                                        icon: Icon(getIconByString('account')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 4.0,
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
                                                          var response = await navigation.open(Routes.adminDebateCreatedByViewPage,
                                                              arguments: AdminDebateCreatedByViewPageArguments(
                                                                  ownerStore: targetStore, targetStore: targetStore.createdBy));
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        })
                                              : null,
                                        ],
                                      );
                                    }),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 4.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: UniqueKey(),
                                              order: 6,
                                              col: 4.0,
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
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        order: 7,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'VoteDefinition'),
                                        icon: Icon(getIconByString('table_rows')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 4.0,
                                        labelList: [
                                          targetStore.voteDefinition?.title?.toString(),
                                          targetStore.voteDefinition?.created != null
                                              ? DateFormat('yyyy-MM-dd HH:mm').format(targetStore.voteDefinition.created)
                                              : '',
                                          targetStore.voteDefinition?.status != null
                                              ? AppLocalizations.of(context).lookUpValue(context, targetStore.voteDefinition.status.toString().split('.').last)
                                              : '',
                                          targetStore.voteDefinition?.closeAt != null
                                              ? DateFormat('yyyy-MM-dd HH:mm').format(targetStore.voteDefinition.closeAt)
                                              : '',
                                        ],
                                        actions: [
                                          targetStore.voteDefinition != null
                                              ? IconButton(
                                                  icon: Icon(
                                                    Icons.visibility,
                                                  ),
                                                  onPressed: pageStore.pageState.disabledByLoading
                                                      ? null
                                                      : () async {
                                                          var response = await navigation.open(Routes.adminDebateVoteDefinitionViewPage,
                                                              arguments: AdminDebateVoteDefinitionViewPageArguments(
                                                                  ownerStore: targetStore, targetStore: targetStore.voteDefinition));
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        })
                                              : null,
                                        ],
                                      );
                                    }),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 4.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Close debate'),
                                              icon: Icon(getIconByString('wechat')),
                                              loadingState: pageStore.closeDebateButtonLoadingState,
                                              order: 8,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                var ret = await navigation.open(Routes.adminDebateCloseDebateOperationInputPage, arguments:
                                                    AdminDebateCloseDebateOperationInputPageArguments(operationCall:
                                                        (CloseDebateInputStore input, AdminDebateCloseDebateOperationInputPageStore inputPageStore) async {
                                                  bool callSuccessful = false;

                                                  try {
                                                    var store = await pageStore.edemokraciaAdminDebateCloseDebate(input, targetStore);

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
                                                    await pageStore.refreshDebate(targetStore);
                                                  } catch (error) {
                                                    messageHandler.handleApiException(context, error, 'Close debate');
                                                  }
                                                }
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
                          col: 4.0,
                          row: 28.0,
                          order: 9,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::debates_tabBar').tabIndex,
                          setTabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::debates_tabBar').setTabIndex,
                          tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 27.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 27.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
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
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Add argument'),
                                                      icon: Icon(getIconByString('account-voice')),
                                                      loadingState: pageStore.createArgumentButtonLoadingState,
                                                      order: 10,
                                                      disabled: pageStore.pageState.disabledByLoading || false,
                                                      onPressed: () async {
                                                        var ret = await navigation.open(Routes.adminDebateCreateArgumentOperationInputPage, arguments:
                                                            AdminDebateCreateArgumentOperationInputPageArguments(operationCall: (CreateArgumentInputStore input,
                                                                AdminDebateCreateArgumentOperationInputPageStore inputPageStore) async {
                                                          bool callSuccessful = false;

                                                          try {
                                                            await pageStore.edemokraciaAdminDebateCreateArgument(input, targetStore);

                                                            callSuccessful = true;
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add argument');
                                                          }
                                                          return callSuccessful;
                                                        }));

                                                        if (ret != null) {
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add argument');
                                                          }
                                                        }
                                                      },
                                                    )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
                                      row: 13.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 4.0,
                                          row: 13.0,
                                          children: [
                                            JudoLabel(
                                              col: 4.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Pro'),
                                              icon: Icon(getIconByString('chat-plus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminAdminDebatesViewProsMobileTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 11,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 4.0,
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
                                                          await navigation.open(Routes.adminDebateProsViewPage,
                                                              arguments: AdminDebateProsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
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
                                                      var res = await navigation.open(Routes.adminDebateProsUpdatePage,
                                                          arguments: AdminDebateProsUpdatePageArguments(targetStore: cloned));
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

                                                        await pageStore.refreshDebate(targetStore);
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

                                                        await pageStore.refreshDebate(targetStore);
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
                                                          await pageStore.refreshDebate(targetStore);
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
                                                          await pageStore.refreshDebate(targetStore);
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
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
                                      row: 13.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 4.0,
                                          row: 13.0,
                                          children: [
                                            JudoLabel(
                                              col: 4.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Contra'),
                                              icon: Icon(getIconByString('chat-minus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminAdminDebatesViewConsMobileTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 12,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 4.0,
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
                                                          await navigation.open(Routes.adminDebateConsViewPage,
                                                              arguments: AdminDebateConsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
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
                                                      var res = await navigation.open(Routes.adminDebateConsUpdatePage,
                                                          arguments: AdminDebateConsUpdatePageArguments(targetStore: cloned));
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

                                                        await pageStore.refreshDebate(targetStore);
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

                                                        await pageStore.refreshDebate(targetStore);
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
                                                          await pageStore.refreshDebate(targetStore);
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
                                                          await pageStore.refreshDebate(targetStore);
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
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 27.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 13.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
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
                                                      order: 13,
                                                      disabled: pageStore.pageState.disabledByLoading || false,
                                                      onPressed: () async {
                                                        var ret = await navigation.open(Routes.adminDebateCreateCommentOperationInputPage, arguments:
                                                            AdminDebateCreateCommentOperationInputPageArguments(operationCall: (CreateCommentInputStore input,
                                                                AdminDebateCreateCommentOperationInputPageStore inputPageStore) async {
                                                          bool callSuccessful = false;

                                                          try {
                                                            await pageStore.edemokraciaAdminDebateCreateComment(input, targetStore);

                                                            callSuccessful = true;
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add comment');
                                                          }
                                                          return callSuccessful;
                                                        }));

                                                        if (ret != null) {
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Add comment');
                                                          }
                                                        }
                                                      },
                                                    )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
                                      row: 12.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 4.0,
                                          row: 12.0,
                                          children: [
                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo =
                                                  EdemokraciaAdminAdminDebatesViewCommentsMobileTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 14,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 4.0,
                                                row: 12.0,
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
                                                          await navigation.open(Routes.adminDebateCommentsViewPage,
                                                              arguments: AdminDebateCommentsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshDebate(targetStore);
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
                                                      AdminCommentStore cloned = AdminCommentStore.clone(element);
                                                      var res = await navigation.open(Routes.adminDebateCommentsUpdatePage,
                                                          arguments: AdminDebateCommentsUpdatePageArguments(targetStore: cloned));
                                                      if (res != null) {
                                                        try {
                                                          await pageStore.updateCommentsComment(cloned, targetStore);
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
                                                        await pageStore.deleteCommentsComment(element, targetStore);
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
                                                        await pageStore.edemokraciaAdminCommentVoteUp(element);

                                                        messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                        ;

                                                        await pageStore.refreshDebate(targetStore);
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

                                                        await pageStore.refreshDebate(targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, '');
                                                      }
                                                    },
                                                  ),
                                                ],
                                              );
                                            }),
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
