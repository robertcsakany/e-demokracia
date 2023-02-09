//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.issue.attachments.create;

Widget getAdminIssueAttachmentsCreateDesktopPage(BuildContext context, AdminIssueAttachmentStore targetStore, AdminIssueStore ownerStore,
    AdminIssueAttachmentsCreatePageStore pageStore, AdminIssueAttachmentsCreateConfig pageConfig, Map inputWidgetKeyMap) {
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
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 12.0,
                      row: 1.0,
                      children: [
                        Observer(
                            builder: (_) => JudoComboBox<EdemokraciaAttachmentType>(
                                  key: inputWidgetKeyMap['type'],
                                  order: 1,
                                  errorMessage: pageStore.validationAttributeErrorMessageMap['type'].message,
                                  col: 4.0,
                                  icon: Icon(getIconByString('list')),
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Type'),
                                  mandatory: true,
                                  items: EdemokraciaAttachmentType.values,
                                  value: targetStore.type,
                                  onChanged: (value) {
                                    targetStore.setType(value);
                                    validateMissingRequiredAttribute(context, pageStore.validationAttributeErrorMessageMap['type'], targetStore.type);
                                    if (pageConfig.postTypeChanged != null) {
                                      pageConfig.postTypeChanged(targetStore.type, pageStore: pageStore, targetStore: targetStore);
                                    }
                                  },
                                  dropdownMenuShow: (value) => new DropdownMenuItem<EdemokraciaAttachmentType>(
                                      value: value, child: new Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
                                )),
                        Observer(
                            builder: (_) => JudoInputText(
                                  key: inputWidgetKeyMap['link'],
                                  order: 2,
                                  errorMessage: pageStore.validationAttributeErrorMessageMap['link'].message,
                                  col: 4.0,
                                  maxLength: 1024 ?? 250,
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Link'),
                                  icon: Icon(getIconByString('text_fields')),
                                  initialValue: targetStore.link,
                                  onChanged: (value) {
                                    targetStore.setLink(value.toString());
                                  },
                                  onBlur: () {
                                    if (pageConfig.postLinkChanged != null) {
                                      pageConfig.postLinkChanged(targetStore.link, pageStore: pageStore, targetStore: targetStore);
                                    }
                                  },
                                )),
                        Observer(
                          builder: (_) => JudoButton(
                            col: 4.0,
                            disabled: pageStore.pageState.disabledByLoading,
                            label: AppLocalizations.of(context).lookUpValue(context, 'File'),
                            icon: Icon(getIconByString('file-document-outline')),
                            onPressed: () async {
                              FilePickerResult result = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: [
                                'pict',
                                'pct',
                                'pic',
                                'pgm',
                                'wmf',
                                'emf',
                                'svg',
                                'svgz',
                                'pcx',
                                'pbm',
                                'pcd',
                                'iff',
                                'ilbm',
                                'xpm',
                                'wbmp',
                                'cgm',
                                'xwd',
                                'bmp',
                                'ras',
                                'rast',
                                'psd',
                                'xbm',
                                'tif',
                                'tiff',
                                'ico',
                                'ief',
                                'gif',
                                'jpm',
                                'ppm',
                                'tga',
                                'jpeg',
                                'jpg',
                                'jpe',
                                'jfif',
                                'png',
                                'pnm',
                                'avi',
                                'qt',
                                'mov',
                                'scm',
                                'mpg',
                                'mpeg',
                                'mpe',
                                'rv',
                                'movie',
                              ]);
                              if (result != null) {
                                try {
                                  pageStore.fileBinaryTypeInputLoadingState.setIsLoading(true);
                                  String token = await pageStore.uploadFile('/admin/IssueAttachment/file', result.files.first);
                                  messageHandler.showSuccessMessage(context, 'File uploaded', 'Upload');
                                  if (token != null) {
                                    targetStore.setFile(token);
                                  }
                                  pageStore.fileBinaryTypeInputLoadingState.setIsLoading(false);
                                } catch (error) {
                                  pageStore.fileBinaryTypeInputLoadingState.setIsLoading(false);
                                  messageHandler.handleApiException(context, error, 'Upload');
                                }
                              }
                            },
                          ),
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
