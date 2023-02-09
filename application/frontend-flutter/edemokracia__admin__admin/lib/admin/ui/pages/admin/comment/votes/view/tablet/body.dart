//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.comment.votes.view;

Widget getAdminCommentVotesViewTabletPage(BuildContext context, AdminSimpleVoteStore targetStore, AdminCommentStore ownerStore,
    AdminCommentVotesViewPageStore pageStore, AdminCommentVotesViewConfig pageConfig) {
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
              row: 2.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 2.0,
                  children: [
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 8.0,
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
                          ),
                        ),
                        Observer(
                            builder: (_) => JudoComboBox<EdemokraciaSimpleVoteType>(
                                  key: UniqueKey(),
                                  order: 2,
                                  col: 4.0,
                                  icon: Icon(getIconByString('list')),
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Type'),
                                  readOnly: true,
                                  mandatory: true,
                                  items: EdemokraciaSimpleVoteType.values,
                                  value: targetStore.type,
                                  dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaSimpleVoteType>(
                                      value: value, child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                )),
                      ],
                    ),
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 8.0,
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
