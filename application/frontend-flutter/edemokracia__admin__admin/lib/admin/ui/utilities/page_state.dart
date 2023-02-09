part of judo.ui.pages.utility;

class PageState extends _PageState with _$PageState {}

abstract class _PageState with Store {
  @observable
  bool disabledByLoading = false;

  @action
  void setDisabledByLoading(bool disabled) {
    disabledByLoading = disabled;
  }
}
