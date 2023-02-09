//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.attachments.view;

class AdminIssueAttachmentsViewPageStore extends _AdminIssueAttachmentsViewPageStore with _$AdminIssueAttachmentsViewPageStore {}

abstract class _AdminIssueAttachmentsViewPageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState fileBinaryTypeInputLoadingState;

  LoadingState backActionLoadingState;
  LoadingState refreshActionLoadingState;
  LoadingState deleteActionLoadingState;
  LoadingState editActionLoadingState;

  _AdminIssueAttachmentsViewPageStore() {
    fileBinaryTypeInputLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    refreshActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    deleteActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    editActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminIssueAttachmentsViewConfig pageConfig) {}

  @observable
  AdminIssueAttachmentStore targetStore;

  @action
  Future<void> refreshIssueAttachment(AdminIssueAttachmentStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueAttachmentGetByIdentifier(
      targetStore,
      mask: '{type,file,link}',
    ));
  }

  @action
  Future<void> updateIssueAttachment(AdminIssueAttachmentStore newTargetStore, AdminIssueAttachmentStore oldTargetStore) async {
    await _actorRepository.edemokraciaAdminIssueAttachmentUpdate(newTargetStore);
    await refreshIssueAttachment(oldTargetStore);
  }

  @action
  Future<void> deleteIssueAttachment(AdminIssueAttachmentStore targetStore) async {
    await _actorRepository.edemokraciaAdminIssueAttachmentDelete(targetStore);
  }

  @action
  Future<void> downloadFile(String downloadToken) async {
    final file = await _actorRepository.downloadFile(downloadToken);
    await Downloader().downloadFile(file);
  }

  //OPERATIONS

}

class AdminIssueAttachmentsViewPage extends StatefulWidget {
  static const String title = 'View / Edit Attachment';

  final AdminIssueAttachmentStore targetStore;
  final AdminIssueStore ownerStore;

  const AdminIssueAttachmentsViewPage({Key key, @required this.targetStore, @required this.ownerStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminIssueAttachmentsViewPageState(targetStore: targetStore, ownerStore: ownerStore);
}

class _AdminIssueAttachmentsViewPageState extends State<AdminIssueAttachmentsViewPage> {
  AdminIssueAttachmentStore targetStore;
  final AdminIssueStore ownerStore;

  final tableService = locator<TableService>();
  final AdminIssueAttachmentsViewPageStore pageStore = AdminIssueAttachmentsViewPageStore();
  final AdminIssueAttachmentsViewConfig pageConfig = AdminIssueAttachmentsViewConfig();
  AdminIssueAttachmentsViewPageActions pageActions;

  _AdminIssueAttachmentsViewPageState({@required this.targetStore, @required this.ownerStore}) {
    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageStore.targetStore = targetStore;
    pageActions = AdminIssueAttachmentsViewPageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    pageStore.refreshIssueAttachment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueAttachmentsViewPage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueAttachmentsViewMobilePage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueAttachmentsViewTabletPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueAttachmentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
      }
      return getAdminIssueAttachmentsViewDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig);
    });

    return layout;
  }
}
