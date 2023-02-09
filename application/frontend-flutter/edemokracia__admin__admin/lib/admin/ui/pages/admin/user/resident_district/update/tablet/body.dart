//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.user.resident_district.update;

Widget getAdminUserResidentDistrictUpdateTabletPage(BuildContext context, AdminDistrictStore targetStore, AdminUserResidentDistrictUpdatePageStore pageStore,
    AdminUserResidentDistrictUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 1.0,
                      children: [
                        JudoRow(
                          col: 8.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: inputWidgetKeyMap['name'],
                                      order: 1,
                                      errorMessage: pageStore.validationAttributeErrorMessageMap['name'].message,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'District name'),
                                      icon: Icon(getIconByString('text_fields')),
                                      initialValue: targetStore.name,
                                      mandatory: true,
                                      onChanged: (value) {
                                        targetStore.setName(value.toString());
                                      },
                                      onBlur: () {
                                        validateMissingRequiredAttribute(context, pageStore.validationAttributeErrorMessageMap['name'], targetStore.name);
                                        if (pageConfig.postNameChanged != null) {
                                          pageConfig.postNameChanged(targetStore.name, pageStore: pageStore, targetStore: targetStore);
                                        }
                                      },
                                    )),
                            JudoSpacer(
                              col: 4.0,
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
