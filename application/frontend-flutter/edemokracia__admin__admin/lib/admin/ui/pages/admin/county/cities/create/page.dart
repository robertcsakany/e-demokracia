//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.county.cities.create;

class AdminCountyCitiesCreatePageStore extends _AdminCountyCitiesCreatePageStore with _$AdminCountyCitiesCreatePageStore {}

abstract class _AdminCountyCitiesCreatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveCreateActionLoadingState;

  _AdminCountyCitiesCreatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveCreateActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminCityStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'county': ValidationError(),
    'name': ValidationError(),
    'representation': ValidationError(),
    'districts': ValidationError(),
  };

  @action
  Future<AdminCityStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminCityDefault();
  }

  @action
  Future<AdminCityStore> validate(AdminCountyStore ownerStore, AdminCityStore targetStore) async {
    return await _actorRepository.edemokraciaAdminCountyCitiesValidateForCreate(ownerStore, targetStore);
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

  // Districts embedded table order

  @observable
  int districtsSortColumnIndex;

  @observable
  String districtsSortColumnName;

  @observable
  bool districtsSortAsc;

  @observable
  Comparator districtsSortCompare;

  @action
  void districtsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, AdminCityStore store) {
    if (districtsSortColumnIndex != sortColumnIndex) {
      districtsSortAsc = true;
    } else {
      districtsSortAsc = !districtsSortAsc;
    }
    districtsSortColumnIndex = sortColumnIndex;
    districtsSortColumnName = sortColumnName;
    districtsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaAdminCountyCitiesCreateDistricts',
      sortColumnIndex: districtsSortColumnIndex,
      sortColumnName: districtsSortColumnName,
      sortAsc: districtsSortAsc,
    );

    store.districts.sort(sortCompare);
  }

  // Districts aggregation actions

  @observable
  ObservableFuture cityDistrictsStoreFuture;
}

class AdminCountyCitiesCreatePage extends StatefulWidget {
  static const String title = 'Create city';

  final AdminCountyStore ownerStore;

  const AdminCountyCitiesCreatePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  _AdminCountyCitiesCreatePageState createState() => _AdminCountyCitiesCreatePageState(ownerStore: ownerStore);
}

class _AdminCountyCitiesCreatePageState extends State<AdminCountyCitiesCreatePage> {
  final AdminCityStore targetStore = AdminCityStore();
  final AdminCountyStore ownerStore;

  final tableService = locator<TableService>();
  final AdminCountyCitiesCreatePageStore pageStore = AdminCountyCitiesCreatePageStore();
  final AdminCountyCitiesCreateConfig pageConfig = AdminCountyCitiesCreateConfig();
  AdminCountyCitiesCreatePageActions pageActions;

  Future<AdminCityStore> futureTemplate;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
  }

  _AdminCountyCitiesCreatePageState({@required this.ownerStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    pageActions = AdminCountyCitiesCreatePageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminCountyCitiesCreatePage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'name': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminCountyCitiesCreateMobilePage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCountyCitiesCreateTabletPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCountyCitiesCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminCountyCitiesCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminCityStore>(
      future: futureTemplate,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // have to use postFrameCallback here, because mobx trying change state during build
          SchedulerBinding.instance.addPostFrameCallback((_) {
            locator<MessageHandler>().handleApiException(context, snapshot.error, 'Page loading');
          });
          return Text('');
        } else if (snapshot.hasData) {
          targetStore.initWithDefaults(snapshot.data);
          return layout;
        }
        return Column(children: [JudoLoadingProgress()]);
      },
    );
  }
}
