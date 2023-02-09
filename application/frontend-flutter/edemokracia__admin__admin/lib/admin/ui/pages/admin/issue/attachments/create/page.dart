//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStorePath(#self.owner)
// Template name: lib/ui/pages/page/page.dart.hbs
// Application: edemokracia::admin::Admin
// Container: default

part of admin.ui.pages.admin.issue.attachments.create;

class AdminIssueAttachmentsCreatePageStore extends _AdminIssueAttachmentsCreatePageStore with _$AdminIssueAttachmentsCreatePageStore {}

abstract class _AdminIssueAttachmentsCreatePageStore with Store {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();
  final tableService = locator<TableService>();

  PageState pageState = PageState();
  LoadingState fileBinaryTypeInputLoadingState;

  LoadingState backActionLoadingState;
  LoadingState saveCreateActionLoadingState;

  _AdminIssueAttachmentsCreatePageStore() {
    fileBinaryTypeInputLoadingState = LoadingState(pageState.setDisabledByLoading);

    backActionLoadingState = LoadingState(pageState.setDisabledByLoading);
    saveCreateActionLoadingState = LoadingState(pageState.setDisabledByLoading);
  }

  @observable
  AdminIssueAttachmentStore targetStore;

  final Map<String, ValidationError> validationAttributeErrorMessageMap = {
    'file': ValidationError(),
    'link': ValidationError(),
    'type': ValidationError(),
  };

  @action
  Future<AdminIssueAttachmentStore> getDefaults() async {
    return await _actorRepository.edemokraciaAdminIssueAttachmentDefault();
  }

  @action
  Future<AdminIssueAttachmentStore> validate(AdminIssueStore ownerStore, AdminIssueAttachmentStore targetStore) async {
    return await _actorRepository.edemokraciaAdminIssueAttachmentsValidateForCreate(ownerStore, targetStore);
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

class AdminIssueAttachmentsCreatePage extends StatefulWidget {
  static const String title = 'Create Attachment';

  final AdminIssueStore ownerStore;

  const AdminIssueAttachmentsCreatePage({Key key, @required this.ownerStore}) : super(key: key);

  @override
  _AdminIssueAttachmentsCreatePageState createState() => _AdminIssueAttachmentsCreatePageState(ownerStore: ownerStore);
}

class _AdminIssueAttachmentsCreatePageState extends State<AdminIssueAttachmentsCreatePage> {
  final AdminIssueAttachmentStore targetStore = AdminIssueAttachmentStore();
  final AdminIssueStore ownerStore;

  final tableService = locator<TableService>();
  final AdminIssueAttachmentsCreatePageStore pageStore = AdminIssueAttachmentsCreatePageStore();
  final AdminIssueAttachmentsCreateConfig pageConfig = AdminIssueAttachmentsCreateConfig();
  AdminIssueAttachmentsCreatePageActions pageActions;

  Future<AdminIssueAttachmentStore> futureTemplate;

  @override
  void initState() {
    super.initState();
    futureTemplate = pageStore.getDefaults();
  }

  _AdminIssueAttachmentsCreatePageState({@required this.ownerStore}) {
    pageStore.targetStore = targetStore;

    final navigation = locator<NavigationState>();
    pageActions = AdminIssueAttachmentsCreatePageActions(navigation, targetStore, ownerStore, pageStore, pageConfig);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(pageConfig.titleGenerator != null
          ? pageConfig.titleGenerator(context, pageStore, targetStore)
          : AppLocalizations.of(context).lookUpValue(context, AdminIssueAttachmentsCreatePage.title));
      navigation.setCurrentPageActions(pageActions);
    });
  }

  var inputWidgetKeyMap = {
    'type': GlobalKey(),
    'link': GlobalKey(),
    'file': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
        return getAdminIssueAttachmentsCreateMobilePage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
        return getAdminIssueAttachmentsCreateTabletPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
        return getAdminIssueAttachmentsCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
      }
      return getAdminIssueAttachmentsCreateDesktopPage(context, targetStore, ownerStore, pageStore, pageConfig, inputWidgetKeyMap);
    });

    return FutureBuilder<AdminIssueAttachmentStore>(
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
