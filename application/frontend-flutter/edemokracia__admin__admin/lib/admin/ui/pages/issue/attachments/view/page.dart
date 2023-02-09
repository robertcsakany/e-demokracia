//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.issue.attachments.view;

class IssueAttachmentsViewPageStore extends _IssueAttachmentsViewPageStore with _$IssueAttachmentsViewPageStore {}

abstract class _IssueAttachmentsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;

  _IssueAttachmentsViewPageStore() {
    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, IssueAttachmentsViewConfig pageConfig) {}

  @observable
  IssueAttachmentStore targetStore;

  @action
  Future<void> refreshIssueAttachment(IssueAttachmentStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaIssueAttachmentGetByIdentifier(
      targetStore,
      mask: '{link}',
    ));
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class IssueAttachmentsViewPage extends StatefulWidget {
  static const String title = 'Entity View';

  final IssueAttachmentStore targetStore;
  final IssueStore ownerStore;

  const IssueAttachmentsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IssueAttachmentsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _IssueAttachmentsViewPageState extends State<IssueAttachmentsViewPage> {
  IssueAttachmentStore targetStore;
  final IssueStore ownerStore;

  final tableService = locator<TableService>();
  final IssueAttachmentsViewPageStore pageStore = IssueAttachmentsViewPageStore();
  final IssueAttachmentsViewConfig pageConfig = IssueAttachmentsViewConfig();
  IssueAttachmentsViewPageActions pageActions;

  _IssueAttachmentsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = IssueAttachmentsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssueAttachment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, IssueAttachmentsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getIssueAttachmentsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getIssueAttachmentsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getIssueAttachmentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getIssueAttachmentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
