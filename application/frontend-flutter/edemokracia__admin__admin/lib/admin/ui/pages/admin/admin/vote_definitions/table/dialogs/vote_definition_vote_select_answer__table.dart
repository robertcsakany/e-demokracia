//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #dialogFactoryExpressionForOperations(#application)
// Path expression: #dialogTablePathForOperations(#self.owner,#self.operation)
// Template name: lib/ui/pages/page/operation_dialog_tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.vote_definitions.table;

class AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogTable implements JudoTableDataInfo {
  const AdminAdminVoteDefinitionsTableVoteDefinitionVoteSelectAnswerDialogTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminVoteDefinitionsTablePageStore pageStore;
  final AdminAdminVoteDefinitionsTableConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(AppLocalizations.of(context).lookUpValue(context, 'Title')),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(AppLocalizations.of(context).lookUpValue(context, 'Description')),
        onSort: onSort,
      ),
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
    return (targetSelectAnswerVoteSelection) => DataRow(
          cells: [
            pageConfig.voteSelectAnswerTableConfig.titleDataCell != null
                ? pageConfig.voteSelectAnswerTableConfig.titleDataCell(targetSelectAnswerVoteSelection, context)
                : DataCell(
                    targetSelectAnswerVoteSelection?.title != null
                        ? Text(
                            targetSelectAnswerVoteSelection?.title != null ? targetSelectAnswerVoteSelection.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                  ),
            pageConfig.voteSelectAnswerTableConfig.descriptionDataCell != null
                ? pageConfig.voteSelectAnswerTableConfig.descriptionDataCell(targetSelectAnswerVoteSelection, context)
                : DataCell(
                    targetSelectAnswerVoteSelection?.description != null
                        ? Text(
                            targetSelectAnswerVoteSelection?.description != null ? targetSelectAnswerVoteSelection.description.toString() : '',
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
