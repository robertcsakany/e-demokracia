//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.debate.issue.view;

class DebateIssueViewPageStore extends _DebateIssueViewPageStore with _$DebateIssueViewPageStore {}

abstract class _DebateIssueViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _DebateIssueViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, DebateIssueViewConfig pageConfig) {}

  @observable
  IssueStore targetStore;

  @action
  Future<void> refreshIssue(IssueStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaIssueGetByIdentifier(
      targetStore,
      mask: '{title}',
    ));

    targetStore.createdBy = await _actorRepository.edemokraciaIssueCreatedByGet(targetStore, mask: '{}');
    targetStore.owner = await _actorRepository.edemokraciaIssueOwnerGet(targetStore, mask: '{}');
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  // Attachments embedded table order

  @observable
  int attachmentsSortColumnIndex;

  @observable
  String attachmentsSortColumnName;

  @observable
  bool attachmentsSortAsc;

  @observable
  Comparator attachmentsSortCompare;

  @action
  void attachmentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, IssueStore store) {
    if (attachmentsSortColumnIndex != sortColumnIndex) {
      attachmentsSortAsc = true;
    } else {
      attachmentsSortAsc = !attachmentsSortAsc;
    }
    attachmentsSortColumnIndex = sortColumnIndex;
    attachmentsSortColumnName = sortColumnName;
    attachmentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaDebateIssueViewAttachments',
      sortColumnIndex: attachmentsSortColumnIndex,
      sortColumnName: attachmentsSortColumnName,
      sortAsc: attachmentsSortAsc,
    );

    store.attachments.sort(sortCompare);
  }

  // Attachments aggregation actions

  @observable
  ObservableFuture issueAttachmentsStoreFuture;

  // Comments embedded table order

  @observable
  int commentsSortColumnIndex;

  @observable
  String commentsSortColumnName;

  @observable
  bool commentsSortAsc;

  @observable
  Comparator commentsSortCompare;

  @action
  void commentsSetSort(BuildContext context, String sortColumnName, int sortColumnIndex, bool asc, Comparator sortCompare, IssueStore store) {
    if (commentsSortColumnIndex != sortColumnIndex) {
      commentsSortAsc = true;
    } else {
      commentsSortAsc = !commentsSortAsc;
    }
    commentsSortColumnIndex = sortColumnIndex;
    commentsSortColumnName = sortColumnName;
    commentsSortCompare = sortCompare;

    tableService.storeSorting(
      'EdemokraciaDebateIssueViewComments',
      sortColumnIndex: commentsSortColumnIndex,
      sortColumnName: commentsSortColumnName,
      sortAsc: commentsSortAsc,
    );

    store.comments.sort(sortCompare);
  }

  // Comments aggregation actions

  @observable
  ObservableFuture issueCommentsStoreFuture;

  //OPERATIONS

}

class DebateIssueViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final IssueStore targetStore;
  final DebateStore ownerStore;

  const DebateIssueViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DebateIssueViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _DebateIssueViewPageState extends State<DebateIssueViewPage> {
  IssueStore targetStore;
  final DebateStore ownerStore;

  final tableService = locator<TableService>();
  final DebateIssueViewPageStore pageStore = DebateIssueViewPageStore();
  final DebateIssueViewConfig pageConfig = DebateIssueViewConfig();
  DebateIssueViewPageActions pageActions;

  _DebateIssueViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = DebateIssueViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssue(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, DebateIssueViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getDebateIssueViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getDebateIssueViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getDebateIssueViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getDebateIssueViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
