//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #dialogFactoryExpressionForTables(#application.tables)
// Path expression: #dialogTablePath(#self.pageDefinition,#self.dataElement.name)
// Template name: lib/ui/pages/page/dialog_tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.users.update;

class AdminAdminUsersUpdateActivityDistrictsDialogTable implements JudoTableDataInfo {
  const AdminAdminUsersUpdateActivityDistrictsDialogTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminUsersUpdatePageStore pageStore;
  final AdminAdminUsersUpdateConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {}

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetDistrict) => DataRow(
          cells: [],
        );
  }
}
