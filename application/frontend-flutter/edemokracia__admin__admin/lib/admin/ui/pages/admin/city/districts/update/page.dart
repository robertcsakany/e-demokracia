//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.city.districts.update;

class AdminCityDistrictsUpdatePageStore extends _AdminCityDistrictsUpdatePageStore with _$AdminCityDistrictsUpdatePageStore {}

abstract class _AdminCityDistrictsUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminCityDistrictsUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminCityDistrictsUpdateConfig pageConfig) {}

  @observable
  AdminDistrictStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'city': ValidationError(),
    'county': ValidationError(),
    'name': ValidationError(),
    'representation': ValidationError(),
  };

  @action
  Future<void> refreshDistrict(AdminDistrictStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminDistrictGetByIdentifier(targetStore));
  }

  @action
  Future<AdminDistrictStore> validate(AdminDistrictStore targetStore) async {
    return await _actorRepository.edemokraciaAdminDistrictValidateForUpdate(targetStore);
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
}

class AdminCityDistrictsUpdatePage extends StatefulWidget {
  static const String title = 'District';

  final AdminDistrictStore targetStore;

  const AdminCityDistrictsUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminCityDistrictsUpdatePageState(targetStore: targetStore);
}

class _AdminCityDistrictsUpdatePageState extends State<AdminCityDistrictsUpdatePage> {
  final AdminDistrictStore targetStore;

  final tableService = locator<TableService>();
  final AdminCityDistrictsUpdatePageStore pageStore = AdminCityDistrictsUpdatePageStore();
  final AdminCityDistrictsUpdateConfig pageConfig = AdminCityDistrictsUpdateConfig();
  AdminCityDistrictsUpdatePageActions pageActions;

  _AdminCityDistrictsUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminCityDistrictsUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshDistrict(targetStore).then((_) {
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
        return getAdminCityDistrictsUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCityDistrictsUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCityDistrictsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminCityDistrictsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
