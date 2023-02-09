//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.admin.vote_definitions.table;

Widget getAdminAdminVoteDefinitionsTableTabletPage(
    BuildContext context, AdminAdminVoteDefinitionsTablePageStore pageStore, AdminAdminVoteDefinitionsTableConfig pageConfig) {
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
                col: 8.0,
                row: 12.0 + pageStore.getPlusRowSize,
                children: [
                  Observer(
                    builder: (_) => JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
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
                                  await pageStore.getVoteDefinitions();
                                  pageStore.tableService
                                      .storeFilters('EdemokraciaAdminAdminVoteDefinitionsTableVoteDefinitions', pageStore.availableFilterList);
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
                          switch (pageStore.adminVoteDefinitionsStoreFuture.status) {
                            case FutureStatus.pending:
                              return JudoLoadingProgress();
                            case FutureStatus.rejected:
                              return Container();
                            case FutureStatus.fulfilled:
                              var dataInfo =
                                  EdemokraciaAdminAdminVoteDefinitionsTableTransferObjectTableTabletTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 8.0,
                                row: 12.0 - 1,
                                dataInfo: dataInfo,
                                rowList: pageStore.voteDefinitionsStoreList.asObservable(),
                                sortAscending: pageStore.voteDefinitionsSortAsc,
                                sortColumnIndex: pageStore.voteDefinitionsSortColumnIndex,
                                onSort: (int columnIndex, bool asc) async {
                                  try {
                                    await pageStore.voteDefinitionsSetSort(
                                      context,
                                      dataInfo.getColumnFieldByIndex(columnIndex),
                                      columnIndex,
                                      asc,
                                    );
                                  } catch (error) {
                                    messageHandler.handleApiException(context, error, 'Sorting');
                                  }
                                },
                                navigateToViewPageAction: pageConfig.voteDefinitionsTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminAdminVoteDefinitionsViewPage(id: element.internal__signedIdentifier),
                                              arguments: AdminAdminVoteDefinitionsViewPageArguments());
                                          try {
                                            await pageStore.getVoteDefinitions();
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
                                      AdminVoteDefinitionStore cloned = AdminVoteDefinitionStore.clone(element);
                                      var res = await navigation.open(Routes.adminAdminVoteDefinitionsUpdatePage,
                                          arguments: AdminAdminVoteDefinitionsUpdatePageArguments(targetStore: cloned));
                                      if (res != null) {
                                        try {
                                          await pageStore.updateVoteDefinition(cloned);
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
                                        await pageStore.deleteVoteDefinition(element);
                                      } catch (error) {
                                        messageHandler.handleApiException(context, error, 'Delete');
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'VoteYesNo'),
                                    icon: Icon(getIconByString('chevron_right')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminVoteDefinitionVoteYesNoOperationInputPage, arguments:
                                          AdminVoteDefinitionVoteYesNoOperationInputPageArguments(operationCall:
                                              (YesNoVoteInputStore input, AdminVoteDefinitionVoteYesNoOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          await pageStore.edemokraciaAdminVoteDefinitionVoteYesNo(input, element);

                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteYesNo');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getVoteDefinitions();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteYesNo');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'VoteYesNoAbstain'),
                                    icon: Icon(getIconByString('chevron_right')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminVoteDefinitionVoteYesNoAbstainOperationInputPage, arguments:
                                          AdminVoteDefinitionVoteYesNoAbstainOperationInputPageArguments(operationCall: (YesNoAbstainVoteInputStore input,
                                              AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          await pageStore.edemokraciaAdminVoteDefinitionVoteYesNoAbstain(input, element);

                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteYesNoAbstain');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getVoteDefinitions();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteYesNoAbstain');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'VoteSelectAnswer'),
                                    icon: Icon(getIconByString('chevron_right')),
                                    action: (element) async {
                                      AdminVoteDefinitionStore cloned = AdminVoteDefinitionStore.clone(element);
                                      var selected = await judoSelectAdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialog(
                                        context: context,
                                        ownerStore: cloned,
                                        pageStore: pageStore,
                                        pageConfig: pageConfig,
                                      );

                                      if (selected != null) {
                                        try {
                                          await pageStore.edemokraciaAdminVoteDefinitionVoteSelectAnswer(selected, element);

                                          messageHandler.showSuccessMessage(context, 'Successful operation', 'VoteSelectAnswer');
                                          ;

                                          await pageStore.getVoteDefinitions();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteSelectAnswer');
                                        }
                                      }
                                    },
                                  ),
                                  TableRowAction(
                                    disabled: (element) => pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'VoteRating'),
                                    icon: Icon(getIconByString('chevron_right')),
                                    action: (element) async {
                                      var ret = await navigation.open(Routes.adminVoteDefinitionVoteRatingOperationInputPage, arguments:
                                          AdminVoteDefinitionVoteRatingOperationInputPageArguments(operationCall:
                                              (RatingVoteInputStore input, AdminVoteDefinitionVoteRatingOperationInputPageStore inputPageStore) async {
                                        bool callSuccessful = false;

                                        try {
                                          await pageStore.edemokraciaAdminVoteDefinitionVoteRating(input, element);

                                          callSuccessful = true;
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteRating');
                                        }
                                        return callSuccessful;
                                      }));

                                      if (ret != null) {
                                        try {
                                          await pageStore.getVoteDefinitions();
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'VoteRating');
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
                                    pageStore.voteDefinitionsStoreList.length != 0
                                        ? '${pageStore.pageTableItemsRangeStart} - ${pageStore.pageTableItemsRangeStart - 1 + pageStore.voteDefinitionsStoreList.length}'
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
                                              await pageStore.getVoteDefinitions(isNext: false);
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
                                              await pageStore.getVoteDefinitions(isNext: true);
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
