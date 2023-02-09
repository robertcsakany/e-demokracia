//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.issue.view;

class EdemokraciaAdminDebateIssueViewCategoriesDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminDebateIssueViewCategoriesDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminDebateIssueViewPageStore pageStore;
  final AdminDebateIssueViewConfig pageConfig;

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
    if (columnIndex == 0) {
      return 'title';
    }
    if (columnIndex == 1) {
      return 'description';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetIssueCategory) => DataRow(
          cells: [
            pageConfig.categoriesTableConfig.titleDataCell != null
                ? pageConfig.categoriesTableConfig.titleDataCell(targetIssueCategory, context)
                : DataCell(
                    targetIssueCategory?.title != null
                        ? Text(
                            targetIssueCategory?.title != null ? targetIssueCategory.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.categoriesTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetIssueCategory)
                        : null,
                  ),
            pageConfig.categoriesTableConfig.descriptionDataCell != null
                ? pageConfig.categoriesTableConfig.descriptionDataCell(targetIssueCategory, context)
                : DataCell(
                    targetIssueCategory?.description != null
                        ? Text(
                            targetIssueCategory?.description != null ? targetIssueCategory.description.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.categoriesTableConfig.descriptionDataCellOnTap, navigateToViewPageAction, targetIssueCategory)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.categoriesTableConfig, rowActionList, targetIssueCategory, pageStore.pageState)),
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
