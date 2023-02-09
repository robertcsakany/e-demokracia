//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.user.resident_district.view;

class UserResidentDistrictViewPageStore extends _UserResidentDistrictViewPageStore with _$UserResidentDistrictViewPageStore {}

abstract class _UserResidentDistrictViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _UserResidentDistrictViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, UserResidentDistrictViewConfig pageConfig) {}

  @observable
  DistrictStore targetStore;

  @action
  Future<void> refreshDistrict(DistrictStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaDistrictGetByIdentifier(
      targetStore,
      mask: '{name}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class UserResidentDistrictViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final DistrictStore targetStore;
  final UserStore ownerStore;

  const UserResidentDistrictViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserResidentDistrictViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _UserResidentDistrictViewPageState extends State<UserResidentDistrictViewPage> {
  DistrictStore targetStore;
  final UserStore ownerStore;

  final tableService = locator<TableService>();
  final UserResidentDistrictViewPageStore pageStore = UserResidentDistrictViewPageStore();
  final UserResidentDistrictViewConfig pageConfig = UserResidentDistrictViewConfig();
  UserResidentDistrictViewPageActions pageActions;

  _UserResidentDistrictViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = UserResidentDistrictViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshDistrict(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, UserResidentDistrictViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getUserResidentDistrictViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getUserResidentDistrictViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getUserResidentDistrictViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getUserResidentDistrictViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
