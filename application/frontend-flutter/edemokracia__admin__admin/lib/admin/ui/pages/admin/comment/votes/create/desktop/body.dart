//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.comment.votes.create;

Widget getAdminCommentVotesCreateDesktopPage(BuildContext context, AdminSimpleVoteStore targetStore, AdminCommentStore ownerStore,
    AdminCommentVotesCreatePageStore pageStore, AdminCommentVotesCreateConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 2.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 2.0,
                  children: [
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 12.0,
                      row: 1.0,
                      children: [
                        Observer(
                          builder: (_) => JudoDateTimeInput(
                            key: inputWidgetKeyMap['created'],
                            order: 1,
                            errorMessage: pageStore.validationAttributeErrorMessageMap['created'].message,
                            col: 4.0,
                            use24HourFormat: true,
                            initialDate: targetStore.created,
                            label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                            icon: Icon(getIconByString('schedule')),
                            mandatory: true,
                            onChanged: (value) {
                              targetStore.setCreated(value);
                              if (pageConfig.postCreatedChanged != null) {
                                pageConfig.postCreatedChanged(targetStore.created, pageStore: pageStore, targetStore: targetStore);
                              }
                            },
                          ),
                        ),
                        Observer(
                            builder: (_) => JudoComboBox<EdemokraciaSimpleVoteType>(
                                  key: inputWidgetKeyMap['type'],
                                  order: 2,
                                  errorMessage: pageStore.validationAttributeErrorMessageMap['type'].message,
                                  col: 4.0,
                                  icon: Icon(getIconByString('list')),
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Type'),
                                  mandatory: true,
                                  items: EdemokraciaSimpleVoteType.values,
                                  value: targetStore.type,
                                  onChanged: (value) {
                                    targetStore.setType(value);
                                    validateMissingRequiredAttribute(context, pageStore.validationAttributeErrorMessageMap['type'], targetStore.type);
                                    if (pageConfig.postTypeChanged != null) {
                                      pageConfig.postTypeChanged(targetStore.type, pageStore: pageStore, targetStore: targetStore);
                                    }
                                  },
                                  dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaSimpleVoteType>(
                                      value: value, child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                )),
                        JudoSpacer(
                          col: 4.0,
                        ),
                      ],
                    ),
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 12.0,
                      row: 1.0,
                      children: [],
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
