//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.vote_definition.vote_yes_no.operation_input;

Widget getAdminVoteDefinitionVoteYesNoOperationInputMobilePage(BuildContext context, YesNoVoteInputStore targetStore,
    AdminVoteDefinitionVoteYesNoOperationInputPageStore pageStore, AdminVoteDefinitionVoteYesNoOperationInputConfig pageConfig, Map inputWidgetKeyMap) {
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
              row: 1.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 1.0,
                  children: [
                    Observer(
                        builder: (_) => JudoComboBox<EdemokraciaYesNoVoteValue>(
                              key: inputWidgetKeyMap['value'],
                              order: 1,
                              errorMessage: pageStore.validationAttributeErrorMessageMap['value'].message,
                              col: 4.0,
                              icon: Icon(getIconByString('list')),
                              label: AppLocalizations.of(context).lookUpValue(context, 'Value'),
                              items: EdemokraciaYesNoVoteValue.values,
                              value: targetStore.value,
                              onChanged: (value) {
                                targetStore.setValue(value);
                                if (pageConfig.postValueChanged != null) {
                                  pageConfig.postValueChanged(targetStore.value, pageStore: pageStore, targetStore: targetStore);
                                }
                              },
                              dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaYesNoVoteValue>(
                                  value: value, child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                            )),
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
