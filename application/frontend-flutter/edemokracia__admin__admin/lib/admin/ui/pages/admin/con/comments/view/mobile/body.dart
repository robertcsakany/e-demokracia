//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.con.comments.view;

Widget getAdminConCommentsViewMobilePage(BuildContext context, AdminCommentStore targetStore, AdminConStore ownerStore, AdminConCommentsViewPageStore pageStore,
    AdminConCommentsViewConfig pageConfig) {
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
              row: 9.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 9.142857142857142,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 4.0,
                      row: 9.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 4.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Comment'),
                          icon: Icon(getIconByString('comment-text-multiple')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 4.0,
                          row: 8.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 4.0,
                              row: 8.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: UniqueKey(),
                                        order: 1,
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
                                  row: 1.0,
                                  children: [
                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        order: 2,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'CreatedBy'),
                                        icon: Icon(getIconByString('table_rows')),
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
                                                          var response = await navigation.open(Routes.adminCommentCreatedByViewPage,
                                                              arguments: AdminCommentCreatedByViewPageArguments(
                                                                  ownerStore: targetStore, targetStore: targetStore.createdBy));
                                                          try {
                                                            await pageStore.refreshComment(targetStore);
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
                                              order: 3,
                                              col: 4.0,
                                              row: 4.0,
                                              multiline: true,
                                              inCard: true,
                                              maxLength: 2000 ?? 250,
                                              readOnly: true,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Comment'),
                                              icon: Icon(getIconByString('text_fields')),
                                              initialValue: targetStore.comment,
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
                                              order: 4,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                try {
                                                  await pageStore.edemokraciaAdminCommentVoteUp(targetStore);

                                                  messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                  ;

                                                  await pageStore.refreshComment(targetStore);
                                                } catch (error) {
                                                  messageHandler.handleApiException(context, error, '');
                                                }
                                              },
                                            )),
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: UniqueKey(),
                                              order: 5,
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
                                              order: 6,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                try {
                                                  await pageStore.edemokraciaAdminCommentVoteDown(targetStore);

                                                  messageHandler.showSuccessMessage(context, 'Successful operation', '');
                                                  ;

                                                  await pageStore.refreshComment(targetStore);
                                                } catch (error) {
                                                  messageHandler.handleApiException(context, error, '');
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
                                        builder: (_) => JudoNumericInput(
                                              key: UniqueKey(),
                                              order: 7,
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
                                              order: 8,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                await navigation.open(Routes.adminCommentVotesTablePage,
                                                    arguments: AdminCommentVotesTablePageArguments(ownerStore: targetStore));
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
