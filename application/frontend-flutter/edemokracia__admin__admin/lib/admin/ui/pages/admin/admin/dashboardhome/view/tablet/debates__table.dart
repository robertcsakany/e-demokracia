//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.dashboardhome.view;

class EdemokraciaAdminAdminDashboardhomeViewDebatesTabletTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminDashboardhomeViewDebatesTabletTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

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
          AppLocalizations.of(context).lookUpValue(context, 'CloseAt'),
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
      return 'closeAt';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetDebate) => DataRow(
          cells: [
            pageConfig.debatesTableConfig.titleDataCell != null
                ? pageConfig.debatesTableConfig.titleDataCell(targetDebate, context)
                : DataCell(
                    targetDebate?.title != null
                        ? Text(
                            targetDebate?.title != null ? targetDebate.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            pageConfig.debatesTableConfig.closeAtDataCell != null
                ? pageConfig.debatesTableConfig.closeAtDataCell(targetDebate, context)
                : DataCell(
                    targetDebate?.closeAt != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetDebate.closeAt),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.closeAtDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            pageConfig.debatesTableConfig.statusDataCell != null
                ? pageConfig.debatesTableConfig.statusDataCell(targetDebate, context)
                : DataCell(
                    targetDebate?.status != null
                        ? Text(
                            AppLocalizations.of(context).lookUpValue(context, targetDebate.status.toString().split('.').last),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.statusDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.debatesTableConfig, rowActionList, targetDebate, pageStore.pageState)),
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
