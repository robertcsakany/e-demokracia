//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.vote_definitions.update;

class AdminAdminVoteDefinitionsUpdatePageStore extends _AdminAdminVoteDefinitionsUpdatePageStore with _$AdminAdminVoteDefinitionsUpdatePageStore {}

abstract class _AdminAdminVoteDefinitionsUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteYesNoButtonLoadingState;
  LoadingState voteYesNoAbstainButtonLoadingState;
  LoadingState voteSelectAnswerButtonLoadingState;
  LoadingState voteRatingButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminAdminVoteDefinitionsUpdatePageStore() {
    voteYesNoButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteYesNoAbstainButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteSelectAnswerButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteRatingButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminVoteDefinitionsUpdateConfig pageConfig) {}

  @observable
  AdminVoteDefinitionStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'closeAt': ValidationError(),
    'created': ValidationError(),
    'description': ValidationError(),
    'isNotRatingType': ValidationError(),
    'isNotSelectAnswerType': ValidationError(),
    'isNotYesNoAbstainType': ValidationError(),
    'isNotYesNoType': ValidationError(),
    'isRatingType': ValidationError(),
    'isSelectAnswerType': ValidationError(),
    'isYesNoAbstainType': ValidationError(),
    'isYesNoType': ValidationError(),
    'status': ValidationError(),
    'title': ValidationError(),
    'debate': ValidationError(),
  };

  @action
  Future<void> refreshVoteDefinition(AdminVoteDefinitionStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminVoteDefinitionGetByIdentifier(targetStore));
  }

  @action
  Future<AdminVoteDefinitionStore> validate(AdminVoteDefinitionStore targetStore) async {
    return await _actorRepository.edemokraciaAdminVoteDefinitionValidateForUpdate(targetStore);
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

class AdminAdminVoteDefinitionsUpdatePage extends StatefulWidget {
  static const String title = 'TransferObject View';

  final AdminVoteDefinitionStore targetStore;

  const AdminAdminVoteDefinitionsUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminAdminVoteDefinitionsUpdatePageState(targetStore: targetStore);
}

class _AdminAdminVoteDefinitionsUpdatePageState extends State<AdminAdminVoteDefinitionsUpdatePage> {
  final AdminVoteDefinitionStore targetStore;

  final tableService = locator<TableService>();
  final AdminAdminVoteDefinitionsUpdatePageStore pageStore = AdminAdminVoteDefinitionsUpdatePageStore();
  final AdminAdminVoteDefinitionsUpdateConfig pageConfig = AdminAdminVoteDefinitionsUpdateConfig();
  AdminAdminVoteDefinitionsUpdatePageActions pageActions;

  _AdminAdminVoteDefinitionsUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminAdminVoteDefinitionsUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshVoteDefinition(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminVoteDefinitionsUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'title': GlobalKey(),
    'closeAt': GlobalKey(),
    'status': GlobalKey(),
    'created': GlobalKey(),
    'description': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminVoteDefinitionsUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminVoteDefinitionsUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminVoteDefinitionsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminAdminVoteDefinitionsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
