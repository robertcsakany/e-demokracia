//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.cons.view;

class EdemokraciaAdminDebateConsViewCommentsTabletTable implements JudoTableDataInfo {
  const EdemokraciaAdminDebateConsViewCommentsTabletTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminDebateConsViewPageStore pageStore;
  final AdminDebateConsViewConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Created'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Comment'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Created by'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'up'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
        numeric: true,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'down'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
        numeric: true,
      ),
      DataColumn(label: Text("")),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 0) {
      return 'created';
    }
    if (columnIndex == 1) {
      return 'comment';
    }
    if (columnIndex == 2) {
      return 'createdByName';
    }
    if (columnIndex == 3) {
      return 'upVotes';
    }
    if (columnIndex == 4) {
      return 'downVotes';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetComment) => DataRow(
          cells: [
            pageConfig.commentsTableConfig.createdDataCell != null
                ? pageConfig.commentsTableConfig.createdDataCell(targetComment, context)
                : DataCell(
                    targetComment?.created != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetComment.created),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.commentsTableConfig.createdDataCellOnTap, navigateToViewPageAction, targetComment)
                        : null,
                  ),
            pageConfig.commentsTableConfig.commentDataCell != null
                ? pageConfig.commentsTableConfig.commentDataCell(targetComment, context)
                : DataCell(
                    targetComment?.comment != null
                        ? Text(
                            targetComment?.comment != null ? targetComment.comment.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.commentsTableConfig.commentDataCellOnTap, navigateToViewPageAction, targetComment)
                        : null,
                  ),
            pageConfig.commentsTableConfig.createdByNameDataCell != null
                ? pageConfig.commentsTableConfig.createdByNameDataCell(targetComment, context)
                : DataCell(
                    targetComment?.createdByName != null
                        ? Text(
                            targetComment?.createdByName != null ? targetComment.createdByName.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.commentsTableConfig.createdByNameDataCellOnTap, navigateToViewPageAction, targetComment)
                        : null,
                  ),
            pageConfig.commentsTableConfig.upVotesDataCell != null
                ? pageConfig.commentsTableConfig.upVotesDataCell(targetComment, context)
                : DataCell(
                    targetComment?.upVotes != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              targetComment?.upVotes != null ? targetComment.upVotes.toString() : '',
                            ))
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.commentsTableConfig.upVotesDataCellOnTap, navigateToViewPageAction, targetComment)
                        : null,
                  ),
            pageConfig.commentsTableConfig.downVotesDataCell != null
                ? pageConfig.commentsTableConfig.downVotesDataCell(targetComment, context)
                : DataCell(
                    targetComment?.downVotes != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              targetComment?.downVotes != null ? targetComment.downVotes.toString() : '',
                            ))
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.commentsTableConfig.downVotesDataCellOnTap, navigateToViewPageAction, targetComment)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.commentsTableConfig, rowActionList, targetComment, pageStore.pageState)),
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
