//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.resident_district.view;

typedef UserResidentDistrictViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserResidentDistrictViewPageStore pageStore,
});

typedef UserResidentDistrictViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserResidentDistrictViewPageStore pageStore,
  UserStore ownerStore,
  DistrictStore targetStore,
});

typedef UserResidentDistrictViewPageTitleGenerator = String Function(
  BuildContext context,
  UserResidentDistrictViewPageStore pageStore,
  DistrictStore targetStore,
);
