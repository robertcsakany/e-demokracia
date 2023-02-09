// GENERATED CODE - DO NOT MODIFY BY HAND

part of judo.ui.pages.utility;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilterStore on _FilterStore, Store {
  Computed<Icon> _$getOperationIconComputed;

  @override
  Icon get getOperationIcon => (_$getOperationIconComputed ??= Computed<Icon>(() => super.getOperationIcon, name: '_FilterStore.getOperationIcon')).value;

  final _$filterOperationAtom = Atom(name: '_FilterStore.filterOperation');

  @override
  String get filterOperation {
    _$filterOperationAtom.reportRead();
    return super.filterOperation;
  }

  @override
  set filterOperation(String value) {
    _$filterOperationAtom.reportWrite(value, super.filterOperation, () {
      super.filterOperation = value;
    });
  }

  final _$filterValueAtom = Atom(name: '_FilterStore.filterValue');

  @override
  dynamic get filterValue {
    _$filterValueAtom.reportRead();
    return super.filterValue;
  }

  @override
  set filterValue(dynamic value) {
    _$filterValueAtom.reportWrite(value, super.filterValue, () {
      super.filterValue = value;
    });
  }

  final _$widgetLabelAtom = Atom(name: '_FilterStore.widgetLabel');

  @override
  String get widgetLabel {
    _$widgetLabelAtom.reportRead();
    return super.widgetLabel;
  }

  @override
  set widgetLabel(String value) {
    _$widgetLabelAtom.reportWrite(value, super.widgetLabel, () {
      super.widgetLabel = value;
    });
  }

  final _$_FilterStoreActionController = ActionController(name: '_FilterStore');

  @override
  void setWidgetLabelRaw(String label) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(name: '_FilterStore.setWidgetLabelRaw');
    try {
      return super.setWidgetLabelRaw(label);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWidgetLabel(BuildContext context) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(name: '_FilterStore.setWidgetLabel');
    try {
      return super.setWidgetLabel(context);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilterOperation(String filterOperation) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(name: '_FilterStore.setFilterOperation');
    try {
      return super.setFilterOperation(filterOperation);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilterValue(dynamic newValue) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(name: '_FilterStore.setFilterValue');
    try {
      return super.setFilterValue(newValue);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filterOperation: ${filterOperation},
filterValue: ${filterValue},
widgetLabel: ${widgetLabel},
getOperationIcon: ${getOperationIcon}
    ''';
  }
}

mixin _$TableHelperStore on _TableHelperStore, Store {
  Computed<bool> _$selectButtonEnabledComputed;

  @override
  bool get selectButtonEnabled =>
      (_$selectButtonEnabledComputed ??= Computed<bool>(() => super.selectButtonEnabled, name: '_TableHelperStore.selectButtonEnabled')).value;

  final _$selectedAtom = Atom(name: '_TableHelperStore.selected');

  @override
  ObservableList<dynamic> get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(ObservableList<dynamic> value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$singleSelectedAtom = Atom(name: '_TableHelperStore.singleSelected');

  @override
  dynamic get singleSelected {
    _$singleSelectedAtom.reportRead();
    return super.singleSelected;
  }

  @override
  set singleSelected(dynamic value) {
    _$singleSelectedAtom.reportWrite(value, super.singleSelected, () {
      super.singleSelected = value;
    });
  }

  final _$_TableHelperStoreActionController = ActionController(name: '_TableHelperStore');

  @override
  void selectRow(dynamic value) {
    final _$actionInfo = _$_TableHelperStoreActionController.startAction(name: '_TableHelperStore.selectRow');
    try {
      return super.selectRow(value);
    } finally {
      _$_TableHelperStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void singleSelectRow(dynamic value) {
    final _$actionInfo = _$_TableHelperStoreActionController.startAction(name: '_TableHelperStore.singleSelectRow');
    try {
      return super.singleSelectRow(value);
    } finally {
      _$_TableHelperStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected},
singleSelected: ${singleSelected},
selectButtonEnabled: ${selectButtonEnabled}
    ''';
  }
}

mixin _$PageState on _PageState, Store {
  final _$disabledByLoadingAtom = Atom(name: '_PageState.disabledByLoading');

  @override
  bool get disabledByLoading {
    _$disabledByLoadingAtom.reportRead();
    return super.disabledByLoading;
  }

  @override
  set disabledByLoading(bool value) {
    _$disabledByLoadingAtom.reportWrite(value, super.disabledByLoading, () {
      super.disabledByLoading = value;
    });
  }

  final _$_PageStateActionController = ActionController(name: '_PageState');

  @override
  void setDisabledByLoading(bool disabled) {
    final _$actionInfo = _$_PageStateActionController.startAction(name: '_PageState.setDisabledByLoading');
    try {
      return super.setDisabledByLoading(disabled);
    } finally {
      _$_PageStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
disabledByLoading: ${disabledByLoading}
    ''';
  }
}

mixin _$TabStore on _TabStore, Store {
  final _$tabIndexAtom = Atom(name: '_TabStore.tabIndex');

  @override
  int get tabIndex {
    _$tabIndexAtom.reportRead();
    return super.tabIndex;
  }

  @override
  set tabIndex(int value) {
    _$tabIndexAtom.reportWrite(value, super.tabIndex, () {
      super.tabIndex = value;
    });
  }

  final _$_TabStoreActionController = ActionController(name: '_TabStore');

  @override
  void setTabIndex(int newTabIndex) {
    final _$actionInfo = _$_TabStoreActionController.startAction(name: '_TabStore.setTabIndex');
    try {
      return super.setTabIndex(newTabIndex);
    } finally {
      _$_TabStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tabIndex: ${tabIndex}
    ''';
  }
}
