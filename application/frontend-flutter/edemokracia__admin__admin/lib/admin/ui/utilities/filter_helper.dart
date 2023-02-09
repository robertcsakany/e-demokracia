//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #utilitiesFolderPath(#application.actor)+'filter_helper.dart'
// Template name: lib/ui/utilities/filter_helper.dart.hbs
// Application: edemokracia::admin::Admin

part of judo.ui.pages.utility;

void setFiltersLocalizedLabel(BuildContext context, List<FilterStore> filters) {
  filters.forEach((filter) => filter.setWidgetLabel(context));
}

bool isFilterWidgetsBreakable(int numberOfColumns, int numberOfColumnsAfterFilterHorizontal) {
  return numberOfColumnsAfterFilterHorizontal > 1 && numberOfColumns >= numberOfColumnsAfterFilterHorizontal;
}

List<Widget> getInputFilterWidgetsForDialog(BuildContext context, List<FilterStore> filterStoreList, Function getRangeAction, int numberOfColumns,
    int numberOfColumnsAfterFilterHorizontal, PageState pageState) {
  if (isFilterWidgetsBreakable(numberOfColumns, numberOfColumnsAfterFilterHorizontal)) {
    return breakFilterWidgets(context, filterStoreList, getRangeAction, 2, pageState); // 2 is the number of filter widgets in a row
  } else {
    return breakFilterWidgets(context, filterStoreList, getRangeAction, 1, pageState); // 1 is the number of filter widgets in a row
  }
}

List<Widget> getInputFilterWidgetsForTablePage(
    BuildContext context, List<FilterStore> filterStoreList, int layoutMaxCols, Function getAction, bool horizontal, PageState pageState) {
  if (horizontal) {
    return getInputFilterWidgetsHorizontalForTablePage(context, filterStoreList, layoutMaxCols, getAction, pageState);
  } else {
    return breakFilterWidgets(context, filterStoreList, getAction, 1, pageState); // vertical orientation
  }
}

List<Widget> getInputFilterWidgetsHorizontalForTablePage(
    BuildContext context, List<FilterStore> filterStoreList, int layoutMaxCols, Function getAction, PageState pageState) {
  int filtersPerRow;
  if (layoutMaxCols >= 12) {
    filtersPerRow = 3;
  } else if (layoutMaxCols >= 8) {
    filtersPerRow = 2;
  } else if (layoutMaxCols >= 4) {
    filtersPerRow = 1;
  } else {
    filtersPerRow = 1;
  }

  return breakFilterWidgets(context, filterStoreList, getAction, filtersPerRow, pageState);
}

List<Widget> breakFilterWidgets(BuildContext context, List<FilterStore> filterStoreList, Function getAction, int filtersPerRow, PageState pageState) {
// wrap filter widget components with row
  List<Widget> rowWrappedFilterWidgets = filterStoreList.map<Widget>((filterStore) {
    return JudoRow(
      col: 1,
      children: [
        Center(child: getOperationsIconButton(context, filterStore, pageState)),
        getFilterInputWidget(context: context, filterStore: filterStore, getAction: getAction),
        Center(
          child: Observer(
              builder: (_) => JudoButtonWidget(
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  disabled: pageState.disabledByLoading || false,
                  outlined: true,
                  onPressed: () async {
                    filterStoreList.remove(filterStore);
                    await getAction();
                  })),
        ),
      ],
    );
  }).toList();

  // fill missing col numbers with spacer
  int fillerSize = 0;
  if (filterStoreList.length % filtersPerRow != 0) {
    fillerSize = filtersPerRow - (filterStoreList.length % filtersPerRow);
  }
  for (int i = 0; i < fillerSize; i++) {
    rowWrappedFilterWidgets.add(JudoSpacer(col: 1));
  }

  // separate filters per row
  List<Widget> distributedRowWidgets = [];
  for (int i = 0; i < rowWrappedFilterWidgets.length; i += filtersPerRow) {
    distributedRowWidgets.add(JudoRow(col: 1, children: rowWrappedFilterWidgets.sublist(i, i + filtersPerRow)));
  }
  return distributedRowWidgets;
}

Widget getOperationsIconButton(BuildContext context, FilterStore filterStore, PageState pageState) {
  switch (filterStore.filterType) {
    case FilterType.dateTime:
      return iconDropDownWidget<NumericOperation>(context, filterStore, NumericOperation.values, pageState);
    case FilterType.trinaryLogic:
    case FilterType.boolean:
      return iconDropDownWidget<BooleanOperation>(context, filterStore, BooleanOperation.values, pageState);

    case FilterType.string:
      return iconDropDownWidget<StringOperation>(context, filterStore, StringOperation.values, pageState);

    case FilterType.numeric:
      return iconDropDownWidget<NumericOperation>(context, filterStore, NumericOperation.values, pageState);

    case FilterType.enumeration:
      return iconDropDownWidget<EnumerationOperation>(context, filterStore, EnumerationOperation.values, pageState);
    default:
      return Container();
  }
}

