//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.issue.view;

class EdemokraciaAdminDebateIssueViewDebatesDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminDebateIssueViewDebatesDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminDebateIssueViewPageStore pageStore;
  final AdminDebateIssueViewConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
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
      DataColumn(label: Text("")),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 1) {
      return 'title';
    }
    if (columnIndex == 2) {
      return 'closeAt';
    }
    if (columnIndex == 3) {
      return 'description';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetIssueDebate) => DataRow(
          cells: [
            pageConfig.debatesTableConfig.statusDataCell != null
                ? pageConfig.debatesTableConfig.statusDataCell(targetIssueDebate, context)
                : DataCell(
                    targetIssueDebate?.status != null
                        ? Text(
                            AppLocalizations.of(context).lookUpValue(context, targetIssueDebate.status.toString().split('.').last),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.statusDataCellOnTap, navigateToViewPageAction, targetIssueDebate)
                        : null,
                  ),
            pageConfig.debatesTableConfig.titleDataCell != null
                ? pageConfig.debatesTableConfig.titleDataCell(targetIssueDebate, context)
                : DataCell(
                    targetIssueDebate?.title != null
                        ? Text(
                            targetIssueDebate?.title != null ? targetIssueDebate.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetIssueDebate)
                        : null,
                  ),
            pageConfig.debatesTableConfig.closeAtDataCell != null
                ? pageConfig.debatesTableConfig.closeAtDataCell(targetIssueDebate, context)
                : DataCell(
                    targetIssueDebate?.closeAt != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetIssueDebate.closeAt),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.closeAtDataCellOnTap, navigateToViewPageAction, targetIssueDebate)
                        : null,
                  ),
            pageConfig.debatesTableConfig.descriptionDataCell != null
                ? pageConfig.debatesTableConfig.descriptionDataCell(targetIssueDebate, context)
                : DataCell(
                    targetIssueDebate?.description != null
                        ? Text(
                            targetIssueDebate?.description != null ? targetIssueDebate.description.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () =>
                            _customOnTapOrNavigateToView(pageConfig.debatesTableConfig.descriptionDataCellOnTap, navigateToViewPageAction, targetIssueDebate)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.debatesTableConfig, rowActionList, targetIssueDebate, pageStore.pageState)),
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
