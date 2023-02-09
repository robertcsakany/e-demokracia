//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.user.activity_districts.view;

class UserActivityDistrictsViewPageStore extends _UserActivityDistrictsViewPageStore with _$UserActivityDistrictsViewPageStore {}

abstract class _UserActivityDistrictsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _UserActivityDistrictsViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, UserActivityDistrictsViewConfig pageConfig) {}

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

class UserActivityDistrictsViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final DistrictStore targetStore;
  final UserStore ownerStore;

  const UserActivityDistrictsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserActivityDistrictsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _UserActivityDistrictsViewPageState extends State<UserActivityDistrictsViewPage> {
  DistrictStore targetStore;
  final UserStore ownerStore;

  final tableService = locator<TableService>();
  final UserActivityDistrictsViewPageStore pageStore = UserActivityDistrictsViewPageStore();
  final UserActivityDistrictsViewConfig pageConfig = UserActivityDistrictsViewConfig();
  UserActivityDistrictsViewPageActions pageActions;

  _UserActivityDistrictsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = UserActivityDistrictsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshDistrict(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, UserActivityDistrictsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getUserActivityDistrictsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getUserActivityDistrictsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getUserActivityDistrictsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getUserActivityDistrictsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
