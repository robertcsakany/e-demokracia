//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.con.create_comment.operation_input;

Widget getAdminConCreateCommentOperationInputMobilePage(BuildContext context, CreateCommentInputStore targetStore,
    AdminConCreateCommentOperationInputPageStore pageStore, AdminConCreateCommentOperationInputConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 7.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 7.142857142857142,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 4.0,
                      row: 5.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 4.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Add comment'),
                          icon: Icon(getIconByString('forum')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 4.0,
                          row: 4.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 4.0,
                              row: 4.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 4.0,
                                  row: 4.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: inputWidgetKeyMap['comment'],
                                              order: 1,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['comment'].message,
                                              col: 4.0,
                                              row: 4.0,
                                              multiline: true,
                                              inCard: true,
                                              maxLength: 255 ?? 250,
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 4.0,
                      row: 2.0,
                      children: [
                        JudoColumn(
                          mainAxisAlignment: MainAxisAlignment.center,
                          col: 4.0,
                          row: 2.0,
                          children: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 1.0,
                              children: [
                                Observer(
                                    builder: (_) => JudoButton(
                                          col: 4.0,
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Ok'),
                                          icon: Icon(getIconByString('check')),
                                          loadingState: pageStore.okButtonLoadingState,
                                          order: 2,
                                          disabled: pageStore.pageState.disabledByLoading || false,
                                          onPressed: () async {
                                            try {
                                              if (pageConfig.operationCall != null) {
                                                await pageConfig.operationCall(
                                                  navigation: navigation,
                                                  targetStore: targetStore,
                                                  pageStore: pageStore,
                                                );
                                              } else {
                                                bool success = await pageStore.operationCall(targetStore, pageStore);
                                                if (success) {
                                                  if (pageConfig.operationCallSuccess != null) {
                                                    await pageConfig.operationCallSuccess(
                                                      navigation: navigation,
                                                      targetStore: targetStore,
                                                      pageStore: pageStore,
                                                    );
                                                  } else {
                                                    navigation
                                                        .close(true); // must send back true to view page to trigger refresh if the operation call is successful
                                                  }
                                                }
                                              }
                                            } catch (error) {
                                              messageHandler.handleApiException(context, error, 'Ok', pageStore.validationAttributeErrorMessageMap);
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
                                          col: 4.0,
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Cancel'),
                                          icon: Icon(getIconByString('close-circle-outline')),
                                          loadingState: pageStore.cancelButtonLoadingState,
                                          order: 3,
                                          disabled: pageStore.pageState.disabledByLoading || false,
                                          onPressed: () async {
                                            try {
                                              if (pageConfig.operationCall != null) {
                                                await pageConfig.operationCall(
                                                  navigation: navigation,
                                                  targetStore: targetStore,
                                                  pageStore: pageStore,
                                                );
                                              } else {
                                                bool success = await pageStore.operationCall(targetStore, pageStore);
                                                if (success) {
                                                  if (pageConfig.operationCallSuccess != null) {
                                                    await pageConfig.operationCallSuccess(
                                                      navigation: navigation,
                                                      targetStore: targetStore,
                                                      pageStore: pageStore,
                                                    );
                                                  } else {
                                                    navigation
                                                        .close(true); // must send back true to view page to trigger refresh if the operation call is successful
                                                  }
                                                }
                                              }
                                            } catch (error) {
                                              messageHandler.handleApiException(context, error, 'Ok', pageStore.validationAttributeErrorMessageMap);
                                            }
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
          ]),
        ),
      )
    ]),
  );
}
