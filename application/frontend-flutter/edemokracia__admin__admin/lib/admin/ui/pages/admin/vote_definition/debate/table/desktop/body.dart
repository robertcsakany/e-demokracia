//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.vote_definition.debate.table;

Widget getAdminVoteDefinitionDebateTableDesktopPage(BuildContext context, AdminVoteDefinitionStore ownerStore,
    AdminVoteDefinitionDebateTablePageStore pageStore, AdminVoteDefinitionDebateTableConfig pageConfig) {
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
                col: 12.0,
                row: 2.0 + pageStore.getPlusRowSize,
                children: [
                  Observer(
                    builder: (_) => JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 2.0 + pageStore.getPlusRowSize,
                      children: [
                        // ASSOCIATION TABLE

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
                                  await pageStore.getDebate(ownerStore);
                                  pageStore.tableService.storeFilters('EdemokraciaAdminVoteDefinitionDebateTableDebate', pageStore.availableFilterList);
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
                          switch (pageStore.voteDefinitionDebateStoreFuture.status) {
                            case FutureStatus.pending:
                              return JudoLoadingProgress();
                            case FutureStatus.rejected:
                              return Container();
                            case FutureStatus.fulfilled:
                              var dataInfo = EdemokraciaAdminVoteDefinitionDebateTableDebateTableDesktopTable(context, pageStore, pageConfig, disabled: false);
                              return JudoTable(
                                key: UniqueKey(),
                                disabled: pageStore.pageState.disabledByLoading,
                                col: 12.0,
                                dataInfo: dataInfo,
                                rowList: [ownerStore.debate].asObservable(),
                                navigateToViewPageAction: pageConfig.debateTableConfig.rowClickNavigate
                                    ? (element) async {
                                        if (element != null) {
                                          await navigation.open(Routes.adminVoteDefinitionDebateViewPage,
                                              arguments: AdminVoteDefinitionDebateViewPageArguments(ownerStore: ownerStore, targetStore: element));
                                          try {
                                            await pageStore.getDebate(ownerStore);
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
                                          AdminDebateCloseDebateOperationInputPageArguments(
                                              operationCall: (CloseDebateInputStore input, AdminDebateCloseDebateOperationInputPageStore inputPageStore) async {
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
                                          await pageStore.getDebate(ownerStore);
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
                                          AdminDebateCreateArgumentOperationInputPageArguments(operationCall:
                                              (CreateArgumentInputStore input, AdminDebateCreateArgumentOperationInputPageStore inputPageStore) async {
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
                                          await pageStore.getDebate(ownerStore);
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
                                          AdminDebateCreateCommentOperationInputPageArguments(operationCall:
                                              (CreateCommentInputStore input, AdminDebateCreateCommentOperationInputPageStore inputPageStore) async {
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
                                          await pageStore.getDebate(ownerStore);
                                        } catch (error) {
                                          messageHandler.handleApiException(context, error, 'Add comment');
                                        }
                                      }
                                    },
                                  ),
                                ],
                              );
                          }
                        }),
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
