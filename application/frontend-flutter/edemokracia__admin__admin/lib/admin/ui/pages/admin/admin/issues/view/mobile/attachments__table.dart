//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.issues.view;

class EdemokraciaAdminAdminIssuesViewAttachmentsMobileTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminIssuesViewAttachmentsMobileTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminIssuesViewPageStore pageStore;
  final AdminAdminIssuesViewConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Link'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'File'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Type'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
      ),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 0) {
      return 'link';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetIssueAttachment) => DataRow(
          cells: [
            pageConfig.attachmentsTableConfig.linkDataCell != null
                ? pageConfig.attachmentsTableConfig.linkDataCell(targetIssueAttachment, context)
                : DataCell(
                    targetIssueAttachment?.link != null
                        ? Text(
                            targetIssueAttachment?.link != null ? targetIssueAttachment.link.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () =>
                            _customOnTapOrNavigateToView(pageConfig.attachmentsTableConfig.linkDataCellOnTap, navigateToViewPageAction, targetIssueAttachment)
                        : null,
                  ),
            pageConfig.attachmentsTableConfig.fileDataCell != null
                ? pageConfig.attachmentsTableConfig.fileDataCell(targetIssueAttachment, context)
                : DataCell(
                    JudoButtonWidget(
                      loadingState: pageStore.attachmentsFileColumnLoadingState,
                      disabled: pageStore.pageState.disabledByLoading,
                      label: AppLocalizations.of(context).lookUpValue(context, 'File'),
                      icon: Icon(getIconByString('file-document-outline')),
                      onPressed: targetIssueAttachment.file != null
                          ? () async {
                              try {
                                await pageStore.downloadFile(targetIssueAttachment.file);
                              } catch (error) {
                                locator<MessageHandler>().handleApiException(context, error, 'Download');
                              }
                            }
                          : null,
                    ),
                    onTap: !disabled
                        ? () =>
                            _customOnTapOrNavigateToView(pageConfig.attachmentsTableConfig.fileDataCellOnTap, navigateToViewPageAction, targetIssueAttachment)
                        : null,
                  ),
            pageConfig.attachmentsTableConfig.typeDataCell != null
                ? pageConfig.attachmentsTableConfig.typeDataCell(targetIssueAttachment, context)
                : DataCell(
                    targetIssueAttachment?.type != null
                        ? Text(
                            AppLocalizations.of(context).lookUpValue(context, targetIssueAttachment.type.toString().split('.').last),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () =>
                            _customOnTapOrNavigateToView(pageConfig.attachmentsTableConfig.typeDataCellOnTap, navigateToViewPageAction, targetIssueAttachment)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.attachmentsTableConfig, rowActionList, targetIssueAttachment, pageStore.pageState)),
          ],
        );
  }

  void _customOnTapOrNavigateToView(Function customOnTap, Function navigateToView, dynamic targetStore) {
    if (customOnTap != null) {
      customOnTap(context, targetStore, pageStore);
    } else if (navigateToView != null) {
      navigateToView(targetStore);
    }
    return;
  }
}
