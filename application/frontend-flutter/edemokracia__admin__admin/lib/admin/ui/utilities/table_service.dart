part of judo.ui.pages.utility;

class SortSettings {
  final int sortColumnIndex;
  final String sortColumnName;
  final bool sortAsc;

  const SortSettings(this.sortColumnIndex, this.sortColumnName, this.sortAsc);
}

@lazySingleton
class TableService {
  Map<String, SortSettings> stored = {};
  Map<String, List<FilterStore>> storedFilters = {};

  SortSettings loadSortingUsingFallback(String key, {int sortColumnIndex, String sortColumnName, bool sortAsc}) {
    stored.putIfAbsent(key, () {
      return SortSettings(sortColumnIndex, sortColumnName, sortAsc);
    });
    return stored[key];
  }

  void updateAvailableFiltersIfStoredPresent(String key, List<FilterStore> availableFilterList) {
    if (storedFilters.containsKey(key)) {
      availableFilterList.clear();
      availableFilterList.addAll(storedFilters[key]);
    }
  }

  void storeSorting(String key, {int sortColumnIndex, String sortColumnName, bool sortAsc}) {
    stored[key] = SortSettings(sortColumnIndex, sortColumnName, sortAsc);
  }

  void storeFilters(String key, List<FilterStore> availableFilterList) {
    if (availableFilterList.length > 0) {
      storedFilters[key] = [...availableFilterList];
    } else if (storedFilters.containsKey(key)) {
      /// remove settings if user removed all filters, so next time Filters
      /// configured in Page Config can apply.
      storedFilters.remove(key);
    }
  }
}
