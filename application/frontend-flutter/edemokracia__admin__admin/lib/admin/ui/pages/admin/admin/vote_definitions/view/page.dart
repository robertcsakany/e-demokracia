//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.admin.vote_definitions.view;

class AdminAdminVoteDefinitionsViewPageStore extends _AdminAdminVoteDefinitionsViewPageStore with _$AdminAdminVoteDefinitionsViewPageStore {}

abstract class _AdminAdminVoteDefinitionsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState voteYesNoButtonLoadingState;
  LoadingState voteYesNoAbstainButtonLoadingState;
  LoadingState voteSelectAnswerButtonLoadingState;
  LoadingState voteRatingButtonLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState deleteActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminAdminVoteDefinitionsViewPageStore() {
    voteYesNoButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteYesNoAbstainButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteSelectAnswerButtonLoadingState = LoadingState(pageState.setDisabledByLoading);
    voteRatingButtonLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    deleteActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminAdminVoteDefinitionsViewConfig pageConfig) {}

  @observable
  AdminVoteDefinitionStore targetStore;

  @action
  Future<void> refreshVoteDefinition(AdminVoteDefinitionStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminVoteDefinitionGetByIdentifier(
      targetStore,
      mask: '{title,closeAt,status,created,description,isNotYesNoType,isNotYesNoAbstainType,isNotSelectAnswerType,isNotRatingType}',
    ));

    targetStore.debate = await _actorRepository.edemokraciaAdminVoteDefinitionDebateGet(targetStore, mask: '{}');
  }

  @action
  Future<void> updateVoteDefinition(AdminVoteDefinitionStore newTargetStore, AdminVoteDefinitionStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionUpdate(newTargetStore);
    await refreshVoteDefinition(oldTargetStore);
  }

  @action
  Future<void> deleteVoteDefinition(AdminVoteDefinitionStore targetStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionDelete(targetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS
  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(YesNoVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteYesNo(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(YesNoAbstainVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteYesNoAbstain(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(SelectAnswerVoteSelectionStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteSelectAnswer(targetStore, ownerStore);
  }

  @action
  Future<void> edemokraciaAdminVoteDefinitionVoteRating(RatingVoteInputStore targetStore, AdminVoteDefinitionStore ownerStore) async {
    await _actorRepository.edemokraciaAdminVoteDefinitionVoteRating(targetStore, ownerStore);
  }

  int voteSelectAnswerQueryLimit = (2.0 - 2).round();

  // VoteSelectAnswer embedded table paging

  // Input range actions

  @observable
  ObservableFuture voteDefinitionVoteSelectAnswerStoreRangeFuture;

  @observable
  int voteSelectAnswerSortColumnIndexRange;

  @observable
  String voteSelectAnswerSortColumnNameRange;

  @observable
  bool voteSelectAnswerSortAscRange;

  @observable
  List<SelectAnswerVoteSelectionStore> voteSelectAnswerStoreRangeList = ObservableList<SelectAnswerVoteSelectionStore>();

  @computed
  int get voteSelectAnswerTableForRangeItemsRangeStart => nextPageCounterForVoteSelectAnswerRange * voteSelectAnswerQueryLimit + 1;

  @computed
  int get voteSelectAnswerTableForRangeItemsRangeEnd => voteSelectAnswerTableForRangeItemsRangeStart - 1 + voteSelectAnswerStoreRangeList.length;

  @observable
  bool nextButtonEnableForVoteSelectAnswerRange = false;

  @observable
  int nextPageCounterForVoteSelectAnswerRange = 0;

  @computed
  bool get previousButtonEnableForVoteSelectAnswerRange => nextPageCounterForVoteSelectAnswerRange > 0;

  @action
  void voteSelectAnswerSetSortRange(AdminVoteDefinitionStore ownerStore, BuildContext context, String sortColumnName, int sortColumnIndex, bool asc,
      {List<FilterStore> filterStoreList, String mask}) {
    if (voteSelectAnswerSortColumnIndexRange != sortColumnIndex) {
      voteSelectAnswerSortAscRange = true;
    } else {
      voteSelectAnswerSortAscRange = !voteSelectAnswerSortAscRange;
    }

    voteSelectAnswerSortColumnIndexRange = sortColumnIndex;
    voteSelectAnswerSortColumnNameRange = sortColumnName;

    tableService.storeSorting(
      'EdemokraciaAdminAdminVoteDefinitionsViewVoteSelectAnswerRange',
      sortColumnIndex: voteSelectAnswerSortColumnIndexRange,
      sortColumnName: voteSelectAnswerSortColumnNameRange,
      sortAsc: voteSelectAnswerSortAscRange,
    );

    getRangeForVoteSelectAnswer(ownerStore, filterStoreList: filterStoreList, mask: mask);
  }

  @action
  Future<List<SelectAnswerVoteSelectionStore>> getRangeForVoteSelectAnswer(AdminVoteDefinitionStore ownerStore,
      {List<FilterStore> filterStoreList, int queryLimit, String mask, bool isNext}) async {
    /// Get +1 element to determine if we open initial page, or navigate forward
    int effectiveQueryLimit = (queryLimit ?? voteSelectAnswerQueryLimit) + (isNext == null || isNext ? 1 : 0);

    if (isNext == null) {
      nextPageCounterForVoteSelectAnswerRange = 0;
    }

    voteDefinitionVoteSelectAnswerStoreRangeFuture = ObservableFuture(_actorRepository.edemokraciaAdminVoteDefinitionRangeOfVoteSelectAnswer(
      ownerStore,
      sortColumn: voteSelectAnswerSortColumnNameRange,
      sortAscending: voteSelectAnswerSortAscRange,
      queryLimit: effectiveQueryLimit,
      filterStoreList: filterStoreList,
      mask: mask,
      lastItem: isNext != null ? (isNext ? voteSelectAnswerStoreRangeList.last : voteSelectAnswerStoreRangeList.first) : null,
      reverse: isNext != null ? !isNext : null,
    ));

    List<SelectAnswerVoteSelectionStore> nextItemsList = await voteDefinitionVoteSelectAnswerStoreRangeFuture;
    nextButtonEnableForVoteSelectAnswerRange = nextItemsList.length == effectiveQueryLimit;

    if (nextButtonEnableForVoteSelectAnswerRange && (isNext == null || isNext)) {
      nextItemsList.removeLast();
    }

    if (isNext != null) {
      if (isNext) {
        nextPageCounterForVoteSelectAnswerRange++;
      } else {
        nextPageCounterForVoteSelectAnswerRange--;
      }
    }

    voteSelectAnswerStoreRangeList.clear();
    voteSelectAnswerStoreRangeList.addAll(nextItemsList);
    return voteSelectAnswerStoreRangeList;
  }
}

class AdminAdminVoteDefinitionsViewPage extends StatefulWidget {
  static const String title = 'TransferObject View';

  final String idParam;

  const AdminAdminVoteDefinitionsViewPage({Key key, @PathParam('id') this.idParam}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminAdminVoteDefinitionsViewPageState(idParam: idParam);
}

class _AdminAdminVoteDefinitionsViewPageState extends State<AdminAdminVoteDefinitionsViewPage> {
  final String idParam;
  AdminVoteDefinitionStore targetStore;

  final tableService = locator<TableService>();
  final AdminAdminVoteDefinitionsViewPageStore pageStore = AdminAdminVoteDefinitionsViewPageStore();
  final AdminAdminVoteDefinitionsViewConfig pageConfig = AdminAdminVoteDefinitionsViewConfig();
  AdminAdminVoteDefinitionsViewPageActions pageActions;

  _AdminAdminVoteDefinitionsViewPageState({this.idParam}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    targetStore = AdminVoteDefinitionStore();
    targetStore.internal__signedIdentifier = idParam;
    pageStore.targetStore = targetStore;
    pageActions = AdminAdminVoteDefinitionsViewPageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshVoteDefinition(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminAdminVoteDefinitionsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminAdminVoteDefinitionsViewMobilePage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminAdminVoteDefinitionsViewTabletPage(context, targetStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminAdminVoteDefinitionsViewDesktopPage(context, targetStore, pageStore, pageConfig);
      }
      return getAdminAdminVoteDefinitionsViewDesktopPage(context, targetStore, pageStore, pageConfig);
    });

    return layout;
  }
}
