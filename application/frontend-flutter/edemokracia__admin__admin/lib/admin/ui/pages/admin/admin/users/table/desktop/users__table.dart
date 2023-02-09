//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #tableFactoryExpression(#application)
// Path expression: #tablePath(#self.pageDefinition,#self.pageContainer.layoutType.name,#self.dataElement.name)
// Template name: lib/ui/pages/page/tabledatainfo.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.users.table;

class EdemokraciaAdminAdminUsersTableUserTableDesktopTable implements JudoTableDataInfo {
  const EdemokraciaAdminAdminUsersTableUserTableDesktopTable(this.context, this.pageStore, this.pageConfig, {this.disabled = false});

  final BuildContext context;
  final bool disabled;
  final AdminAdminUsersTablePageStore pageStore;
  final AdminAdminUsersTableConfig pageConfig;

  @override
  List<DataColumn> getColumns(Function onAdd, Function onSort) {
    return [
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Username'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Has admin access'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'First name'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Last name'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Phone'),
          style: JudoComponentCustomizer.get().getTableHeaderTextStyle(Theme.of(context)),
        ),
        onSort: onSort,
      ),
      DataColumn(
        label: Text(
          AppLocalizations.of(context).lookUpValue(context, 'Email'),
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
      DataColumn(label: Text("")),
    ];
  }

  @override
  String getColumnFieldByIndex(int columnIndex) {
    if (columnIndex == 0) {
      return 'userName';
    }
    if (columnIndex == 1) {
      return 'isAdmin';
    }
    if (columnIndex == 2) {
      return 'firstName';
    }
    if (columnIndex == 3) {
      return 'lastName';
    }
    if (columnIndex == 4) {
      return 'phone';
    }
    if (columnIndex == 5) {
      return 'email';
    }
    if (columnIndex == 6) {
      return 'created';
    }
  }

  @override
  Function getRow({BuildContext context, List<TableRowAction> rowActionList, Function navigateToViewPageAction}) {
    ThemeData theme = Theme.of(context);
    return (targetUser) => DataRow(
          cells: [
            pageConfig.usersTableConfig.userNameDataCell != null
                ? pageConfig.usersTableConfig.userNameDataCell(targetUser, context)
                : DataCell(
                    targetUser?.userName != null
                        ? Text(
                            targetUser?.userName != null ? targetUser.userName.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.userNameDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            pageConfig.usersTableConfig.isAdminDataCell != null
                ? pageConfig.usersTableConfig.isAdminDataCell(targetUser, context)
                : DataCell(
                    Center(
                        child: Theme(
                            data: JudoComponentCustomizer.get().getBooleanColorTheme(Theme.of(context), targetUser?.isAdmin),
                            child: Icon(
                              targetUser?.isAdmin != null
                                  ? (targetUser?.isAdmin ? Icons.check_circle : Icons.cancel)
                                  : JudoComponentCustomizer.get().getEmptyCellIcon(),
                            ))),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.isAdminDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            pageConfig.usersTableConfig.firstNameDataCell != null
                ? pageConfig.usersTableConfig.firstNameDataCell(targetUser, context)
                : DataCell(
                    targetUser?.firstName != null
                        ? Text(
                            targetUser?.firstName != null ? targetUser.firstName.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.firstNameDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            pageConfig.usersTableConfig.lastNameDataCell != null
                ? pageConfig.usersTableConfig.lastNameDataCell(targetUser, context)
                : DataCell(
                    targetUser?.lastName != null
                        ? Text(
                            targetUser?.lastName != null ? targetUser.lastName.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.lastNameDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            pageConfig.usersTableConfig.phoneDataCell != null
                ? pageConfig.usersTableConfig.phoneDataCell(targetUser, context)
                : DataCell(
                    targetUser?.phone != null
                        ? Text(
                            targetUser?.phone != null ? targetUser.phone.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.phoneDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            pageConfig.usersTableConfig.emailDataCell != null
                ? pageConfig.usersTableConfig.emailDataCell(targetUser, context)
                : DataCell(
                    targetUser?.email != null
                        ? Text(
                            targetUser?.email != null ? targetUser.email.toString() : '',
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.emailDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            pageConfig.usersTableConfig.createdDataCell != null
                ? pageConfig.usersTableConfig.createdDataCell(targetUser, context)
                : DataCell(
                    targetUser?.created != null
                        ? Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(targetUser.created),
                          )
                        : Center(
                            child: Icon(
                            JudoComponentCustomizer.get().getEmptyCellIcon(),
                            color: Theme.of(context).dividerColor,
                          )),
                    onTap: !disabled
                        ? () => _customOnTapOrNavigateToView(pageConfig.usersTableConfig.createdDataCellOnTap, navigateToViewPageAction, targetUser)
                        : null,
                  ),
            DataCell(TableUtility.getRowActionsWidget(pageConfig.usersTableConfig, rowActionList, targetUser, pageStore.pageState)),
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
