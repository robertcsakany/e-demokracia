//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.admin.categories.view;

Widget getAdminAdminCategoriesViewDesktopPage(
    BuildContext context, AdminIssueCategoryStore targetStore, AdminAdminCategoriesViewPageStore pageStore, AdminAdminCategoriesViewConfig pageConfig) {
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
              row: 16.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 16.0,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 16.0,
                      children: [
                        JudoRow(
                          col: 12.0,
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
                                      initialValue: targetStore.title,
                                    )),
                            JudoSpacer(
                              col: 8.0,
                            ),
                          ],
                        ),

                        JudoRow(
                          col: 12.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: UniqueKey(),
                                      order: 2,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      readOnly: true,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'Description'),
                                      icon: Icon(getIconByString('text_fields')),
                                      initialValue: targetStore.description,
                                    )),
                            JudoSpacer(
                              col: 8.0,
                            ),
                          ],
                        ),

                        // AGGREGATION LINK

                        Observer(builder: (_) {
                          return JudoLink(
                            order: 3,
                            label: AppLocalizations.of(context).lookUpValue(context, 'Owner'),
                            icon: Icon(getIconByString('account')),
                            readOnly: true,
                            col: 12.0,
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
                                              var response = await navigation.open(Routes.adminIssueCategoryOwnerViewPage,
                                                  arguments: AdminIssueCategoryOwnerViewPageArguments(ownerStore: targetStore, targetStore: targetStore.owner));
                                              try {
                                                await pageStore.refreshIssueCategory(targetStore);
                                              } catch (error) {
                                                messageHandler.handleApiException(context, error, 'View');
                                              }
                                            })
                                  : null,
                            ],
                          );
                        }),

                        JudoColumn(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          col: 12.0,
                          row: 13.0,
                          children: [
                            JudoLabel(
                              col: 12.0,
                              label: AppLocalizations.of(context).lookUpValue(context, 'Subcategories'),
                              icon: Icon(getIconByString('file-tree')),
                              iconMargin: 4.0,
                            ),

                            // COMPOSITION TABLE

                            Observer(builder: (_) {
                              var dataInfo = EdemokraciaAdminAdminCategoriesViewSubcategoriesDesktopTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                order: 4,
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 12.0,
                                row: 12.0,
                                dataInfo: dataInfo,
                                rowList: pageStore.subcategoriesTablePagingList,
                                sortAscending: pageStore.subcategoriesSortAsc,
                                sortColumnIndex: pageStore.subcategoriesSortColumnIndex,
                                sortInitially: true,
                                onSort: (int columnIndex, bool asc) {
                                  pageStore.subcategoriesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex, asc,
                                      TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                },
                                tableActions: {
                                  0: JudoMenuItemData(
                                      value: 0,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'Create'),
                                      icon: Icon(getIconByString('note_add')),
                                      disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                      onSelected: () async {
                                        var created = await navigation.open(Routes.adminIssueCategorySubcategoriesCreatePage,
                                            arguments: AdminIssueCategorySubcategoriesCreatePageArguments(ownerStore: targetStore));
                                        if (created != null) {
                                          try {
                                            await pageStore.createSubcategories(targetStore, created);
                                          } catch (error) {
                                            messageHandler.handleApiException(context, error, 'Create');
                                          }
                                        }
                                      }),
                                },
                                navigateToViewPageAction: pageConfig.subcategoriesTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminIssueCategorySubcategoriesViewPage,
                                              arguments: AdminIssueCategorySubcategoriesViewPageArguments(ownerStore: targetStore, targetStore: element));
                                          try {
                                            await pageStore.refreshIssueCategory(targetStore);
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
                                      AdminIssueCategoryStore cloned = AdminIssueCategoryStore.clone(element);
                                      var res = await navigation.open(Routes.adminIssueCategorySubcategoriesUpdatePage,
                                          arguments: AdminIssueCategorySubcategoriesUpdatePageArguments(targetStore: cloned));
                                      if (res != null) {
                                        try {
                                          await pageStore.updateSubcategoriesIssueCategory(cloned, targetStore);
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
                                        await pageStore.deleteSubcategoriesIssueCategory(element, targetStore);
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
          ]),
        ),
      )
    ]),
  );
}
