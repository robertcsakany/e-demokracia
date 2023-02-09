//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreTableConfigPath(#self.owner)
// Template name: lib/ui/pages/page/table__config_class.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::IssueCategory.subcategories#Edit

part of admin.ui.pages.admin.issue_category.subcategories.update;

class AdminIssueCategorySubcategoriesUpdateAdminIssueCategorySubcategoriesTableConfig extends TableConfig {
  AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCell titleDataCell;

  AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCellOnTap titleDataCellOnTap;
  AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCell descriptionDataCell;

  AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategorySubcategoriesTableDataCellOnTap descriptionDataCellOnTap;

  AdminIssueCategorySubcategoriesUpdateAdminIssueCategorySubcategoriesTableConfig({
    this.titleDataCell,
    this.titleDataCellOnTap,
    this.descriptionDataCell,
    this.descriptionDataCellOnTap,
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

class AdminIssueCategorySubcategoriesUpdateAdminIssueCategoryOwnerTableConfig extends TableConfig {
  AdminIssueCategorySubcategoriesUpdatePageAdminIssueCategoryOwnerTableDataCell representationDataCell;

  AdminIssueCategorySubcategoriesUpdateAdminIssueCategoryOwnerTableConfig({
    this.representationDataCell,
    bool rowClickNavigate = true,
    List<FilterStore> defaultOpenedFilters = const [],
    List<FilterStore> selectableFilters = const [],
    bool sortAsc = true,
    int sortColumnIndex = 0,
    String sortColumnName = '',
    bool filtersHorizontalOrientation = true,
    int numberOfColumnsAfterFilterHorizontalInDialog = 4,
  }) : super(
          rowClickNavigate: rowClickNavigate,
          defaultOpenedFilters: defaultOpenedFilters,
          selectableFilters: selectableFilters,
          sortAsc: sortAsc,
          sortColumnIndex: sortColumnIndex,
          sortColumnName: sortColumnName,
          filtersHorizontalOrientation: filtersHorizontalOrientation,
          numberOfColumnsAfterFilterHorizontalInDialog: numberOfColumnsAfterFilterHorizontalInDialog,
        );
}
