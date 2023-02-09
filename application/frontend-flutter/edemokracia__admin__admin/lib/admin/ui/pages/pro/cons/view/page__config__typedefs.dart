//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.pro.cons.view;

typedef ProConsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ProConsViewPageStore pageStore,
});

typedef ProConsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ProConsViewPageStore pageStore,
  ProStore ownerStore,
  ConStore targetStore,
});

typedef ProConsViewPageTitleGenerator = String Function(
  BuildContext context,
  ProConsViewPageStore pageStore,
  ConStore targetStore,
);
