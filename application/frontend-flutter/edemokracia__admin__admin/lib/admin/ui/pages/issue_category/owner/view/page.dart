//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.issue_category.owner.view;

class IssueCategoryOwnerViewPageStore extends _IssueCategoryOwnerViewPageStore with _$IssueCategoryOwnerViewPageStore {}

abstract class _IssueCategoryOwnerViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _IssueCategoryOwnerViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, IssueCategoryOwnerViewConfig pageConfig) {}

  @observable
  UserStore targetStore;

  @action
  Future<void> refreshUser(UserStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaUserGetByIdentifier(
      targetStore,
      mask: '{userName}',
    ));

    targetStore.residentCity = await _actorRepository.edemokraciaUserResidentCityGet(targetStore, mask: '{}');
    targetStore.residentCounty = await _actorRepository.edemokraciaUserResidentCountyGet(targetStore, mask: '{}');
    targetStore.residentDistrict = await _actorRepository.edemokraciaUserResidentDistrictGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class IssueCategoryOwnerViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final UserStore targetStore;
  final IssueCategoryStore ownerStore;

  const IssueCategoryOwnerViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IssueCategoryOwnerViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _IssueCategoryOwnerViewPageState extends State<IssueCategoryOwnerViewPage> {
  UserStore targetStore;
  final IssueCategoryStore ownerStore;

  final tableService = locator<TableService>();
  final IssueCategoryOwnerViewPageStore pageStore = IssueCategoryOwnerViewPageStore();
  final IssueCategoryOwnerViewConfig pageConfig = IssueCategoryOwnerViewConfig();
  IssueCategoryOwnerViewPageActions pageActions;

  _IssueCategoryOwnerViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = IssueCategoryOwnerViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshUser(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, IssueCategoryOwnerViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getIssueCategoryOwnerViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getIssueCategoryOwnerViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getIssueCategoryOwnerViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getIssueCategoryOwnerViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
