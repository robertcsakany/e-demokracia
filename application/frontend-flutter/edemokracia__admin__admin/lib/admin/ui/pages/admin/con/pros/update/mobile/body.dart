//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.con.pros.update;

Widget getAdminConProsUpdateMobilePage(
    BuildContext context, AdminProStore targetStore, AdminConProsUpdatePageStore pageStore, AdminConProsUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 64.14285714285714,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 64.14285714285714,
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
                          label: AppLocalizations.of(context).lookUpValue(context, 'Pro'),
                          icon: Icon(getIconByString('chat-plus')),
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
                                              key: inputWidgetKeyMap['title'],
                                              order: 1,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['title'].message,
                                              col: 4.0,
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
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: inputWidgetKeyMap['created'],
                                        order: 2,
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['created'].message,
                                        col: 3.0,
                                        use24HourFormat: true,
                                        initialDate: targetStore.created,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                                        icon: Icon(getIconByString('schedule')),
                                        inCard: true,
                                        mandatory: true,
                                        onChanged: (value) {
                                          targetStore.setCreated(value);
                                          if (pageConfig.postCreatedChanged != null) {
                                            pageConfig.postCreatedChanged(targetStore.created, pageStore: pageStore, targetStore: targetStore);
                                          }
                                        },
                                      ),
                                    ),
                                    JudoSpacer(
                                      col: 1.0,
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
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['createdBy'].message,
                                        order: 3,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created by'),
                                        icon: Icon(getIconByString('table_rows')),
                                        inCard: true,
                                        readOnly: true,
                                        col: 3.0,
                                        labelList: [
                                          targetStore.createdBy?.representation?.toString(),
                                        ],
                                        actions: [],
                                      );
                                    }),

                                    JudoSpacer(
                                      col: 1.0,
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
                                              key: inputWidgetKeyMap['description'],
                                              order: 4,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['description'].message,
                                              col: 4.0,
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
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 1.0,
                                              icon: Icon(getIconByString('thumb-up')),
                                              loadingState: pageStore.voteUpButtonLoadingState,
                                              order: 5,
                                              disabled: pageStore.pageState.disabledByLoading || true,
                                            )),
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: inputWidgetKeyMap['upVotes'],
                                              order: 6,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['upVotes'].message,
                                              col: 1.0,
                                              inCard: true,
                                              readOnly: true,
                                              initialValue: targetStore.upVotes?.toString(),
                                              precision: 9,
                                              scale: 0,
                                              onChanged: (value) => targetStore.setUpVotes(int.tryParse(value)),
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
                                              disabled: pageStore.pageState.disabledByLoading || true,
                                            )),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: inputWidgetKeyMap['downVotes'],
                                              order: 8,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['downVotes'].message,
                                              col: 1.0,
                                              inCard: true,
                                              readOnly: true,
                                              initialValue: targetStore.downVotes?.toString(),
                                              precision: 9,
                                              scale: 0,
                                              onChanged: (value) => targetStore.setDownVotes(int.tryParse(value)),
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
                                              disabled: pageStore.pageState.disabledByLoading || true,
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
                          row: 54.0,
                          order: 10,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Con::pros_tabBar').tabIndex,
                          setTabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Con::pros_tabBar').setTabIndex,
                          tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 53.0,
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
                                                      loadingState: pageStore.createSubArgumentButtonLoadingState,
                                                      order: 11,
                                                      disabled: pageStore.pageState.disabledByLoading || true,
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
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Pros'),
                                              icon: Icon(getIconByString('chat-plus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminConProsEditProsMobileTable(context, pageStore, pageConfig, disabled: true);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 12,
                                                disabled: true,
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
                                                rowActionList: [],
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
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Cons'),
                                              icon: Icon(getIconByString('chat-minus')),
                                              iconMargin: 4.0,
                                            ),

                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminConProsEditConsMobileTable(context, pageStore, pageConfig, disabled: true);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 13,
                                                disabled: true,
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
                              row: 53.0,
                              children: [
                                JudoColumn(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  col: 4.0,
                                  row: 53.0,
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
                                                      order: 14,
                                                      disabled: pageStore.pageState.disabledByLoading || true,
                                                    )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 4.0,
                                      row: 52.0,
                                      children: [
                                        JudoColumn(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          col: 4.0,
                                          row: 52.0,
                                          children: [
                                            // AGGREGATION TABLE

                                            Observer(builder: (_) {
                                              var dataInfo = EdemokraciaAdminConProsEditCommentsMobileTable(context, pageStore, pageConfig, disabled: true);
                                              return JudoTable(
                                                key: UniqueKey(),
                                                order: 15,
                                                disabled: true,
                                                col: 4.0,
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
                                                rowActionList: [],
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
