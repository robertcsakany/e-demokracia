//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreTableConfigPath(#self.owner)
// Template name: lib/ui/pages/page/table__config_class.dart.hbs
// Application: edemokracia::admin::Admin
// Page: edemokracia::admin::Debate.voteDefinition#View

part of admin.ui.pages.admin.debate.vote_definition.view;

class AdminDebateVoteDefinitionViewAdminVoteDefinitionVoteSelectAnswerTableConfig extends TableConfig {
  AdminDebateVoteDefinitionViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCell titleDataCell;

  AdminDebateVoteDefinitionViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCellOnTap titleDataCellOnTap;
  AdminDebateVoteDefinitionViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCell descriptionDataCell;

  AdminDebateVoteDefinitionViewPageAdminVoteDefinitionVoteSelectAnswerTableDataCellOnTap descriptionDataCellOnTap;

  AdminDebateVoteDefinitionViewAdminVoteDefinitionVoteSelectAnswerTableConfig({
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
