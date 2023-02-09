//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.debate.comments.update;

Widget getAdminDebateCommentsUpdateTabletPage(BuildContext context, AdminCommentStore targetStore, AdminDebateCommentsUpdatePageStore pageStore,
    AdminDebateCommentsUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 7.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 7.142857142857142,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 7.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 8.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Comment'),
                          icon: Icon(getIconByString('comment-text-multiple')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 8.0,
                          row: 6.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 8.0,
                              row: 6.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: inputWidgetKeyMap['created'],
                                        order: 1,
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

                                    // AGGREGATION LINK

                                    Observer(builder: (_) {
                                      return JudoLink(
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['createdBy'].message,
                                        order: 2,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'CreatedBy'),
                                        icon: Icon(getIconByString('table_rows')),
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
                                  col: 8.0,
                                  row: 4.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: inputWidgetKeyMap['comment'],
                                              order: 3,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['comment'].message,
                                              col: 8.0,
                                              row: 4.0,
                                              multiline: true,
                                              inCard: true,
                                              maxLength: 2000 ?? 250,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Comment'),
                                              icon: Icon(getIconByString('text_fields')),
                                              initialValue: targetStore.comment,
                                              mandatory: true,
                                              onChanged: (value) {
                                                targetStore.setComment(value.toString());
                                              },
                                              onBlur: () {
                                                if (pageConfig.postCommentChanged != null) {
                                                  pageConfig.postCommentChanged(targetStore.comment, pageStore: pageStore, targetStore: targetStore);
                                                }
                                              },
                                            )),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 1.0,
                                              icon: Icon(getIconByString('thumb-up')),
                                              loadingState: pageStore.voteUpButtonLoadingState,
                                              order: 4,
                                              disabled: pageStore.pageState.disabledByLoading || true,
                                            )),
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: inputWidgetKeyMap['upVotes'],
                                              order: 5,
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
                                              order: 6,
                                              disabled: pageStore.pageState.disabledByLoading || true,
                                            )),
                                    Observer(
                                        builder: (_) => JudoNumericInput(
                                              key: inputWidgetKeyMap['downVotes'],
                                              order: 7,
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
                                              order: 8,
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
