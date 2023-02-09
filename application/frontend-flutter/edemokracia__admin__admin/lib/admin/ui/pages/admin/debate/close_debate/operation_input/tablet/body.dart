//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.debate.close_debate.operation_input;

Widget getAdminDebateCloseDebateOperationInputTabletPage(BuildContext context, CloseDebateInputStore targetStore,
    AdminDebateCloseDebateOperationInputPageStore pageStore, AdminDebateCloseDebateOperationInputConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 9.142857142857142,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 9.142857142857142,
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
                          label: AppLocalizations.of(context).lookUpValue(context, 'Close debate'),
                          icon: Icon(getIconByString('wechat')),
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
                                        builder: (_) => JudoComboBox<EdemokraciaVoteTypeOnCloseDebate>(
                                              key: inputWidgetKeyMap['voteType'],
                                              order: 1,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['voteType'].message,
                                              col: 4.0,
                                              icon: Icon(getIconByString('list')),
                                              label: AppLocalizations.of(context).lookUpValue(context, 'VoteType'),
                                              inCard: true,
                                              mandatory: true,
                                              items: EdemokraciaVoteTypeOnCloseDebate.values,
                                              value: targetStore.voteType,
                                              onChanged: (value) {
                                                targetStore.setVoteType(value);
                                                validateMissingRequiredAttribute(
                                                    context, pageStore.validationAttributeErrorMessageMap['voteType'], targetStore.voteType);
                                                if (pageConfig.postVoteTypeChanged != null) {
                                                  pageConfig.postVoteTypeChanged(targetStore.voteType, pageStore: pageStore, targetStore: targetStore);
                                                }
                                              },
                                              dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaVoteTypeOnCloseDebate>(
                                                  value: value,
                                                  child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                            )),
                                    Observer(
                                      builder: (_) => JudoDateTimeInput(
                                        key: inputWidgetKeyMap['closeAt'],
                                        order: 2,
                                        errorMessage: pageStore.validationAttributeErrorMessageMap['closeAt'].message,
                                        col: 4.0,
                                        use24HourFormat: true,
                                        initialDate: targetStore.closeAt,
                                        label: AppLocalizations.of(context).lookUpValue(context, 'Vote close at'),
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
                                  col: 8.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: inputWidgetKeyMap['title'],
                                              order: 3,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['title'].message,
                                              col: 8.0,
                                              maxLength: 255 ?? 250,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Vote title'),
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
                                  col: 8.0,
                                  row: 4.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoInputText(
                                              key: inputWidgetKeyMap['description'],
                                              order: 4,
                                              errorMessage: pageStore.validationAttributeErrorMessageMap['description'].message,
                                              col: 8.0,
                                              row: 4.0,
                                              multiline: true,
                                              inCard: true,
                                              maxLength: 2000 ?? 250,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Vote description'),
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 2.0,
                      children: [
                        JudoLabel(
                          col: 8.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Buttons'),
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 8.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoButton(
                                      col: 4.0,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'actionButton'),
                                      icon: Icon(getIconByString('check')),
                                      loadingState: pageStore.okButtonLoadingState,
                                      order: 5,
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
                                          messageHandler.handleApiException(context, error, 'actionButton', pageStore.validationAttributeErrorMessageMap);
                                        }
                                      },
                                    )),
                            Observer(
                                builder: (_) => JudoButton(
                                      col: 4.0,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'Cancel'),
                                      icon: Icon(getIconByString('close-circle-outline')),
                                      order: 6,
                                      disabled: pageStore.pageState.disabledByLoading || navigation.stack.length == 0,
                                      onPressed: () {
                                        if (pageConfig.backAction != null) {
                                          pageConfig.backAction(navigation: navigation, pageStore: pageStore);
                                        } else {
                                          navigation.close();
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
          ]),
        ),
      )
    ]),
  );
}
