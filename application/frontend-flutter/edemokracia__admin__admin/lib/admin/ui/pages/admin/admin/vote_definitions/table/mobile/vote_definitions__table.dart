//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.vote_definitions.table;

class EdemokraciaAdminAdminVoteDefinitionsTableTransferObjectTableMobileTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminVoteDefinitionsTableTransferObjectTableMobileTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminVoteDefinitionsTablePageStore pageStore;
  final AdminAdminVoteDefinitionsTableConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Title'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Created'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Description'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Status'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'CloseAt'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'IsRatingType'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'IsSelectAnswerType'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'IsYesNoAbstainType'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'IsYesNoType'),
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
      return 'title';
    }
    if (columnIndex == 1) {
      return 'created';
    }
    if (columnIndex == 2) {
      return 'description';
    }
    if (columnIndex == 4) {
      return 'closeAt';
    }
    if (columnIndex == 5) {
      return 'isRatingType';
    }
    if (columnIndex == 6) {
      return 'isSelectAnswerType';
    }
    if (columnIndex == 7) {
      return 'isYesNoAbstainType';
    }
    if (columnIndex == 8) {
      return 'isYesNoType';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetVoteDefinition) => DataRow(
          cells: [
            pageConfig.voteDefinitionsTableConfig.titleDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.titleDataCell(targetVoteDefinition, context)
                : DataCell(
                    targetVoteDefinition?.title != null
                        ? Text(
                            targetVoteDefinition?.title != null ? targetVoteDefinition.title.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.titleDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.createdDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.createdDataCell(targetVoteDefinition, context)
                : DataCell(
                    targetVoteDefinition?.created != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetVoteDefinition.created),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.createdDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.descriptionDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.descriptionDataCell(targetVoteDefinition, context)
                : DataCell(
                    targetVoteDefinition?.description != null
                        ? Text(
                            targetVoteDefinition?.description != null ? targetVoteDefinition.description.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.descriptionDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.statusDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.statusDataCell(targetVoteDefinition, context)
                : DataCell(
                    targetVoteDefinition?.status != null
                        ? Text(
                            AppLocalizations.of(context).lookUpValue(context, targetVoteDefinition.status.toString().split('.').last),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.statusDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.closeAtDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.closeAtDataCell(targetVoteDefinition, context)
                : DataCell(
                    targetVoteDefinition?.closeAt != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetVoteDefinition.closeAt),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.closeAtDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.isRatingTypeDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.isRatingTypeDataCell(targetVoteDefinition, context)
                : DataCell(
                    Center(
                        child: Theme(
                            data: JudoComponentCustomizer.get().getBooleanColorTheme(Theme.of(context), targetVoteDefinition?.isRatingType),
                            child: Icon(
                              targetVoteDefinition?.isRatingType != null
                                  ? (targetVoteDefinition?.isRatingType ? Icons.check_circle : Icons.cancel)
                                  : JudoComponentCustomizer.get().getEmptyCellIcon(),
                            ))),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.isRatingTypeDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.isSelectAnswerTypeDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.isSelectAnswerTypeDataCell(targetVoteDefinition, context)
                : DataCell(
                    Center(
                        child: Theme(
                            data: JudoComponentCustomizer.get().getBooleanColorTheme(Theme.of(context), targetVoteDefinition?.isSelectAnswerType),
                            child: Icon(
                              targetVoteDefinition?.isSelectAnswerType != null
                                  ? (targetVoteDefinition?.isSelectAnswerType ? Icons.check_circle : Icons.cancel)
                                  : JudoComponentCustomizer.get().getEmptyCellIcon(),
                            ))),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.isSelectAnswerTypeDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.isYesNoAbstainTypeDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.isYesNoAbstainTypeDataCell(targetVoteDefinition, context)
                : DataCell(
                    Center(
                        child: Theme(
                            data: JudoComponentCustomizer.get().getBooleanColorTheme(Theme.of(context), targetVoteDefinition?.isYesNoAbstainType),
                            child: Icon(
                              targetVoteDefinition?.isYesNoAbstainType != null
                                  ? (targetVoteDefinition?.isYesNoAbstainType ? Icons.check_circle : Icons.cancel)
                                  : JudoComponentCustomizer.get().getEmptyCellIcon(),
                            ))),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.isYesNoAbstainTypeDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            pageConfig.voteDefinitionsTableConfig.isYesNoTypeDataCell != null
                ? pageConfig.voteDefinitionsTableConfig.isYesNoTypeDataCell(targetVoteDefinition, context)
                : DataCell(
                    Center(
                        child: Theme(
                            data: JudoComponentCustomizer.get().getBooleanColorTheme(Theme.of(context), targetVoteDefinition?.isYesNoType),
                            child: Icon(
                              targetVoteDefinition?.isYesNoType != null
                                  ? (targetVoteDefinition?.isYesNoType ? Icons.check_circle : Icons.cancel)
                                  : JudoComponentCustomizer.get().getEmptyCellIcon(),
                            ))),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(
                            pageConfig.voteDefinitionsTableConfig.isYesNoTypeDataCellOnTap, navigateToViewPageAction, targetVoteDefinition)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.voteDefinitionsTableConfig, rowActionList, targetVoteDefinition, pageStore.pageState)),
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
