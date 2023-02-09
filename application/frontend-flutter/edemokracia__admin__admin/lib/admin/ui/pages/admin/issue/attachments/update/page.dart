//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.attachments.update;

class AdminIssueAttachmentsUpdatePageStore extends _AdminIssueAttachmentsUpdatePageStore with _$AdminIssueAttachmentsUpdatePageStore {}

abstract class _AdminIssueAttachmentsUpdatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState fileBinaryTypeInputLoadingState;

  LoadingState backActionLoadingState;
  LoadingState saveEditActionLoadingState;

  _AdminIssueAttachmentsUpdatePageStore() {
    fileBinaryTypeInputLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveEditActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @action
  void initSortAggregatedLists(BuildContext context, AdminIssueAttachmentsUpdateConfig pageConfig) {}

  @observable
  AdminIssueAttachmentStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'file': ValidationError(),
    'link': ValidationError(),
    'type': ValidationError(),
  };

  @action
  Future<void> refreshIssueAttachment(AdminIssueAttachmentStore targetStore) async {
    targetStore.updateWith(await _actorRepository.edemokraciaAdminIssueAttachmentGetByIdentifier(targetStore));
  }

  @action
  Future<AdminIssueAttachmentStore> validate(AdminIssueAttachmentStore targetStore) async {
    return await _actorRepository.edemokraciaAdminIssueAttachmentValidateForUpdate(targetStore);
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

class AdminIssueAttachmentsUpdatePage extends StatefulWidget {
  static const String title = 'View / Edit Attachment';

  final AdminIssueAttachmentStore targetStore;

  const AdminIssueAttachmentsUpdatePage({Key key, @required this.targetStore}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdminIssueAttachmentsUpdatePageState(targetStore: targetStore);
}

class _AdminIssueAttachmentsUpdatePageState extends State<AdminIssueAttachmentsUpdatePage> {
  final AdminIssueAttachmentStore targetStore;

  final tableService = locator<TableService>();
  final AdminIssueAttachmentsUpdatePageStore pageStore = AdminIssueAttachmentsUpdatePageStore();
  final AdminIssueAttachmentsUpdateConfig pageConfig = AdminIssueAttachmentsUpdateConfig();
  AdminIssueAttachmentsUpdatePageActions pageActions;

  _AdminIssueAttachmentsUpdatePageState({@required this.targetStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    final messageHandler = locator<MessageHandler>();

    pageActions = AdminIssueAttachmentsUpdatePageActions(navigation, targetStore, pageStore, pageConfig);
    pageStore.refreshIssueAttachment(targetStore).then((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueAttachmentsUpdatePage.title));
      navigation.setCurrentPageActions(pageActions);
      pageStore.initSortAggregatedLists(context, pageConfig);
    }).catchError((error) => messageHandler.handleApiException(context, error, 'Refresh'));
  }

  var inputWidgetKeyMap = {
    'type': GlobalKey(),
    'file': GlobalKey(),
    'link': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueAttachmentsUpdateMobilePage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueAttachmentsUpdateTabletPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueAttachmentsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminIssueAttachmentsUpdateDesktopPage(context, targetStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return layout;
  }
}
