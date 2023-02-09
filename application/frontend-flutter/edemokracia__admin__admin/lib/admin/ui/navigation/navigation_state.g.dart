// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationState on _NavigationState, Store {
  final _$breadcrumbItemsAtom = Atom(name: '_NavigationState.breadcrumbItems');

  @override
  ObservableList<BreadCrumbItem> get breadcrumbItems {
    _$breadcrumbItemsAtom.reportRead();
    return super.breadcrumbItems;
  }

  @override
  set breadcrumbItems(ObservableList<BreadCrumbItem> value) {
    _$breadcrumbItemsAtom.reportWrite(value, super.breadcrumbItems, () {
      super.breadcrumbItems = value;
    });
  }

  final _$currentTitleAtom = Atom(name: '_NavigationState.currentTitle');

  @override
  String get currentTitle {
    _$currentTitleAtom.reportRead();
    return super.currentTitle;
  }

  @override
  set currentTitle(String value) {
    _$currentTitleAtom.reportWrite(value, super.currentTitle, () {
      super.currentTitle = value;
    });
  }

  final _$currentPageActionsAtom = Atom(name: '_NavigationState.currentPageActions');

  @override
  PageActions get currentPageActions {
    _$currentPageActionsAtom.reportRead();
    return super.currentPageActions;
  }

  @override
  set currentPageActions(PageActions value) {
    _$currentPageActionsAtom.reportWrite(value, super.currentPageActions, () {
      super.currentPageActions = value;
    });
  }

  final _$_NavigationStateActionController = ActionController(name: '_NavigationState');

  @override
  void setCurrentTitle(String newTitle) {
    final _$actionInfo = _$_NavigationStateActionController.startAction(name: '_NavigationState.setCurrentTitle');
    try {
      return super.setCurrentTitle(newTitle);
    } finally {
      _$_NavigationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentPageActions(PageActions pageActions) {
    final _$actionInfo = _$_NavigationStateActionController.startAction(name: '_NavigationState.setCurrentPageActions');
    try {
      return super.setCurrentPageActions(pageActions);
    } finally {
      _$_NavigationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
breadcrumbItems: ${breadcrumbItems},
currentTitle: ${currentTitle},
currentPageActions: ${currentPageActions}
    ''';
  }
}
