//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/utilities/table_utility.dart'
// Template name: lib/ui/utilities/table_utility.dart.hbs
// Application: edemokracia::admin::Admin

part of judo.ui.pages.utility;

class TableUtility {
  static Comparator getSortComparator(int columnIndex, bool asc, JudoTableDataInfo dataInfo) {
    switch (dataInfo.getColumnFieldByIndex(columnIndex)) {
      case 'title':
        return (a, b) => _getSortComparatorResult(a.title, b.title, asc);
      case 'description':
        return (a, b) => _getSortComparatorResult(a.description, b.description, asc);
      case 'name':
        return (a, b) => _getSortComparatorResult(a.name, b.name, asc);
      case 'closeAt':
        return (a, b) => _getSortComparatorResult(a.closeAt, b.closeAt, asc);
      case 'created':
        return (a, b) => _getSortComparatorResult(a.created, b.created, asc);
      case 'upVotes':
        return (a, b) => _getSortComparatorResult(a.upVotes, b.upVotes, asc);
      case 'downVotes':
        return (a, b) => _getSortComparatorResult(a.downVotes, b.downVotes, asc);
      case 'comment':
        return (a, b) => _getSortComparatorResult(a.comment, b.comment, asc);
      case 'createdByName':
        return (a, b) => _getSortComparatorResult(a.createdByName, b.createdByName, asc);
      case 'link':
        return (a, b) => _getSortComparatorResult(a.link, b.link, asc);
      case 'representation':
        return (a, b) => _getSortComparatorResult(a.representation, b.representation, asc);
      case 'userName':
        return (a, b) => _getSortComparatorResult(a.userName, b.userName, asc);
      case 'isAdmin':
        return (a, b) => _getSortComparatorResult(a.isAdmin, b.isAdmin, asc);
      case 'firstName':
        return (a, b) => _getSortComparatorResult(a.firstName, b.firstName, asc);
      case 'lastName':
        return (a, b) => _getSortComparatorResult(a.lastName, b.lastName, asc);
      case 'phone':
        return (a, b) => _getSortComparatorResult(a.phone, b.phone, asc);
      case 'email':
        return (a, b) => _getSortComparatorResult(a.email, b.email, asc);
      case 'isRatingType':
        return (a, b) => _getSortComparatorResult(a.isRatingType, b.isRatingType, asc);
      case 'isSelectAnswerType':
        return (a, b) => _getSortComparatorResult(a.isSelectAnswerType, b.isSelectAnswerType, asc);
      case 'isYesNoAbstainType':
        return (a, b) => _getSortComparatorResult(a.isYesNoAbstainType, b.isYesNoAbstainType, asc);
      case 'isYesNoType':
        return (a, b) => _getSortComparatorResult(a.isYesNoType, b.isYesNoType, asc);
      default:
        print('Could not find column to sort by: $columnIndex');
        return (a, b) => 0;
    }
  }

  static int _getSortComparatorResult(dynamic a, dynamic b, bool asc) {
    if (a == null && b == null) return 0;
    if (a == null) {
      return asc ? 1 : -1;
    }
    if (b == null) {
      return asc ? -1 : 1;
    }
    if (a is bool && b is bool) {
      return asc ? (a ? 1 : -1) : (a ? -1 : 1);
    }
    return asc ? a.compareTo(b) : b.compareTo(a);
  }

  static Widget getRowActionsWidget(TableConfig tableConfig, List<TableRowAction> rowActions, dynamic element, PageState pageState) {
    if (tableConfig == null || tableConfig.shownRowActions == 0 || rowActions.isEmpty) {
      return Text('');
    }

    if (tableConfig.shownRowActions < 0) {
      return Row(
        children: _getRowActionButtons(rowActions, element, pageState, tableConfig),
      );
    }

    if (tableConfig.shownRowActions == 1) {
      return _getRowActionsPopUpButton(rowActions, element, pageState);
    }

    if (tableConfig.shownRowActions > 1) {
      if (tableConfig.shownRowActions > rowActions.length) {
        return Row(
          children: _getRowActionButtons(rowActions, element, pageState, tableConfig),
        );
      } else {
        return Row(
          children: [
            ..._getRowActionButtons(rowActions.sublist(0, tableConfig.shownRowActions - 1), element, pageState, tableConfig),
            _getRowActionsPopUpButton(rowActions.sublist(tableConfig.shownRowActions - 1), element, pageState)
          ],
        );
      }
    }
  }

  static List<Widget> _getRowActionButtons(List<TableRowAction> rowActions, dynamic element, PageState pageState, TableConfig tableConfig) {
    return rowActions.where((rowAction) => rowAction.hidden == null || !rowAction.hidden(element)).map<Widget>((rowAction) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: JudoButtonWidget(
            label: tableConfig.showRowActionsLabel || rowAction.icon == null ? rowAction.label : null,
            icon: rowAction.icon,
            disabled: rowAction.action == null || rowAction.disabled(element),
            outlined: false,
            onPressed: () async {
              await rowAction.action(element);
            }),
      );
    }).toList();
  }

  static Widget _getRowActionsPopUpButton(List<TableRowAction> rowActions, dynamic element, PageState pageState) {
    Map<int, JudoMenuItemData> items = {};

    for (int i = 0; i < rowActions.length; i++) {
      items[i] = JudoMenuItemData(
        icon: rowActions[i].icon,
        label: rowActions[i].label,
        disabled: rowActions[i].action == null || (rowActions[i].disabled != null && rowActions[i].disabled(element)),
        hidden: rowActions[i].hidden != null && rowActions[i].hidden(element),
        onSelected: () async => await rowActions[i].action(element),
        value: i,
      );
    }

    return JudoPopupButtonWidget<int>(
      icon: Icon(Icons.more_horiz),
      disabled: pageState.disabledByLoading,
      items: items,
      outlined: true,
    );
  }
}
