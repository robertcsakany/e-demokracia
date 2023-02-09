//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.admin.issues.update;

Widget getAdminAdminIssuesUpdateDesktopPage(BuildContext context, AdminIssueStore targetStore, AdminAdminIssuesUpdatePageStore pageStore,
    AdminAdminIssuesUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 22.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 22.142857142857142,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 8.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 12.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Issue'),
                          icon: Icon(getIconByString('clipboard')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 12.0,
                          row: 7.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 12.0,
                              row: 7.0,
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
                                    Observer(
                                        builder: (_) => JudoComboBox<EdemokraciaIssueStatus>(
                                              key: inputWidgetKeyMap['status'],
                                              order: 2,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['status'].message,
                                              col: 4.0,
                                              icon: Icon(getIconByString('list')),
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Status'),
                                              inCard: true,
                                              mandatory: true,
                                              items: EdemokraciaIssueStatus.values,
                                              value: targetStore.status,
                                              onChanged: (value) {
                                                targetStore.setStatus(value);
                                                validateMissingRequiredAttribute(
                                                    context, pageStore.validationAttributeErrorMessageMap['status'], targetStore.status);
                                                if (pageConfig.postStatusChanged != null) {
                                                  pageConfig.postStatusChanged(targetStore.status, pageStore: pageStore, targetStore: targetStore);
                                                }
                                              },
                                              dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaIssueStatus>(
                                                  value: value,
                                                  child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                            )),
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: inputWidgetKeyMap['created'],
                                        order: 3,
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['created'].message,
                                        col: 4.0,
                                        readOnly: true,
                                        use24HourFormat: true,
                                        initialDate: targetStore.created,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                                        icon: Icon(getIconByString('schedule')),
                                        inCard: true,
                                        onChanged: (value) {
                                          targetStore.setCreated(value);
                                        },
                                      ),
                                    ),
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
                                              order: 4,
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
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 4.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Create debate'),
                                              icon: Icon(getIconByString('wechat')),
                                              loadingState: pageStore.createDebateButtonLoadingState,
                                              order: 5,
                                              disabled: pageStore.pageState.disabledByLoading || true,
                                            )),
                                    JudoSpacer(
                                      col: 8.0,
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
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['owner'].message,
                                        order: 6,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Owner'),
                                        icon: Icon(getIconByString('account')),
                                        inCard: true,
                                        col: 12.0,
                                        labelList: [
                                          targetStore.owner?.representation?.toString(),
                                        ],
                                        setAction: targetStore.internal__updatable
                                            ? () async {
                                                var selected = await judoSelectAdminAdminIssuesUpdateOwnerDialog(
                                                  context: context,
                                                  ownerStore: targetStore,
                                                  pageStore: pageStore,
                                                  pageConfig: pageConfig,
                                                );

                                                if (selected != null) {
                                                  try {
                                                    // it's not a real future call, await not necessary
                                                    pageStore.setOwner(targetStore, selected);
                                                  } catch (error) {
                                                    messageHandler.handleApiException(context, error, 'Select');
                                                  }
                                                }
                                              }
                                            : null,
                                        actions: [
                                          (targetStore.internal__updatable && targetStore.owner != null)
                                              ? IconButton(
                                                  icon: Icon(
                                                    Icons.link_off,
                                                  ),
                                                  onPressed: pageStore.pageState.disabledByLoading
                                                      ? null
                                                      : () async {
                                                          try {
                                                            // it's not a real future call, await not necessary
                                                            pageStore.unsetOwner(targetStore);
                                                          } catch (error) {
                                                            messageHandler.handleApiException(context, error, 'Unselect');
                                                          }
                                                        },
                                                )
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
                          col: 12.0,
                          row: 14.0,
                          order: 7,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::issues_other').tabIndex,
                          setTabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::issues_other').setTabIndex,
                          tabContent: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 12.0,
                              row: 13.0,
                              children: [
                                JudoColumn(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  col: 12.0,
                                  row: 12.0,
                                  children: [
                                    // COMPOSITION TABLE

                                    Observer(builder: (_) {
                                      var dataInfo = EdemokraciaAdminAdminIssuesEditAttachmentsDesktopTable(context, pageStore, pageConfig, disabled: true);
                                      return JudoTable(
                                        key: UniqueKey(),
                                        order: 8,
                                        disabled: true,
                                        col: 12.0,
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
                                        rowActionList: [],
                                      );
                                    }),
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
                                  col: 12.0,
                                  row: 12.0,
                                  children: [
                                    // AGGREGATION TABLE

                                    Observer(builder: (_) {
                                      var dataInfo = EdemokraciaAdminAdminIssuesEditCategoriesDesktopTable(context, pageStore, pageConfig, disabled: false);
                                      return JudoTable(
                                        key: UniqueKey(),
                                        order: 9,
                                        disabled: pageStore.pageState.disabledByLoading,
                                        col: 12.0,
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
                                        tableActions: {
                                          0: JudoMenuItemData(
                                              value: 0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                              icon: Icon(getIconByString('link_off')),
                                              disabled: pageStore.pageState.disabledByLoading,
                                              onSelected: () async {
                                                showDialog(
                                                    context: context,
                                                    builder: (_) => new AlertDialog(
                                                          title: new Text(
                                                            AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                          ),
                                                          content: new Text(
                                                            AppLocalizations.of(context)
                                                                .lookUpValue(context, 'Are you sure you would like to clear all elements in the list?'),
                                                          ),
                                                          actions: <Widget>[
                                                            new TextButton(
                                                              onPressed: () {
                                                                Navigator.of(context).pop();
                                                              },
                                                              child: new Text(
                                                                AppLocalizations.of(context).lookUpValue(context, 'No'),
                                                              ),
                                                            ),
                                                            new ElevatedButton(
                                                              onPressed: () async {
                                                                try {
                                                                  // it's not a real future call, await not necessary
                                                                  pageStore.setCategories(targetStore, []);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Clear');
                                                                }
                                                                Navigator.of(context).pop();
                                                              },
                                                              child: new Text(
                                                                AppLocalizations.of(context).lookUpValue(context, 'Yes'),
                                                              ),
                                                            ),
                                                          ],
                                                        ));
                                              }),
                                          1: JudoMenuItemData(
                                              value: 1,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Add'),
                                              icon: Icon(getIconByString('add_link')),
                                              disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                              onSelected: () async {
                                                var selected = await judoSelectAdminAdminIssuesUpdateCategoriesDialog(
                                                  context: context,
                                                  ownerStore: targetStore,
                                                  pageStore: pageStore,
                                                  pageConfig: pageConfig,
                                                  dialogTypeAdder: true,
                                                );

                                                if (selected != null) {
                                                  try {
                                                    // it's not a real future call, await not necessary
                                                    pageStore.addCategories(targetStore, selected);
                                                  } catch (error) {
                                                    messageHandler.handleApiException(context, error, 'Add');
                                                  }
                                                }
                                              }),
                                        },
                                        rowActionList: [
                                          TableRowAction(
                                            disabled: (element) => pageStore.pageState.disabledByLoading || !targetStore?.internal__updatable ?? true,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Remove'),
                                            icon: Icon(getIconByString('link_off')),
                                            action: (element) {
                                              try {
                                                // it's not a real future call, await not necessary
                                                pageStore.removeCategories(targetStore, element);
                                              } catch (error) {
                                                messageHandler.handleApiException(context, error, 'Remove');
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
                              col: 12.0,
                              row: 13.0,
                              children: [
                                JudoColumn(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  col: 12.0,
                                  row: 12.0,
                                  children: [
                                    // AGGREGATION TABLE

                                    Observer(builder: (_) {
                                      var dataInfo = EdemokraciaAdminAdminIssuesEditDebatesDesktopTable(context, pageStore, pageConfig, disabled: true);
                                      return JudoTable(
                                        key: UniqueKey(),
                                        order: 10,
                                        disabled: true,
                                        col: 12.0,
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
                                        rowActionList: [],
                                      );
                                    }),
                                  ],
                                ),
                              ],
                            ),
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 12.0,
                              row: 13.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 13.0,
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
                                            Observer(
                                                builder: (_) => JudoButton(
                                                      col: 4.0,
                                                      label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                                                      icon: Icon(getIconByString('comment-text-multiple')),
                                                      loadingState: pageStore.createCommentButtonLoadingState,
                                                      order: 11,
                                                      disabled: pageStore.pageState.disabledByLoading || true,
                                                    )),
                                            JudoSpacer(
                                              col: 8.0,
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
                                                      EdemokraciaAdminAdminIssuesEditCommentsDesktopTable(context, pageStore, pageConfig, disabled: true);
                                                  return JudoTable(
                                                    key: UniqueKey(),
                                                    order: 12,
                                                    disabled: true,
                                                    col: 12.0,
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
