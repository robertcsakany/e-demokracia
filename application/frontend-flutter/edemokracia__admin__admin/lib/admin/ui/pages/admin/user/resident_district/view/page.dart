//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.user.resident_district.view;

class AdminUserResidentDistrictViewPageStore extends _AdminUserResidentDistrictViewPageStore with _$AdminUserResidentDistrictViewPageStore {}

abstract class _AdminUserResidentDistrictViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminUserResidentDistrictViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminUserResidentDistrictViewConfig pageConfig) {}

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
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminUserResidentDistrictViewPage extends StatefulWidget {
  static const String title = 'District';

  final AdminDistrictStore targetStore;
  final AdminUserStore ownerStore;

  const AdminUserResidentDistrictViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminUserResidentDistrictViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminUserResidentDistrictViewPageState extends State<AdminUserResidentDistrictViewPage> {
  AdminDistrictStore targetStore;
  final AdminUserStore ownerStore;

  final tableService = locator<TableService>();
  final AdminUserResidentDistrictViewPageStore pageStore = AdminUserResidentDistrictViewPageStore();
  final AdminUserResidentDistrictViewConfig pageConfig = AdminUserResidentDistrictViewConfig();
  AdminUserResidentDistrictViewPageActions pageActions;

  _AdminUserResidentDistrictViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminUserResidentDistrictViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
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
        return getAdminUserResidentDistrictViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminUserResidentDistrictViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminUserResidentDistrictViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminUserResidentDistrictViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
