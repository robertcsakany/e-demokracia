//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.user.activity_counties.view;

class UserActivityCountiesViewPageStore extends _UserActivityCountiesViewPageStore with _$UserActivityCountiesViewPageStore {}

abstract class _UserActivityCountiesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _UserActivityCountiesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, UserActivityCountiesViewConfig pageConfig) {}

  @observable
  CountyStore targetStore;

  @action
  Future<void> refreshCounty(CountyStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaCountyGetByIdentifier(
      targetStore,
      mask: '{name}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

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
  void citiesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, CountyStore store) {
    if (citiesSortColumnIndex != sortColumnIndex) {
      citiesSortAsc = true;
    } else {
      citiesSortAsc = !citiesSortAsc;
    }
    citiesSortColumnIndex = sortColumnIndex;
    citiesSortColumnName = sortColumnName;
    citiesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaUserActivityCountiesViewCities',
      sortColumnIndex: citiesSortColumnIndex,
      sortColumnName: citiesSortColumnName,
      sortAsc: citiesSortAsc,
    );

    store.cities.sort(sortCompare);
  }

  // Cities aggregation actions

  @observable
  ObservableFuture countyCitiesStoreFuture;

  //OPERATIONS

}

class UserActivityCountiesViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final CountyStore targetStore;
  final UserStore ownerStore;

  const UserActivityCountiesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserActivityCountiesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _UserActivityCountiesViewPageState extends State<UserActivityCountiesViewPage> {
  CountyStore targetStore;
  final UserStore ownerStore;

  final tableService = locator<TableService>();
  final UserActivityCountiesViewPageStore pageStore = UserActivityCountiesViewPageStore();
  final UserActivityCountiesViewConfig pageConfig = UserActivityCountiesViewConfig();
  UserActivityCountiesViewPageActions pageActions;

  _UserActivityCountiesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = UserActivityCountiesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshCounty(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, UserActivityCountiesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getUserActivityCountiesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getUserActivityCountiesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getUserActivityCountiesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getUserActivityCountiesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
