//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.vote_definition.vote_entries.view;

Widget getVoteDefinitionVoteEntriesViewTabletPage(BuildContext context, VoteEntryStore targetStore, VoteDefinitionStore ownerStore,
    VoteDefinitionVoteEntriesViewPageStore pageStore, VoteDefinitionVoteEntriesViewConfig pageConfig) {
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
              row: 1.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 1.0,
                  children: [],
                ),
              ],
            ),
          ]),
        ),
      )
    ]),
  );
}
