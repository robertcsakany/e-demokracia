//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue_category.owner.view;

class EdemokraciaAdminIssueCategoryOwnerViewActivityCitiesTabletTable implements JudoTableDataInfo {
  const EdemokraciaAdminIssueCategoryOwnerViewActivityCitiesTabletTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminIssueCategoryOwnerViewPageStore pageStore;
  final AdminIssueCategoryOwnerViewConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'City'),
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
      return 'representation';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetCity) => DataRow(
          cells: [
            pageConfig.activityCitiesTableConfig.representationDataCell != null
                ? pageConfig.activityCitiesTableConfig.representationDataCell(targetCity, context)
                : DataCell(
                    targetCity?.representation != null
                        ? Text(
                            targetCity?.representation != null ? targetCity.representation.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () =>
                            _customOnTapOrNavigateToView(pageConfig.activityCitiesTableConfig.representationDataCellOnTap, navigateToViewPageAction, targetCity)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.activityCitiesTableConfig, rowActionList, targetCity, pageStore.pageState)),
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