Map<T, JudoMenuItemData> getPopupMenuFilterOperationItems<T>(
    List<T> filterOperationList, Function getFilterOperationLabel, FilterStore filterStore, BuildContext context) {
  return Map<T, JudoMenuItemData>.fromIterable(filterOperationList,
      key: (item) => item,
      value: (item) => JudoMenuItemData(
          value: item,
          label: getFilterOperationLabel(item),
          onSelected: () {
            filterStore.setFilterOperation(item.toString().split('.').last);
            filterStore.setWidgetLabel(context);
          }));
}

Widget iconDropDownWidget<T>(BuildContext context, FilterStore filterStore, List<T> operationValues, PageState pageState) {
  return Observer(
      builder: (_) => JudoPopupButtonWidget(
          icon: filterStore.getOperationIcon,
          disabled: pageState.disabledByLoading || false,
          items: getPopupMenuFilterOperationItems(
              operationValues, (element) => AppLocalizations.of(context).lookUpValue(context, element.toString().split('.').last), filterStore, context)));
}

Widget getFilterInputWidget({
  @required BuildContext context,
  @required FilterStore filterStore,
  Function getAction,
  double col = 1,
}) {
  switch (filterStore.filterType) {
    case FilterType.string:
      return Observer(
        builder: (_) => JudoInputText(
          col: col,
          label: filterStore.widgetLabel,
          onChanged: (value) => filterStore.setFilterValue(value),
          onSubmitted: (_) => getAction(),
          initialValue: filterStore.filterValue,
        ),
      );
    case FilterType.numeric:
      return Observer(
        builder: (_) => JudoNumericInput(
          col: col,
          label: filterStore.widgetLabel,
          onChanged: (value) => filterStore.setFilterValue(double.parse(value)),
          onSubmitted: (_) => getAction(),
          initialValue: filterStore.filterValue?.toString(),
        ),
      );
    case FilterType.date:
      return Observer(
        builder: (_) => JudoDateInput(
          col: col,
          label: filterStore.widgetLabel,
          onChanged: (value) => filterStore.setFilterValue(value),
          onSubmitted: (_) => getAction(),
          onPickerSubmitted: (_) => getAction(),
          initialDate: filterStore.filterValue != null
              ? filterStore.filterValue.runtimeType == DateTime
                  ? filterStore.filterValue
                  : DateTime.tryParse(filterStore.filterValue).toLocal()
              : null,
        ),
      );
    case FilterType.dateTime:
      return Observer(
        builder: (_) => JudoDateTimeInput(
          col: col,
          label: filterStore.widgetLabel,
          onChanged: (value) => filterStore.setFilterValue(value),
          onSubmitted: (_) => getAction(),
          onPickerSubmitted: (_) => getAction(),
          initialDate: filterStore.filterValue != null
              ? filterStore.filterValue.runtimeType == DateTime
                  ? filterStore.filterValue
                  : DateTime.tryParse(filterStore.filterValue).toLocal()
              : null,
        ),
      );
    case FilterType.time:
      return Observer(
        builder: (_) => JudoTimeInput(
          col: col,
          label: filterStore.widgetLabel,
          onChanged: (value) => filterStore.setFilterValue(value),
          onSubmitted: (_) => getAction(),
          onPickerSubmitted: (_) => getAction(),
          initialTime: filterStore.filterValue != null ? filterStore.filterValue : null,
        ),
      );
    case FilterType.boolean:
      return Observer(
          builder: (_) => JudoSwitch(
                col: 1,
                label: filterStore.widgetLabel,
                initialValue: filterStore.filterValue,
                onChanged: (value) {
                  filterStore.setFilterValue(value);
                  getAction();
                },
              ));
    case FilterType.enumeration:
      return Observer(
          builder: (_) => JudoComboBox<dynamic>(
                col: 1,
                label: filterStore.widgetLabel,
                onChanged: (value) {
                  filterStore.setFilterValue(value);
                  getAction();
                },
                items: filterStore.enumValues,
                value: filterStore.filterValue,
                dropdownMenuShow: (value) => new DropdownMenuItem<dynamic>(
                    value: value, child: Text(AppLocalizations.of(context).lookUpValue(context, value.toString().split('.').last))),
              ));
    case FilterType.trinaryLogic:
      return Observer(
          builder: (_) => JudoComboBox<bool>(
                col: 1,
                trinaryLogic: true,
                label: filterStore.widgetLabel,
                onChanged: (value) {
                  filterStore.setFilterValue(value);
                  getAction();
                },
                items: trinaryLogicMap.keys.toList(),
                value: filterStore.filterValue,
                dropdownMenuShow: (value) =>
                    new DropdownMenuItem<bool>(value: value, child: new Text(AppLocalizations.of(context).lookUpValue(context, trinaryLogicMap[value]))),
              ));
    default:
      return Container();
  }
}
