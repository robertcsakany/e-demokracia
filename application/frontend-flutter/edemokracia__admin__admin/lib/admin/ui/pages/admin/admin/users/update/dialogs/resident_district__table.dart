//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #dialogFactoryExpressionForLinks(#application.links)
// Path expression: #dialogTablePath(#self.pageDefinition,#self.dataElement.name)
// Template name: lib/ui/pages/page/dialog_linktabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.users.update;

class AdminAdminUsersUpdateResidentDistrictDialogTable implements JudoTableDataInfo {
  const AdminAdminUsersUpdateResidentDistrictDialogTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminUsersUpdatePageStore pageStore;
  final AdminAdminUsersUpdateConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(AppLocalizations.of(context).lookUpValue(context, 'District')),
        onSort: onSort,
      ),
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
            pageConfig.residentDistrictTableConfig.representationDataCell != null
                ? pageConfig.residentDistrictTableConfig.representationDataCell(targetDistrict, context)
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
                  ),
          ],
        );
  }
}
