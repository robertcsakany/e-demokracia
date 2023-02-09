//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.comment.votes.create;

class AdminCommentVotesCreatePageStore extends _AdminCommentVotesCreatePageStore with _$AdminCommentVotesCreatePageStore {}

abstract class _AdminCommentVotesCreatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState saveCreateActionLoadingState;

  _AdminCommentVotesCreatePageStore() {
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
  Future<AdminSimpleVoteStore> validate(AdminCommentStore ownerStore, AdminSimpleVoteStore targetStore) async {
    return await _actorRepository.edemokraciaAdminCommentVotesValidateForCreate(ownerStore, targetStore);
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

class AdminCommentVotesCreatePage extends StatefulWidget {
  static const String title = 'Create Vote';

  final AdminCommentStore ownerStore;

  const AdminCommentVotesCreatePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  _AdminCommentVotesCreatePageState createState() => _AdminCommentVotesCreatePageState(ownerStore: ownerStore);
}

class _AdminCommentVotesCreatePageState extends State<AdminCommentVotesCreatePage> {
  final AdminSimpleVoteStore targetStore = AdminSimpleVoteStore();
  final AdminCommentStore ownerStore;

  final tableService = locator<TableService>();
  final AdminCommentVotesCreatePageStore pageStore = AdminCommentVotesCreatePageStore();
  final AdminCommentVotesCreateConfig pageConfig = AdminCommentVotesCreateConfig();
  AdminCommentVotesCreatePageActions pageActions;

  Future<AdminSimpleVoteStore> futureTemplate;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
  }

  _AdminCommentVotesCreatePageState({@required this.ownerStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    pageActions = AdminCommentVotesCreatePageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminCommentVotesCreatePage.title));
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
        return getAdminCommentVotesCreateMobilePage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminCommentVotesCreateTabletPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminCommentVotesCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminCommentVotesCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
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
