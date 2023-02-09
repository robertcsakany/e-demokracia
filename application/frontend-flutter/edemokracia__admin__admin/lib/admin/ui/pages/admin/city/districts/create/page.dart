//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.city.districts.create;

class AdminCityDistrictsCreatePageStore extends _AdminCityDistrictsCreatePageStore with _$AdminCityDistrictsCreatePageStore {}

abstract class _AdminCityDistrictsCreatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveCreateActionLoadingState;

  _AdminCityDistrictsCreatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveCreateActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminDistrictStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'city': ValidationError(),
    'county': ValidationError(),
    'name': ValidationError(),
    'representation': ValidationError(),
  };

  @action
  Future<AdminDistrictStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminDistrictDefault();
  }

  @action
  Future<AdminDistrictStore> validate(AdminCityStore ownerStore, AdminDistrictStore targetStore) async {
    return await _actorRepository.edemokraciaAdminCityDistrictsValidateForCreate(ownerStore, targetStore);
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

class AdminCityDistrictsCreatePage extends StatefulWidget {
  static const String title = 'Create district';

  final AdminCityStore ownerStore;

  const AdminCityDistrictsCreatePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  _AdminCityDistrictsCreatePageState createState() => _AdminCityDistrictsCreatePageState(ownerStore: ownerStore);
}

class _AdminCityDistrictsCreatePageState extends State<AdminCityDistrictsCreatePage> {
  final AdminDistrictStore targetStore = AdminDistrictStore();
  final AdminCityStore ownerStore;

  final tableService = locator<TableService>();
  final AdminCityDistrictsCreatePageStore pageStore = AdminCityDistrictsCreatePageStore();
  final AdminCityDistrictsCreateConfig pageConfig = AdminCityDistrictsCreateConfig();
  AdminCityDistrictsCreatePageActions pageActions;

  Future<AdminDistrictStore> futureTemplate;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
  }

  _AdminCityDistrictsCreatePageState({@required this.ownerStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    pageActions = AdminCityDistrictsCreatePageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminCityDistrictsCreatePage.title));
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
        return getAdminCityDistrictsCreateMobilePage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCityDistrictsCreateTabletPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCityDistrictsCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminCityDistrictsCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminDistrictStore>(
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
