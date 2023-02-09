import 'package:edemokracia/admin/ui/utilities/package.dart';

/// Userland Config for Tables, feel free to override or extend to specialize!
class TableConfig {
  bool rowClickNavigate;
  List<FilterStore> defaultOpenedFilters;
  List<FilterStore> selectableFilters;
  bool sortAsc; // not used yet
  int sortColumnIndex; // not used yet
  String sortColumnName; // not used yet
  bool filtersHorizontalOrientation;
  int numberOfColumnsAfterFilterHorizontalInDialog;
  int shownRowActions;
  bool showRowActionsLabel;

  TableConfig({
    this.rowClickNavigate = true,
    this.defaultOpenedFilters = const [],
    this.selectableFilters = const [],
    this.sortAsc = true,
    this.sortColumnIndex = 0,
    this.sortColumnName = '',
    this.filtersHorizontalOrientation = true,
    this.numberOfColumnsAfterFilterHorizontalInDialog = 4,
    this.shownRowActions = 1,
    this.showRowActionsLabel = true,
  });
}
