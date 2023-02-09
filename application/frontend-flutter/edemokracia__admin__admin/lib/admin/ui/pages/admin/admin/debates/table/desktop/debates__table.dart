//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.debates.table;

class EdemokraciaAdminAdminDebatesTableDebateTableDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminDebatesTableDebateTableDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminDebatesTablePageStore pageStore;
  final AdminAdminDebatesTableConfig pageConfig;

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
            pageConfig.debatesTableConfig.descriptionDataCell != null
                ? pageConfig.debatesTableConfig.descriptionDataCell(targetDebate, context)
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
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.descriptionDataCellOnTap, navigateToViewPageAction, targetDebate)
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
