//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.user.activity_districts.view;

Widget getAdminUserActivityDistrictsViewDesktopPage(BuildContext context, AdminDistrictStore targetStore, AdminUserStore ownerStore,
    AdminUserActivityDistrictsViewPageStore pageStore, AdminUserActivityDistrictsViewConfig pageConfig) {
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
              row: 1.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 1.0,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 1.0,
                      children: [
                        JudoRow(
                          col: 12.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: UniqueKey(),
                                      order: 1,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      readOnly: true,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'District name'),
                                      icon: Icon(getIconByString('text_fields')),
                                      initialValue: targetStore.name,
                                    )),
                            JudoSpacer(
                              col: 8.0,
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
