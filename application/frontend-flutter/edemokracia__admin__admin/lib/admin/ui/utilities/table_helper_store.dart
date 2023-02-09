//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #utilitiesFolderPath(#application.actor)+'table_helper_store.dart'
// Template name: lib/ui/utilities/table_helper_store.dart.hbs
// Application: edemokracia::admin::Admin

part of judo.ui.pages.utility;

class TableHelperStore extends _TableHelperStore with _$TableHelperStore {
  TableHelperStore(ObservableList selected, Function getId, {bool singleOptional = false}) : super(selected, getId, singleOptional);
}

abstract class _TableHelperStore with Store {
  _TableHelperStore(this.selected, this.getId, this.singleOptional);

  Function getId;

  bool singleOptional;

  @observable
  ObservableList<dynamic> selected;

  @observable
  dynamic singleSelected;

  @computed
  bool get selectButtonEnabled => selected.isNotEmpty || singleSelected != null || singleOptional;

  @action
  void selectRow(dynamic value) {
    if (selected.firstWhere((element) => getId(element) == getId(value), orElse: () => null) != null) {
      selected.removeAt(selected.indexWhere((element) => getId(element) == getId(value)));
    } else {
      selected.add(value);
    }
  }

  @action
  void singleSelectRow(dynamic value) {
    if (getId(value) == getId(singleSelected)) {
      singleSelected = null;
    } else {
      singleSelected = value;
    }
  }
}
