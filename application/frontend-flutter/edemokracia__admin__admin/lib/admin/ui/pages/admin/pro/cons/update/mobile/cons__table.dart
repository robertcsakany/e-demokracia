//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.cons.update;

class EdemokraciaAdminProConsEditConsMobileTable implements JudoTableDataInfo {
  const EdemokraciaAdminProConsEditConsMobileTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

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
    return (targetCon) => DataRow(
          cells: [
            pageConfig.consTableConfig.titleDataCell != null
                ? pageConfig.consTableConfig.titleDataCell(targetCon, context)
                : DataCell(
                    targetCon?.title != null
                        ? Text(
                            targetCon?.title != null ? targetCon.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.consTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetCon)
                        : null,
                  ),
            pageConfig.consTableConfig.upVotesDataCell != null
                ? pageConfig.consTableConfig.upVotesDataCell(targetCon, context)
                : DataCell(
                    targetCon?.upVotes != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              targetCon?.upVotes != null ? targetCon.upVotes.toString() : '',
                            ))
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.consTableConfig.upVotesDataCellOnTap, navigateToViewPageAction, targetCon)
                        : null,
                  ),
            pageConfig.consTableConfig.downVotesDataCell != null
                ? pageConfig.consTableConfig.downVotesDataCell(targetCon, context)
                : DataCell(
                    targetCon?.downVotes != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              targetCon?.downVotes != null ? targetCon.downVotes.toString() : '',
                            ))
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.consTableConfig.downVotesDataCellOnTap, navigateToViewPageAction, targetCon)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.consTableConfig, rowActionList, targetCon, pageStore.pageState)),
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
