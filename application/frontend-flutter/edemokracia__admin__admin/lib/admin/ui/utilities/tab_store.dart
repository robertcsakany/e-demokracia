part of judo.ui.pages.utility;

class TabStore extends _TabStore with _$TabStore {}

abstract class _TabStore with Store {
  @observable
  int tabIndex = 0;

  @action
  void setTabIndex(int newTabIndex) {
    this.tabIndex = newTabIndex;
  }
}
