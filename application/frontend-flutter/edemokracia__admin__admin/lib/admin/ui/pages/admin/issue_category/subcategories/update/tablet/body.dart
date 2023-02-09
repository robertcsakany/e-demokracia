//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.issue_category.subcategories.update;

Widget getAdminIssueCategorySubcategoriesUpdateTabletPage(BuildContext context, AdminIssueCategoryStore targetStore,
    AdminIssueCategorySubcategoriesUpdatePageStore pageStore, AdminIssueCategorySubcategoriesUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 16.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 16.0,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 16.0,
                      children: [
                        JudoRow(
                          col: 8.0,
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
                                      initialValue: targetStore.title,
                                      mandatory: true,
                                      onChanged: (value) {
                                        targetStore.setTitle(value.toString());
                                      },
                                      onBlur: () {
                                        validateMissingRequiredAttribute(context, pageStore.validationAttributeErrorMessageMap['title'], targetStore.title);
                                        if (pageConfig.postTitleChanged != null) {
                                          pageConfig.postTitleChanged(targetStore.title, pageStore: pageStore, targetStore: targetStore);
                                        }
                                      },
                                    )),
                            JudoSpacer(
                              col: 4.0,
                            ),
                          ],
                        ),

                        JudoRow(
                          col: 8.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: inputWidgetKeyMap['description'],
                                      order: 2,
                                      errorMessage: pageStore.validationAttributeErrorMessageMap['description'].message,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'Description'),
                                      icon: Icon(getIconByString('text_fields')),
                                      initialValue: targetStore.description,
                                      mandatory: true,
                                      onChanged: (value) {
                                        targetStore.setDescription(value.toString());
                                      },
                                      onBlur: () {
                                        validateMissingRequiredAttribute(
                                            context, pageStore.validationAttributeErrorMessageMap['description'], targetStore.description);
                                        if (pageConfig.postDescriptionChanged != null) {
                                          pageConfig.postDescriptionChanged(targetStore.description, pageStore: pageStore, targetStore: targetStore);
                                        }
                                      },
                                    )),
                            JudoSpacer(
                              col: 4.0,
                            ),
                          ],
                        ),

                        // AGGREGATION LINK

                        Observer(builder: (_) {
                          return JudoLink(
                            errorMessage: pageStore.validationAttributeErrorMessageMap['owner'].message,
                            order: 3,
                            label: AppLocalizations.of(context).lookUpValue(context, 'Owner'),
                            icon: Icon(getIconByString('account')),
                            col: 8.0,
                            labelList: [
                              targetStore.owner?.representation?.toString(),
                            ],
                            setAction: targetStore.internal__updatable
                                ? () async {
                                    var selected = await judoSelectAdminIssueCategorySubcategoriesUpdateOwnerDialog(
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

                        JudoColumn(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          col: 8.0,
                          row: 13.0,
                          children: [
                            JudoLabel(
                              col: 8.0,
                              label: AppLocalizations.of(context).lookUpValue(context, 'Subcategories'),
                              icon: Icon(getIconByString('file-tree')),
                              iconMargin: 4.0,
                            ),

                            // COMPOSITION TABLE

                            Observer(builder: (_) {
                              var dataInfo =
                                  EdemokraciaAdminIssueCategorySubcategoriesEditSubcategoriesTabletTable(context, pageStore, pageConfig, disabled: true);
                              return JudoTable(
                                key: UniqueKey(),
                                order: 4,
                                disabled: true,
                                col: 8.0,
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
          ]),
        ),
      )
    ]),
  );
}
