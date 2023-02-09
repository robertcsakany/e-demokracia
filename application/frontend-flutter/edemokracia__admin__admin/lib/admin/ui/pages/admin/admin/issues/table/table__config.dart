//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreTableConfigPath(#self.owner)
// Template name: lib/ui/pages/page/table__config_class.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Admin.issues#Table

part of admin.ui.pages.admin.admin.issues.table;

class AdminAdminIssuesTableAdminAdminIssuesTableConfig extends TableConfig {
  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCell titleDataCell;

  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCellOnTap titleDataCellOnTap;
  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCell statusDataCell;

  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCellOnTap statusDataCellOnTap;
  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCell createdDataCell;

  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCellOnTap createdDataCellOnTap;
  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCell descriptionDataCell;

  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCellOnTap descriptionDataCellOnTap;
  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCell representationDataCell;

  AdminAdminIssuesTablePageAdminAdminIssuesTableDataCellOnTap representationDataCellOnTap;

  AdminAdminIssuesTableAdminAdminIssuesTableConfig({
    this.titleDataCell,
    this.titleDataCellOnTap,
    this.statusDataCell,
    this.statusDataCellOnTap,
    this.createdDataCell,
    this.createdDataCellOnTap,
    this.descriptionDataCell,
    this.descriptionDataCellOnTap,
    this.representationDataCell,
    this.representationDataCellOnTap,
    bool rowClickNavigate = true,
    List<FilterStore> defaultOpenedFilters = const [],
    List<FilterStore> selectableFilters = const [],
    bool sortAsc = true,
    int sortColumnIndex = 0,
    String sortColumnName = '',
    bool filtersHorizontalOrientation = true,
    int numberOfColumnsAfterFilterHorizontalInDialog = 4,
    int shownRowActions = 1,
    bool showRowActionsLabel = true,
  }) : super(
          rowClickNavigate: rowClickNavigate,
          defaultOpenedFilters: defaultOpenedFilters,
          selectableFilters: selectableFilters,
          sortAsc: sortAsc,
          sortColumnIndex: sortColumnIndex,
          sortColumnName: sortColumnName,
          filtersHorizontalOrientation: filtersHorizontalOrientation,
          numberOfColumnsAfterFilterHorizontalInDialog: numberOfColumnsAfterFilterHorizontalInDialog,
          shownRowActions: shownRowActions,
          showRowActionsLabel: showRowActionsLabel,
        );
}
