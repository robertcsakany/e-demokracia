//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.pro.votes.create;

class AdminProVotesCreatePageStore extends _AdminProVotesCreatePageStore with _$AdminProVotesCreatePageStore {}

abstract class _AdminProVotesCreatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveCreateActionLoadingState;

  _AdminProVotesCreatePageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveCreateActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminSimpleVoteStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'created': ValidationError(),
    'type': ValidationError(),
    'user': ValidationError(),
  };

  @action
  Future<AdminSimpleVoteStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminSimpleVoteDefault();
  }

  @action
  Future<AdminSimpleVoteStore> validate(AdminProStore ownerStore, AdminSimpleVoteStore targetStore) async {
    return await _actorRepository.edemokraciaAdminProVotesValidateForCreate(ownerStore, targetStore);
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

class AdminProVotesCreatePage extends StatefulWidget {
  static const String title = 'Create Vote';

  final AdminProStore ownerStore;

  const AdminProVotesCreatePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  _AdminProVotesCreatePageState createState() => _AdminProVotesCreatePageState(ownerStore: ownerStore);
}

class _AdminProVotesCreatePageState extends State<AdminProVotesCreatePage> {
  final AdminSimpleVoteStore targetStore = AdminSimpleVoteStore();
  final AdminProStore ownerStore;

  final tableService = locator<TableService>();
  final AdminProVotesCreatePageStore pageStore = AdminProVotesCreatePageStore();
  final AdminProVotesCreateConfig pageConfig = AdminProVotesCreateConfig();
  AdminProVotesCreatePageActions pageActions;

  Future<AdminSimpleVoteStore> futureTemplate;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
  }

  _AdminProVotesCreatePageState({@required this.ownerStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    pageActions = AdminProVotesCreatePageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminProVotesCreatePage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'created': GlobalKey(),
    'type': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminProVotesCreateMobilePage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminProVotesCreateTabletPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminProVotesCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminProVotesCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminSimpleVoteStore>(
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
