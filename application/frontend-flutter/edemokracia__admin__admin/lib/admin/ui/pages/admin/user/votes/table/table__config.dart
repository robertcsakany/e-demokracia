//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreTableConfigPath(#self.owner)
// Template name: lib/ui/pages/page/table__config_class.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::User.votes#Table

part of admin.ui.pages.admin.user.votes.table;

class AdminUserVotesTableAdminUserVotesTableConfig extends TableConfig {
  AdminUserVotesTablePageAdminUserVotesTableDataCell createdDataCell;

  AdminUserVotesTablePageAdminUserVotesTableDataCellOnTap createdDataCellOnTap;
  AdminUserVotesTablePageAdminUserVotesTableDataCell typeDataCell;

  AdminUserVotesTablePageAdminUserVotesTableDataCellOnTap typeDataCellOnTap;

  AdminUserVotesTableAdminUserVotesTableConfig({
    this.createdDataCell,
    this.createdDataCellOnTap,
    this.typeDataCell,
    this.typeDataCellOnTap,
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