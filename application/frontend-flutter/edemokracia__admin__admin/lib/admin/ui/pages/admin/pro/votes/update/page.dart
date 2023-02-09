//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.votes.update;

class AdminProVotesUpdatePageStore extends _AdminProVotesUpdatePageStore with _$AdminProVotesUpdatePageStore {}

abstract class _AdminProVotesUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminProVotesUpdatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminProVotesUpdateConfig pageConfig) {}

  @observable
  AdminSimpleVoteStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'created': ValidationError(),
    'type': ValidationError(),
    'user': ValidationError(),
  };

  @action
  Future<void> refreshSimpleVote(AdminSimpleVoteStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminSimpleVoteGetByIdentifier(targetStore));
  }

  @action
  Future<AdminSimpleVoteStore> validate(AdminSimpleVoteStore targetStore) async {
    return await _actorRepository.edemokraciaAdminSimpleVoteValidateForUpdate(targetStore);
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

  // User embedded table order

  // User aggregation actions

  @observable
  ObservableFuture simpleVoteUserStoreFuture;

  @action
  Future<void> setUser(AdminSimpleVoteStore ownerStore, AdminUserStore selectedStore) async {
    ownerStore.setUser(selectedStore);
  }

  @action
  Future<void> unsetUser(AdminSimpleVoteStore ownerStore) async {
    ownerStore.setUser(null);
  }
}

class AdminProVotesUpdatePage extends StatefulWidget {
  static const String title = 'Create / View Vote';

  final AdminSimpleVoteStore targetStore;

  const AdminProVotesUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminProVotesUpdatePageState(targetStore: targetStore);
}

class _AdminProVotesUpdatePageState extends State<AdminProVotesUpdatePage> {
  final AdminSimpleVoteStore targetStore;

  final tableService = locator<TableService>();
  final AdminProVotesUpdatePageStore pageStore = AdminProVotesUpdatePageStore();
  final AdminProVotesUpdateConfig pageConfig = AdminProVotesUpdateConfig();
  AdminProVotesUpdatePageActions pageActions;

  _AdminProVotesUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminProVotesUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshSimpleVote(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProVotesUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'created': GlobalKey(),
    'type': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminProVotesUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminProVotesUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminProVotesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminProVotesUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
