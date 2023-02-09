//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.admin.issues.view;

Widget getAdminAdminIssuesViewMobilePage(
    BuildContext context, AdminIssueStore targetStore, AdminAdminIssuesViewPageStore pageStore, AdminAdminIssuesViewConfig pageConfig) {
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
              row: 24.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 24.142857142857142,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 4.0,
                      row: 10.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 4.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Issue'),
                          icon: Icon(getIconByString('clipboard')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 4.0,
                          row: 9.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 4.0,
                              row: 9.0,
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
                                        builder: (_) => JudoComboBox<EdemokraciaIssueStatus>(
                                              key: UniqueKey(),
                                              order: 2,
                                              col: 4.0,
                                              icon: Icon(getIconByString('list')),
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Status'),
                                              inCard: true,
                                              readOnly: true,
                                              mandatory: true,
                                              items: EdemokraciaIssueStatus.values,
                                              value: targetStore.status,
                                              dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaIssueStatus>(
                                                  value: value,
                                                  child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                            )),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: UniqueKey(),
                                        order: 3,
                                        col: 4.0,
                                        readOnly: true,
                                        use24HourFormat: true,
                                        initialDate: targetStore.created,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                                        icon: Icon(getIconByString('schedule')),
                                        inCard: true,
                                      ),
                                    ),
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
                                              order: 4,
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
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 4.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Create debate'),
                                              icon: Icon(getIconByString('wechat')),
                                              loadingState: pageStore.createDebateButtonLoadingState,
                                              order: 5,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                var ret = await navigation.open(Routes.adminIssueCreateDebateOperationInputPage, arguments:
                                                    AdminIssueCreateDebateOperationInputPageArguments(operationCall:
                                                        (CreateDebateInputStore input, AdminIssueCreateDebateOperationInputPageStore inputPageStore) async {
                                                  bool callSuccessful = false;

                                                  try {
                                                    var store = await pageStore.edemokraciaAdminIssueCreateDebate(input, targetStore);

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
                                                    await pageStore.refreshIssue(targetStore);
                                                  } catch (error) {
                                                    messageHandler.handleApiException(context, error, 'Create debate');
                                                  }
                                                }
                                              },
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
                                        order: 6,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Owner'),
                                        icon: Icon(getIconByString('account')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 4.0,
                                        labelList: [
                                          targetStore.owner?.representation?.toString(),
                                        ],
                                        actions: [
                                          targetStore.owner != null
                                              ? IconButton(
                                                  icon: Icon(
                                                    Icons.visibility,
                                                  ),
                                                  onPressed: pageStore.pageState.disabledByLoading
                                                      ? null
                                                      : () async {
                                                          var response = await navigation.open(Routes.adminIssueOwnerViewPage,
                                                              arguments:
                                                                  AdminIssueOwnerViewPageArguments(ownerStore: targetStore, targetStore: targetStore.owner));
                                                          try {
                                                            await pageStore.refreshIssue(targetStore);
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Observer(
                      builder: (_) => JudoTab(
                          col: 4.0,
                          row: 14.0,
                          order: 7,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::issues_other').tabIndex,
                          setTabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::issues_other').setTabIndex,
                          tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 13.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 12.0,
                                  children: [
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
                                            // COMPOSITION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo =
                                                  EdemokraciaAdminAdminIssuesViewAttachmentsMobileTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 8,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 4.0,
                                                row: 12.0,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.attachmentsTablePagingList,
                                                sortAscending: pageStore.attachmentsSortAsc,
                                                sortColumnIndex: pageStore.attachmentsSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.attachmentsSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                tableActions: {
                                                  0: JudoMenuItemData(
                                                      value: 0,
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Create'),
                                                      icon: Icon(getIconByString('note_add')),
                                                      disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                                      onSelected: () async {
                                                        var created = await navigation.open(Routes.adminIssueAttachmentsCreatePage,
                                                            arguments: AdminIssueAttachmentsCreatePageArguments(ownerStore: targetStore));
                                                        if (created != null) {
                                                          try {
                                                            await pageStore.createAttachments(targetStore, created);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Create');
                                                          }
                                                        }
                                                      }),
                                                },
                                                navigateToViewPageAction: pageConfig.attachmentsTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminIssueAttachmentsViewPage,
                                                              arguments: AdminIssueAttachmentsViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshIssue(targetStore);
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
                                                      AdminIssueAttachmentStore cloned = AdminIssueAttachmentStore.clone(element);
                                                      var res = await navigation.open(Routes.adminIssueAttachmentsUpdatePage,
                                                          arguments: AdminIssueAttachmentsUpdatePageArguments(targetStore: cloned));
                                                      if (res != null) {
                                                        try {
                                                          await pageStore.updateAttachmentsIssueAttachment(cloned, targetStore);
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
                                                        await pageStore.deleteAttachmentsIssueAttachment(element, targetStore);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, 'Delete');
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
                              row: 13.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 12.0,
                                  children: [
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
                                                  EdemokraciaAdminAdminIssuesViewCategoriesMobileTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 9,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 4.0,
                                                row: 12.0,
                                                dataInfo: dataInfo,
                                                rowList: pageStore.categoriesTablePagingList,
                                                sortAscending: pageStore.categoriesSortAsc,
                                                sortColumnIndex: pageStore.categoriesSortColumnIndex,
                                                sortInitially: true,
                                                onSort: (int columnIndex, bool asc) {
                                                  pageStore.categoriesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                },
                                                navigateToViewPageAction: pageConfig.categoriesTableConfig.rowClickNavigate
                                                    ? (element) async {
                                                        if (element != null) {
                                                          await navigation.open(Routes.adminIssueCategoriesViewPage,
                                                              arguments: AdminIssueCategoriesViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshIssue(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        }
                                                      }
                                                    : null,
                                                rowActionList: [],
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
                              row: 13.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 12.0,
                                  children: [
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
                                              var dataInfo = EdemokraciaAdminAdminIssuesViewDebatesMobileTable(context, pageStore, pageConfig, disabled: false);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 10,
                                                disabled: pageStore.pageState.disabledByLoading,
                                                col: 4.0,
                                                row: 12.0,
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
                                                          await navigation.open(Routes.adminIssueDebatesViewPage,
                                                              arguments: AdminIssueDebatesViewPageArguments(ownerStore: targetStore, targetStore: element));
                                                          try {
                                                            await pageStore.refreshIssue(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'View');
                                                          }
                                                        }
                                                      }
                                                    : null,
                                                rowActionList: [],
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
                              row: 13.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 13.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
                                      row: 13.0,
                                      children: [
                                        JudoRow(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          col: 4.0,
                                          row: 13.0,
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
                                                    Observer(
                                                        builder: (_) => JudoButton(
                                                              col: 4.0,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                                                              icon: Icon(getIconByString('comment-text-multiple')),
                                                              loadingState: pageStore.createCommentButtonLoadingState,
                                                              order: 11,
                                                              disabled: pageStore.pageState.disabledByLoading || false,
                                                              onPressed: () async {
                                                                var ret = await navigation.open(Routes.adminIssueCreateCommentOperationInputPage, arguments:
                                                                    AdminIssueCreateCommentOperationInputPageArguments(operationCall:
                                                                        (CreateCommentInputStore input,
                                                                            AdminIssueCreateCommentOperationInputPageStore inputPageStore) async {
                                                                  bool callSuccessful = false;

                                                                  try {
                                                                    await pageStore.edemokraciaAdminIssueCreateComment(input, targetStore);

                                                                    callSuccessful = true;
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'Add comment');
                                                                  }
                                                                  return callSuccessful;
                                                                }));

                                                                if (ret != null) {
                                                                  try {
                                                                    await pageStore.refreshIssue(targetStore);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'Add comment');
                                                                  }
                                                                }
                                                              },
                                                            )),
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
                                                          var dataInfo = EdemokraciaAdminAdminIssuesViewCommentsMobileTable(context, pageStore, pageConfig,
                                                              disabled: false);
                                                          return JudoTable(
                                                            key: UniqueKey(),
                                                            order: 12,
                                                            disabled: pageStore.pageState.disabledByLoading,
                                                            col: 4.0,
                                                            row: 12.0 - 1,
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
                                                                      await navigation.open(Routes.adminIssueCommentsViewPage,
                                                                          arguments: AdminIssueCommentsViewPageArguments(
                                                                              ownerStore: targetStore, targetStore: element));
                                                                      try {
                                                                        await pageStore.refreshIssue(targetStore);
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

                                                                    await pageStore.refreshIssue(targetStore);
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

                                                                    await pageStore.refreshIssue(targetStore);
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
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                          tabs: [
                            Tab(
                              icon: Icon(getIconByString('paperclip')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'Attachments'),
                            ),
                            Tab(
                              icon: Icon(getIconByString('file-tree')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'Categories'),
                            ),
                            Tab(
                              icon: Icon(getIconByString('wechat')),
                              text: AppLocalizations.of(context).lookUpValue(context, 'Debates'),
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
