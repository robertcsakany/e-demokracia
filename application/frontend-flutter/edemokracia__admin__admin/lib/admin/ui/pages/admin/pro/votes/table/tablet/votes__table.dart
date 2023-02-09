//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.votes.table;

class EdemokraciaAdminProVotesTableVotesListTabletTable implements JudoTableDataInfo {
  const EdemokraciaAdminProVotesTableVotesListTabletTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminProVotesTablePageStore pageStore;
  final AdminProVotesTableConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Created'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Type'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
      ),
      DataColumn(label: Text("")),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 0) {
      return 'created';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetSimpleVote) => DataRow(
          cells: [
            pageConfig.votesTableConfig.createdDataCell != null
                ? pageConfig.votesTableConfig.createdDataCell(targetSimpleVote, context)
                : DataCell(
                    targetSimpleVote?.created != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetSimpleVote.created),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.votesTableConfig.createdDataCellOnTap, navigateToViewPageAction, targetSimpleVote)
                        : null,
                  ),
            pageConfig.votesTableConfig.typeDataCell != null
                ? pageConfig.votesTableConfig.typeDataCell(targetSimpleVote, context)
                : DataCell(
                    targetSimpleVote?.type != null
                        ? Text(
                            AppLocalizations.of(context).lookUpValue(context, targetSimpleVote.type.toString().split('.').last),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.votesTableConfig.typeDataCellOnTap, navigateToViewPageAction, targetSimpleVote)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.votesTableConfig, rowActionList, targetSimpleVote, pageStore.pageState)),
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
