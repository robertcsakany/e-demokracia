//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.vote_definition.debate.table;

class EdemokraciaAdminVoteDefinitionDebateTableDebateTableTabletTable implements JudoTableDataInfo {
  const EdemokraciaAdminVoteDefinitionDebateTableDebateTableTabletTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminVoteDefinitionDebateTablePageStore pageStore;
  final AdminVoteDefinitionDebateTableConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'CloseAt'),
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
          AppLocalizations.of(context).lookUpValue(context, 'Status'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Title'),
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
      return 'closeAt';
    }
    if (columnIndex == 1) {
      return 'description';
    }
    if (columnIndex == 3) {
      return 'title';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetDebate) => DataRow(
          cells: [
            pageConfig.debateTableConfig.closeAtDataCell != null
                ? pageConfig.debateTableConfig.closeAtDataCell(targetDebate, context)
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
                        ? () => _customOnTapOrNavigateToView(pageConfig.debateTableConfig.closeAtDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            pageConfig.debateTableConfig.descriptionDataCell != null
                ? pageConfig.debateTableConfig.descriptionDataCell(targetDebate, context)
                : DataCell(
                    targetDebate?.description != null
                        ? Text(
                            targetDebate?.description != null ? targetDebate.description.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debateTableConfig.descriptionDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            pageConfig.debateTableConfig.statusDataCell != null
                ? pageConfig.debateTableConfig.statusDataCell(targetDebate, context)
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
                        ? () => _customOnTapOrNavigateToView(pageConfig.debateTableConfig.statusDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            pageConfig.debateTableConfig.titleDataCell != null
                ? pageConfig.debateTableConfig.titleDataCell(targetDebate, context)
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
                        ? () => _customOnTapOrNavigateToView(pageConfig.debateTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetDebate)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.debateTableConfig, rowActionList, targetDebate, pageStore.pageState)),
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
