//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.admin.vote_definitions.update;

Widget getAdminAdminVoteDefinitionsUpdateTabletPage(BuildContext context, AdminVoteDefinitionStore targetStore,
    AdminAdminVoteDefinitionsUpdatePageStore pageStore, AdminAdminVoteDefinitionsUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 8.0,
                      row: 7.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoColumn(
                          mainAxisAlignment: MainAxisAlignment.center,
                          col: 8.0,
                          row: 7.0,
                          children: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 8.0,
                              row: 1.0,
                              children: [
                                Observer(
                                    builder: (_) => JudoInputText(
                                          key: inputWidgetKeyMap['title'],
                                          order: 1,
                                          errorMessage: pageStore.validationAttributeErrorMessageMap['title'].message,
                                          col: 8.0,
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
                                            validateMissingRequiredAttribute(context, pageStore.validationAttributeErrorMessageMap['title'], targetStore.title);
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
                              row: 1.0,
                              children: [
                                Observer(
                                  builder: (_) => JudoDateTimeInput(
                                    key: inputWidgetKeyMap['closeAt'],
                                    order: 2,
                                    errorMessage: pageStore.validationAttributeErrorMessageMap['closeAt'].message,
                                    col: 4.0,
                                    use24HourFormat: true,
                                    initialDate: targetStore.closeAt,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'CloseAt'),
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
                                Observer(
                                    builder: (_) => JudoComboBox<EdemokraciaVoteStatus>(
                                          key: inputWidgetKeyMap['status'],
                                          order: 3,
                                          errorMessage: pageStore.validationAttributeErrorMessageMap['status'].message,
                                          col: 4.0,
                                          icon: Icon(getIconByString('list')),
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Status'),
                                          inCard: true,
                                          mandatory: true,
                                          items: EdemokraciaVoteStatus.values,
                                          value: targetStore.status,
                                          onChanged: (value) {
                                            targetStore.setStatus(value);
                                            validateMissingRequiredAttribute(
                                                context, pageStore.validationAttributeErrorMessageMap['status'], targetStore.status);
                                            if (pageConfig.postStatusChanged != null) {
                                              pageConfig.postStatusChanged(targetStore.status, pageStore: pageStore, targetStore: targetStore);
                                            }
                                          },
                                          dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaVoteStatus>(
                                              value: value,
                                              child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
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
                                          col: 4.0,
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Debate'),
                                          icon: Icon(getIconByString('table_rows')),
                                          order: 4,
                                          disabled: pageStore.pageState.disabledByLoading || true || targetStore.debate == null,
                                        )),
                                Observer(
                                  builder: (_) => JudoDateTimeInput(
                                    key: inputWidgetKeyMap['created'],
                                    order: 5,
                                    errorMessage: pageStore.validationAttributeErrorMessageMap['created'].message,
                                    col: 4.0,
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
                                          order: 6,
                                          errorMessage: pageStore.validationAttributeErrorMessageMap['description'].message,
                                          col: 8.0,
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
                          ],
                        ),
                      ],
                    ),
                    Observer(
                      builder: (_) => JudoTab(
                          col: 8.0,
                          row: 2.0,
                          order: 7,
                          tabIndex: tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::voteDefinitions_tabBar').tabIndex,
                          setTabIndex:
                              tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::voteDefinitions_tabBar').setTabIndex,
                          hiddenTabs: [
                            targetStore?.isNotYesNoType ?? false,
                            targetStore?.isNotYesNoAbstainType ?? false,
                            targetStore?.isNotSelectAnswerType ?? false,
                            targetStore?.isNotRatingType ?? false,
                          ],
                          tabContent: [
                            Observer(
                              builder: (_) => JudoRow(
                                mainAxisAlignment: MainAxisAlignment.start,
                                hidden: (targetStore?.isNotYesNoType) ?? false,
                                col: 8.0,
                                row: 1.0,
                                children: [
                                  Observer(
                                      builder: (_) => JudoButton(
                                            col: 4.0,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'VoteYesNo'),
                                            icon: Icon(getIconByString('chevron_right')),
                                            loadingState: pageStore.voteYesNoButtonLoadingState,
                                            order: 8,
                                            disabled: pageStore.pageState.disabledByLoading || true,
                                          )),
                                  JudoSpacer(
                                    col: 4.0,
                                  ),
                                ],
                              ),
                            ),
                            Observer(
                              builder: (_) => JudoRow(
                                mainAxisAlignment: MainAxisAlignment.start,
                                hidden: (targetStore?.isNotYesNoAbstainType) ?? false,
                                col: 8.0,
                                row: 1.0,
                                children: [
                                  Observer(
                                      builder: (_) => JudoButton(
                                            col: 4.0,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'VoteYesNoAbstain'),
                                            icon: Icon(getIconByString('chevron_right')),
                                            loadingState: pageStore.voteYesNoAbstainButtonLoadingState,
                                            order: 9,
                                            disabled: pageStore.pageState.disabledByLoading || true,
                                          )),
                                  JudoSpacer(
                                    col: 4.0,
                                  ),
                                ],
                              ),
                            ),
                            Observer(
                              builder: (_) => JudoRow(
                                mainAxisAlignment: MainAxisAlignment.start,
                                hidden: (targetStore?.isNotSelectAnswerType) ?? false,
                                col: 8.0,
                                row: 1.0,
                                children: [
                                  Observer(
                                      builder: (_) => JudoButton(
                                            col: 4.0,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'VoteSelectAnswer'),
                                            icon: Icon(getIconByString('chevron_right')),
                                            loadingState: pageStore.voteSelectAnswerButtonLoadingState,
                                            order: 10,
                                            disabled: pageStore.pageState.disabledByLoading || true,
                                          )),
                                  JudoSpacer(
                                    col: 4.0,
                                  ),
                                ],
                              ),
                            ),
                            Observer(
                              builder: (_) => JudoRow(
                                mainAxisAlignment: MainAxisAlignment.start,
                                hidden: (targetStore?.isNotRatingType) ?? false,
                                col: 8.0,
                                row: 1.0,
                                children: [
                                  Observer(
                                      builder: (_) => JudoButton(
                                            col: 4.0,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'VoteRating'),
                                            icon: Icon(getIconByString('chevron_right')),
                                            loadingState: pageStore.voteRatingButtonLoadingState,
                                            order: 11,
                                            disabled: pageStore.pageState.disabledByLoading || true,
                                          )),
                                  JudoSpacer(
                                    col: 4.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                          tabs: [
                            Tab(
                              text: AppLocalizations.of(context).lookUpValue(context, 'Yes / No vote'),
                            ),
                            Tab(
                              text: AppLocalizations.of(context).lookUpValue(context, 'Yes / No / Abstain vote'),
                            ),
                            Tab(
                              text: AppLocalizations.of(context).lookUpValue(context, 'Select answer vote'),
                            ),
                            Tab(
                              text: AppLocalizations.of(context).lookUpValue(context, 'Rating vote'),
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
