//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.debate.close_debate.operation_output;

Widget getAdminDebateCloseDebateOperationOutputDesktopPage(BuildContext context, VoteDefinitionStore targetStore,
    AdminDebateCloseDebateOperationOutputPageStore pageStore, AdminDebateCloseDebateOperationOutputConfig pageConfig) {
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
                JudoRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  col: 12.0,
                  row: 1.0,
                  children: [
                    Observer(
                        builder: (_) => JudoButton(
                              col: 2.0,
                              label: AppLocalizations.of(context).lookUpValue(context, 'Ok'),
                              icon: Icon(getIconByString('check')),
                              order: 1,
                              disabled: pageStore.pageState.disabledByLoading || navigation.stack.length == 0,
                              onPressed: () {
                                if (pageConfig.backAction != null) {
                                  pageConfig.backAction(navigation: navigation, pageStore: pageStore);
                                } else {
                                  navigation.close();
                                }
                              },
                            )),
                    JudoSpacer(
                      col: 10.0,
                    ),
                  ],
                ),
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
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
