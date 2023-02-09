//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.issues.table;

class EdemokraciaAdminAdminIssuesTableIssueTableDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminIssuesTableIssueTableDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminIssuesTablePageStore pageStore;
  final AdminAdminIssuesTableConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Title'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Status'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Created'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Description'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Representation'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(label: Text("")),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 0) {
      return 'title';
    }
    if (columnIndex == 2) {
      return 'created';
    }
    if (columnIndex == 3) {
      return 'description';
    }
    if (columnIndex == 4) {
      return 'representation';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetIssue) => DataRow(
          cells: [
            pageConfig.issuesTableConfig.titleDataCell != null
                ? pageConfig.issuesTableConfig.titleDataCell(targetIssue, context)
                : DataCell(
                    targetIssue?.title != null
                        ? Text(
                            targetIssue?.title != null ? targetIssue.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.issuesTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetIssue)
                        : null,
                  ),
            pageConfig.issuesTableConfig.statusDataCell != null
                ? pageConfig.issuesTableConfig.statusDataCell(targetIssue, context)
                : DataCell(
                    targetIssue?.status != null
                        ? Text(
                            AppLocalizations.of(context).lookUpValue(context, targetIssue.status.toString().split('.').last),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.issuesTableConfig.statusDataCellOnTap, navigateToViewPageAction, targetIssue)
                        : null,
                  ),
            pageConfig.issuesTableConfig.createdDataCell != null
                ? pageConfig.issuesTableConfig.createdDataCell(targetIssue, context)
                : DataCell(
                    targetIssue?.created != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetIssue.created),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.issuesTableConfig.createdDataCellOnTap, navigateToViewPageAction, targetIssue)
                        : null,
                  ),
            pageConfig.issuesTableConfig.descriptionDataCell != null
                ? pageConfig.issuesTableConfig.descriptionDataCell(targetIssue, context)
                : DataCell(
                    targetIssue?.description != null
                        ? Text(
                            targetIssue?.description != null ? targetIssue.description.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.issuesTableConfig.descriptionDataCellOnTap, navigateToViewPageAction, targetIssue)
                        : null,
                  ),
            pageConfig.issuesTableConfig.representationDataCell != null
                ? pageConfig.issuesTableConfig.representationDataCell(targetIssue, context)
                : DataCell(
                    targetIssue?.representation != null
                        ? Text(
                            targetIssue?.representation != null ? targetIssue.representation.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.issuesTableConfig.representationDataCellOnTap, navigateToViewPageAction, targetIssue)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.issuesTableConfig, rowActionList, targetIssue, pageStore.pageState)),
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
