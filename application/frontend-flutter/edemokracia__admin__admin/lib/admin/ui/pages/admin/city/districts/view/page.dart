//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.city.districts.view;

class AdminCityDistrictsViewPageStore extends _AdminCityDistrictsViewPageStore with _$AdminCityDistrictsViewPageStore {}

abstract class _AdminCityDistrictsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState deleteActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminCityDistrictsViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    deleteActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminCityDistrictsViewConfig pageConfig) {}

  @observable
  AdminDistrictStore targetStore;

  @action
  Future<void> refreshDistrict(AdminDistrictStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminDistrictGetByIdentifier(
      targetStore,
      mask: '{name,representation}',
    ));
  }

  @action
  Future<void> updateDistrict(AdminDistrictStore newTargetStore, AdminDistrictStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminDistrictUpdate(newTargetStore);
    await refreshDistrict(oldTargetStore);
  }

  @action
  Future<void> deleteDistrict(AdminDistrictStore targetStore) async {
    await _actorRepository.edemokraciaAdminDistrictDelete(targetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminCityDistrictsViewPage extends StatefulWidget {
  static const String title = 'District';

  final AdminDistrictStore targetStore;
  final AdminCityStore ownerStore;

  const AdminCityDistrictsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminCityDistrictsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminCityDistrictsViewPageState extends State<AdminCityDistrictsViewPage> {
  AdminDistrictStore targetStore;
  final AdminCityStore ownerStore;

  final tableService = locator<TableService>();
  final AdminCityDistrictsViewPageStore pageStore = AdminCityDistrictsViewPageStore();
  final AdminCityDistrictsViewConfig pageConfig = AdminCityDistrictsViewConfig();
  AdminCityDistrictsViewPageActions pageActions;

  _AdminCityDistrictsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminCityDistrictsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshDistrict(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : (targetStore?.representation != null ? targetStore?.representation.toString() : ''));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminCityDistrictsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCityDistrictsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCityDistrictsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminCityDistrictsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
