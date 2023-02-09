//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreTableConfigPath(#self.owner)
// Template name: lib/ui/pages/page/table__config_class.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Admin.debates#Table

part of admin.ui.pages.admin.admin.debates.table;

class AdminAdminDebatesTableAdminAdminDebatesTableConfig extends TableConfig {
  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCell closeAtDataCell;

  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCellOnTap closeAtDataCellOnTap;
  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCell descriptionDataCell;

  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCellOnTap descriptionDataCellOnTap;
  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCell statusDataCell;

  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCellOnTap statusDataCellOnTap;
  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCell titleDataCell;

  AdminAdminDebatesTablePageAdminAdminDebatesTableDataCellOnTap titleDataCellOnTap;

  AdminAdminDebatesTableAdminAdminDebatesTableConfig({
    this.closeAtDataCell,
    this.closeAtDataCellOnTap,
    this.descriptionDataCell,
    this.descriptionDataCellOnTap,
    this.statusDataCell,
    this.statusDataCellOnTap,
    this.titleDataCell,
    this.titleDataCellOnTap,
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
