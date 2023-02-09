//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.dashboardhome.view;

class EdemokraciaAdminAdminDashboardhomeViewIssuesDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminDashboardhomeViewIssuesDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminDashboardhomeViewPageStore pageStore;
  final AdminAdminDashboardhomeViewConfig pageConfig;

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
          AppLocalizations.of(context).lookUpValue(context, 'Created'),
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
      DataColumn(label: Text("")),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 0) {
      return 'title';
    }
    if (columnIndex == 1) {
      return 'created';
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
