//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #utilitiesFolderPath(#application.actor)+'filter_store.dart'
// Template name: lib/ui/utilities/filter_store.dart.hbs
// Application: edemokracia::admin::Admin

part of judo.ui.pages.utility;

enum FilterType { boolean, numeric, string, enumeration, date, dateTime, time, trinaryLogic }

class FilterStore extends _FilterStore with _$FilterStore {
  String attributeLabel;

  String attributeName;

  FilterType filterType;

  /// Just for Enumerations
  List enumValues;

  FilterStore({this.attributeLabel, this.attributeName, this.filterType, this.enumValues})
      : super(attributeLabel, attributeName, filterType, enumValues: enumValues);

  FilterStore.clone(FilterStore filterStore) : super.clone(filterStore);
}

abstract class _FilterStore with Store {
  _FilterStore(this.attributeLabel, this.attributeName, this.filterType, {this.enumValues}) {
    filterOperation = defaultFilterOperation[filterType.toString().split('.').last];
  }

  _FilterStore.clone(FilterStore filterStore) {
    this.attributeLabel = filterStore.attributeLabel;
    this.attributeName = filterStore.attributeName;
    this.filterType = filterStore.filterType;
    if (filterStore.enumValues != null) {
      this.enumValues = List.of(filterStore.enumValues);
    }
    this.filterOperation = filterStore.filterOperation;
    this.filterValue = filterStore.filterValue;
    this.widgetLabel = filterStore.widgetLabel;
  }

  String attributeLabel;

  String attributeName;

  FilterType filterType;

  List enumValues;

  @observable
  String filterOperation;

  @observable
  dynamic filterValue;

  @observable
  String widgetLabel = '';

  @action
  void setWidgetLabelRaw(String label) => widgetLabel = label;

  @action
  void setWidgetLabel(BuildContext context) => widgetLabel =
      AppLocalizations.of(context).lookUpValue(context, attributeLabel) + ' ' + AppLocalizations.of(context).lookUpValue(context, filterOperation);

  @action
  void setFilterOperation(String filterOperation) => this.filterOperation = filterOperation;

  @action
  void setFilterValue(dynamic newValue) {
    filterValue = newValue;
  }

  @computed
  Icon get getOperationIcon {
    return Icon(getIconByString(filterOperationIcons[filterOperation]));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _FilterStore &&
          runtimeType == other.runtimeType &&
          attributeName == other.attributeName &&
          filterValue == other.filterValue &&
          filterOperation == other.filterOperation;

  @override
  int get hashCode => attributeName.hashCode;
}
