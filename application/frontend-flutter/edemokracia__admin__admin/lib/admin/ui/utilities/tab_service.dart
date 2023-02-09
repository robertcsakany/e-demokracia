part of judo.ui.pages.utility;

@lazySingleton
class TabService {
  TabStore getOrCreateTabStore(String xmiid) {
    if (_tabs.containsKey(xmiid)) {
      return _tabs[xmiid];
    }

    return _tabs[xmiid] = TabStore();
  }

  Map<String, TabStore> _tabs = {};
}
