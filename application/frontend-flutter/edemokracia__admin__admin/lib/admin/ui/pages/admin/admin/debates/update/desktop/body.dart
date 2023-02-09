//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.admin.debates.update;

Widget getAdminAdminDebatesUpdateDesktopPage(BuildContext context, AdminDebateStore targetStore, AdminAdminDebatesUpdatePageStore pageStore,
    AdminAdminDebatesUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
              col: 12.0,
              row: 24.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 24.142857142857142,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 9.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 12.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Debate'),
                          icon: Icon(getIconByString('wechat')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 12.0,
                          row: 8.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 12.0,
                              row: 8.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: inputWidgetKeyMap['title'],
                                              order: 1,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['title'].message,
                                              col: 8.0,
                                              maxLength: 255 ?? 250,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Title'),
                                              icon: Icon(getIconByString('text_fields')),
                                              inCard: true,
                                              initialValue: targetStore.title,
                                              mandatory: true,
                                              onChanged: (value) {
                                                targetStore.setTitle(value.toString());
                                              },
                                              onBlur: () {
                                                validateMissingRequiredAttribute(
                                                    context, pageStore.validationAttributeErrorMessageMap['title'], targetStore.title);
                                                if (pageConfig.postTitleChanged != null) {
                                                  pageConfig.postTitleChanged(targetStore.title, pageStore: pageStore, targetStore: targetStore);
                                                }
                                              },
                                            )),
                                    Observer(
                                        builder: (_) => JudoComboBox<EdemokraciaDebateStatus>(
                                              key: inputWidgetKeyMap['status'],
                                              order: 2,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['status'].message,
                                              col: 2.0,
                                              icon: Icon(getIconByString('list')),
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Status'),
                                              inCard: true,
                                              mandatory: true,
                                              items: EdemokraciaDebateStatus.values,
                                              value: targetStore.status,
                                              onChanged: (value) {
                                                targetStore.setStatus(value);
                                                validateMissingRequiredAttribute(
                                                    context, pageStore.validationAttributeErrorMessageMap['status'], targetStore.status);
                                                if (pageConfig.postStatusChanged != null) {
                                                  pageConfig.postStatusChanged(targetStore.status, pageStore: pageStore, targetStore: targetStore);
                                                }
                                              },
                                              dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaDebateStatus>(
                                                  value: value,
                                                  child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                            )),
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: inputWidgetKeyMap['closeAt'],
                                        order: 3,
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['closeAt'].message,
                                        col: 2.0,
                                        use24HourFormat: true,
                                        initialDate: targetStore.closeAt,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Close at'),
                                        icon: Icon(getIconByString('schedule')),
                                        inCard: true,
                                        mandatory: true,
                                        onChanged: (value) {
                                          targetStore.setCloseAt(value);
                                          if (pageConfig.postCloseAtChanged != null) {
                                            pageConfig.postCloseAtChanged(targetStore.closeAt, pageStore: pageStore, targetStore: targetStore);
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['issue'].message,
                                        order: 4,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Issue'),
                                        icon: Icon(getIconByString('file-document')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 8.0,
                                        labelList: [
                                          targetStore.issue?.representation?.toString(),
                                        ],
                                        actions: [],
                                      );
                                    }),

                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['createdBy'].message,
                                        order: 5,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created by'),
                                        icon: Icon(getIconByString('account')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 4.0,
                                        labelList: [
                                          targetStore.createdBy?.representation?.toString(),
                                        ],
                                        actions: [],
                                      );
                                    }),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 4.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: inputWidgetKeyMap['description'],
                                              order: 6,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['description'].message,
                                              col: 12.0,
                                              row: 4.0,
                                              multiline: true,
                                              inCard: true,
                                              maxLength: 2000 ?? 250,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Description'),
                                              icon: Icon(getIconByString('text_fields')),
                                              initialValue: targetStore.description,
                                              mandatory: true,
                                              onChanged: (value) {
                                                targetStore.setDescription(value.toString());
                                              },
                                              onBlur: () {
                                                if (pageConfig.postDescriptionChanged != null) {
                                                  pageConfig.postDescriptionChanged(targetStore.description, pageStore: pageStore, targetStore: targetStore);
                                                }
                                              },
                                            )),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['voteDefinition'].message,
                                        order: 7,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'VoteDefinition'),
                                        icon: Icon(getIconByString('table_rows')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 12.0,
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
                                        actions: [],
                                      );
                                    }),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 4.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Close debate'),
                                              icon: Icon(getIconByString('wechat')),
                                              loadingState: pageStore.closeDebateButtonLoadingState,
                                              order: 8,
                                              disabled: pageStore.pageState.disabledByLoading || true,
                                            )),
                                    JudoSpacer(
                                      col: 8.0,
                                    ),
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
                          col: 12.0,
                          row: 15.0,
                          order: 9,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::debates_tabBar').tabIndex,
                          setTabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::debates_tabBar').setTabIndex,
                          tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 12.0,
                              row: 14.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 12.0,
                                  row: 14.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 1.0,
                                      children: [
                                        JudoRow(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          col: 12.0,
                                          row: 1.0,
                                          children: [
                                            Observer(
                                                builder: (_) => JudoButton(
                                                      col: 4.0,
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Add argument'),
                                                      icon: Icon(getIconByString('account-voice')),
                                                      loadingState: pageStore.createArgumentButtonLoadingState,
                                                      order: 10,
                                                      disabled: pageStore.pageState.disabledByLoading || true,
                                                    )),
                                            JudoSpacer(
                                              col: 8.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 13.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 6.0,
                                          row: 13.0,
                                          children: [
                                            JudoLabel(
                                              col: 6.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Pro'),
                                              icon: Icon(getIconByString('chat-plus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminAdminDebatesEditProsDesktopTable(context, pageStore, pageConfig, disabled: true);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 11,
                                                disabled: true,
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
                                                rowActionList: [],
                                              );
                                            }),
                                          ],
                                        ),
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 6.0,
                                          row: 13.0,
                                          children: [
                                            JudoLabel(
                                              col: 6.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Contra'),
                                              icon: Icon(getIconByString('chat-minus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminAdminDebatesEditConsDesktopTable(context, pageStore, pageConfig, disabled: true);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 12,
                                                disabled: true,
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
                              col: 12.0,
                              row: 14.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 12.0,
                                  row: 13.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 1.0,
                                      children: [
                                        JudoRow(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          col: 12.0,
                                          row: 1.0,
                                          children: [
                                            Observer(
                                                builder: (_) => JudoButton(
                                                      col: 4.0,
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                                                      icon: Icon(getIconByString('comment-text-multiple')),
                                                      loadingState: pageStore.createCommentButtonLoadingState,
                                                      order: 13,
                                                      disabled: pageStore.pageState.disabledByLoading || true,
                                                    )),
                                            JudoSpacer(
                                              col: 8.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 12.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 12.0,
                                          row: 12.0,
                                          children: [
                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo =
                                                  EdemokraciaAdminAdminDebatesEditCommentsDesktopTable(context, pageStore, pageConfig, disabled: true);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 14,
                                                disabled: true,
                                                col: 12.0,
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
