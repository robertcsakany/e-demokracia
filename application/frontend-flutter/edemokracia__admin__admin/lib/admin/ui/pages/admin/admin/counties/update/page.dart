//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.counties.update;

class AdminAdminCountiesUpdatePageStore extends _AdminAdminCountiesUpdatePageStore with _$AdminAdminCountiesUpdatePageStore {}

abstract class _AdminAdminCountiesUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminAdminCountiesUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminCountiesUpdateConfig pageConfig) {
    if (targetStore.cities != null) {
      var dataInfo = EdemokraciaAdminAdminCountiesEditCitiesMobileTable(context, this, pageConfig, disabled: true);
      targetStore.cities.sort(TableUtility.getSortComparator(citiesSortColumnIndex, citiesSortAsc, dataInfo));
    }
  }

  @observable
  AdminCountyStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'name': ValidationError(),
    'representation': ValidationError(),
    'cities': ValidationError(),
  };

  @action
  Future<void> refreshCounty(AdminCountyStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminCountyGetByIdentifier(targetStore));
  }

  @action
  Future<AdminCountyStore> validate(AdminCountyStore targetStore) async {
    return await _actorRepository.edemokraciaAdminCountyValidateForUpdate(targetStore);
  }

  @action
  Future<String> uploadFile(String attributePath, PlatformFile file) async {
    return await _actorRepository.uploadFile(attributePath, file);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  int citiesQueryLimit = (10.0 - 2).round();

  // Cities embedded table paging

  @computed
  int get citiesTableItemsRangeStart => citiesTablePageNumber * citiesQueryLimit + 1;

  @computed
  int get citiesTableItemsRangeEnd => citiesTableItemsRangeStart - 1 + citiesTablePagingList.length;

  @observable
  int citiesTablePageNumber = 0;

  @computed
  bool get citiesTablePreviousEnable => citiesTablePageNumber > 0;

  @computed
  bool get citiesTableNextEnable => (citiesTablePageNumber * citiesQueryLimit + citiesQueryLimit) < targetStore.cities.length;

  @action
  void citiesTableNextPage() {
    if (citiesTableNextEnable) {
      citiesTablePageNumber++;
    }
  }

  @action
  void citiesTablePreviousPage() {
    if (citiesTablePreviousEnable) {
      citiesTablePageNumber--;
    }
  }

  @computed
  List<AdminCityStore> get citiesTablePagingList {
    int subListStart = citiesTablePageNumber * citiesQueryLimit;
    int subListEnd;
    if (citiesTableNextEnable) {
      subListEnd = subListStart + citiesQueryLimit;
    } else {
      subListEnd = targetStore.cities.length;
    }
    return targetStore.cities.sublist(subListStart, subListEnd);
  }

  // Cities range actions

  // Cities embedded table order

  @observable
  int citiesSortColumnIndex;

  @observable
  String citiesSortColumnName;

  @observable
  bool citiesSortAsc;

  @observable
  Comparator citiesSortCompare;

  @action
  void citiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminCountyStore store) {
    if (citiesSortColumnIndex != sortColumnIndex) {
      citiesSortAsc = true;
    } else {
      citiesSortAsc = !citiesSortAsc;
    }
    citiesSortColumnIndex = sortColumnIndex;
    citiesSortColumnName = sortColumnName;
    citiesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminAdminCountiesEditCities',
      sortColumnIndex: citiesSortColumnIndex,
      sortColumnName: citiesSortColumnName,
      sortAsc: citiesSortAsc,
    );

    store.cities.sort(sortCompare);
  }

  // Cities aggregation actions

  @observable
  ObservableFuture countyCitiesStoreFuture;
}

class AdminAdminCountiesUpdatePage extends StatefulWidget {
  static const String title = 'County';

  final AdminCountyStore targetStore;

  const AdminAdminCountiesUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminAdminCountiesUpdatePageState(targetStore: targetStore);
}

class _AdminAdminCountiesUpdatePageState extends State<AdminAdminCountiesUpdatePage> {
  final AdminCountyStore targetStore;

  final tableService = locator<TableService>();
  final AdminAdminCountiesUpdatePageStore pageStore = AdminAdminCountiesUpdatePageStore();
  final AdminAdminCountiesUpdateConfig pageConfig = AdminAdminCountiesUpdateConfig();
  AdminAdminCountiesUpdatePageActions pageActions;

  _AdminAdminCountiesUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    /// Aggregate table sorting variables init with default values
    SortSettings citiesSortSettings = pageStore.tableService.loadSortingUsingFallback(
      'EdemokraciaAdminAdminCountiesEditCities',
      sortColumnIndex: pageConfig.citiesTableConfig.sortColumnIndex,
      sortColumnName: pageConfig.citiesTableConfig.sortColumnName,
      sortAsc: pageConfig.citiesTableConfig.sortAsc,
    );

    pageStore.citiesSortColumnIndex = citiesSortSettings.sortColumnIndex; // TODO: JNG-2716
    pageStore.citiesSortColumnName = citiesSortSettings.sortColumnName; // TODO: JNG-2716
    pageStore.citiesSortAsc = citiesSortSettings.sortAsc; // TODO: JNG-2716

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminAdminCountiesUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshCounty(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : (targetStore?.representation != null ? targetStore?.representation.toString() : ''));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'name': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminCountiesUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminCountiesUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminCountiesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminAdminCountiesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
