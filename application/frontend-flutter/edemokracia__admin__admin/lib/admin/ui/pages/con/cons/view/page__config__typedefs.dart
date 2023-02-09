//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.con.cons.view;

typedef ConConsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ConConsViewPageStore pageStore,
});

typedef ConConsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ConConsViewPageStore pageStore,
  ConStore ownerStore,
  ConStore targetStore,
});

typedef ConConsViewPageTitleGenerator = String Function(
  BuildContext context,
  ConConsViewPageStore pageStore,
  ConStore targetStore,
);
