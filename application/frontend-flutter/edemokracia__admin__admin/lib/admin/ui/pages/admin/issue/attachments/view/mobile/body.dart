//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: mobile

part of admin.ui.pages.admin.issue.attachments.view;

Widget getAdminIssueAttachmentsViewMobilePage(BuildContext context, AdminIssueAttachmentStore targetStore, AdminIssueStore ownerStore,
    AdminIssueAttachmentsViewPageStore pageStore, AdminIssueAttachmentsViewConfig pageConfig) {
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
              row: 3.0,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 4.0,
                  row: 3.0,
                  children: [
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 4.0,
                      row: 3.0,
                      children: [
                        JudoColumn(
                          mainAxisAlignment: MainAxisAlignment.center,
                          col: 4.0,
                          row: 3.0,
                          children: [
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 1.0,
                              children: [
                                Observer(
                                    builder: (_) => JudoComboBox<EdemokraciaAttachmentType>(
                                          key: UniqueKey(),
                                          order: 1,
                                          col: 4.0,
                                          icon: Icon(getIconByString('list')),
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Type'),
                                          readOnly: true,
                                          mandatory: true,
                                          items: EdemokraciaAttachmentType.values,
                                          value: targetStore.type,
                                          dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaAttachmentType>(
                                              value: value,
                                              child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
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
                                    disabled: pageStore.pageState.disabledByLoading,
                                    label: AppLocalizations.of(context).lookUpValue(context, 'File'),
                                    icon: Icon(getIconByString('file-document-outline')),
                                    onPressed: targetStore.file != null
                                        ? () async {
                                            try {
                                              await pageStore.downloadFile(targetStore.file);
                                            } catch (error) {
                                              messageHandler.handleApiException(context, error, 'Download');
                                            }
                                          }
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                            JudoRow(
                              mainAxisAlignment: MainAxisAlignment.start,
                              col: 4.0,
                              row: 1.0,
                              children: [
                                Observer(
                                    builder: (_) => JudoInputText(
                                          key: UniqueKey(),
                                          order: 3,
                                          col: 4.0,
                                          maxLength: 1024 ?? 250,
                                          readOnly: true,
                                          label: AppLocalizations.of(context).lookUpValue(context, 'Link'),
                                          icon: Icon(getIconByString('text_fields')),
                                          initialValue: targetStore.link,
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
