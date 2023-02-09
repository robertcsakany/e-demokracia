//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.cons.update;

class EdemokraciaAdminProConsEditProsMobileTable implements JudoTableDataInfo {
  const EdemokraciaAdminProConsEditProsMobileTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminProConsUpdatePageStore pageStore;
  final AdminProConsUpdateConfig pageConfig;

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
          AppLocalizations.of(context).lookUpValue(context, 'up'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
        numeric: true,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'down'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
        numeric: true,
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
      return 'upVotes';
    }
    if (columnIndex == 2) {
      return 'downVotes';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetPro) => DataRow(
          cells: [
            pageConfig.prosTableConfig.titleDataCell != null
                ? pageConfig.prosTableConfig.titleDataCell(targetPro, context)
                : DataCell(
                    targetPro?.title != null
                        ? Text(
                            targetPro?.title != null ? targetPro.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.prosTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetPro)
                        : null,
                  ),
            pageConfig.prosTableConfig.upVotesDataCell != null
                ? pageConfig.prosTableConfig.upVotesDataCell(targetPro, context)
                : DataCell(
                    targetPro?.upVotes != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              targetPro?.upVotes != null ? targetPro.upVotes.toString() : '',
                            ))
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.prosTableConfig.upVotesDataCellOnTap, navigateToViewPageAction, targetPro)
                        : null,
                  ),
            pageConfig.prosTableConfig.downVotesDataCell != null
                ? pageConfig.prosTableConfig.downVotesDataCell(targetPro, context)
                : DataCell(
                    targetPro?.downVotes != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              targetPro?.downVotes != null ? targetPro.downVotes.toString() : '',
                            ))
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.prosTableConfig.downVotesDataCellOnTap, navigateToViewPageAction, targetPro)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.prosTableConfig, rowActionList, targetPro, pageStore.pageState)),
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
