//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.issue_category.subcategories.view;

class IssueCategorySubcategoriesViewPageStore extends _IssueCategorySubcategoriesViewPageStore with _$IssueCategorySubcategoriesViewPageStore {}

abstract class _IssueCategorySubcategoriesViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _IssueCategorySubcategoriesViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, IssueCategorySubcategoriesViewConfig pageConfig) {}

  @observable
  IssueCategoryStore targetStore;

  @action
  Future<void> refreshIssueCategory(IssueCategoryStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaIssueCategoryGetByIdentifier(
      targetStore,
      mask: '{title}',
    ));

    targetStore.owner = await _actorRepository.edemokraciaIssueCategoryOwnerGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // Subcategories embedded table order

  @observable
  int subcategoriesSortColumnIndex;

  @observable
  String subcategoriesSortColumnName;

  @observable
  bool subcategoriesSortAsc;

  @observable
  Comparator subcategoriesSortCompare;

  @action
  void subcategoriesSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, IssueCategoryStore store) {
    if (subcategoriesSortColumnIndex != sortColumnIndex) {
      subcategoriesSortAsc = true;
    } else {
      subcategoriesSortAsc = !subcategoriesSortAsc;
    }
    subcategoriesSortColumnIndex = sortColumnIndex;
    subcategoriesSortColumnName = sortColumnName;
    subcategoriesSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaIssueCategorySubcategoriesViewSubcategories',
      sortColumnIndex: subcategoriesSortColumnIndex,
      sortColumnName: subcategoriesSortColumnName,
      sortAsc: subcategoriesSortAsc,
    );

    store.subcategories.sort(sortCompare);
  }

  // Subcategories aggregation actions

  @observable
  ObservableFuture issueCategorySubcategoriesStoreFuture;

  //OPERATIONS

}

class IssueCategorySubcategoriesViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final IssueCategoryStore targetStore;
  final IssueCategoryStore ownerStore;

  const IssueCategorySubcategoriesViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IssueCategorySubcategoriesViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _IssueCategorySubcategoriesViewPageState extends State<IssueCategorySubcategoriesViewPage> {
  IssueCategoryStore targetStore;
  final IssueCategoryStore ownerStore;

  final tableService = locator<TableService>();
  final IssueCategorySubcategoriesViewPageStore pageStore = IssueCategorySubcategoriesViewPageStore();
  final IssueCategorySubcategoriesViewConfig pageConfig = IssueCategorySubcategoriesViewConfig();
  IssueCategorySubcategoriesViewPageActions pageActions;

  _IssueCategorySubcategoriesViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = IssueCategorySubcategoriesViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssueCategory(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, IssueCategorySubcategoriesViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getIssueCategorySubcategoriesViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getIssueCategorySubcategoriesViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getIssueCategorySubcategoriesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getIssueCategorySubcategoriesViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
