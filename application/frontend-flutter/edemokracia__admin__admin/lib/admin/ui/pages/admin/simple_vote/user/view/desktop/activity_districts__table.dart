//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.simple_vote.user.view;

class EdemokraciaAdminSimpleVoteUserViewActivityDistrictsDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminSimpleVoteUserViewActivityDistrictsDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminSimpleVoteUserViewPageStore pageStore;
  final AdminSimpleVoteUserViewConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'District'),
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
    return (targetDistrict) => DataRow(
          cells: [
            pageConfig.activityDistrictsTableConfig.representationDataCell != null
                ? pageConfig.activityDistrictsTableConfig.representationDataCell(targetDistrict, context)
                : DataCell(
                    targetDistrict?.representation != null
                        ? Text(
                            targetDistrict?.representation != null ? targetDistrict.representation.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.activityDistrictsTableConfig.representationDataCellOnTap, navigateToViewPageAction, targetDistrict)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.activityDistrictsTableConfig, rowActionList, targetDistrict, pageStore.pageState)),
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
