//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/scaffold.dart'
// Template name: lib/ui/scaffold.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/app.dart';
import 'package:edemokracia/admin/app_theme.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_state.dart';
import 'package:edemokracia/admin/error/package.dart';

/// A responsive scaffold for our application.
/// Displays the navigation drawer alongside the [Scaffold] if the screen/window size is large enough
class EdemokraciaAdminAdminScaffold extends StatelessWidget {
  const EdemokraciaAdminAdminScaffold({@required this.body, this.floatingActionButton, Key key}) : super(key: key);

  final Widget body;

  final Widget floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final messageHandler = locator<MessageHandler>();
    final navigation = locator<NavigationState>();
    final drawer = navigation.isMenuCollapsed(context) ? EdemokraciaAdminAdminDrawer() : null;
    var customizer = new AppDesignCustomizer();

    return SafeArea(
      child: Scaffold(
        drawer: drawer,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(105),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(customizer.getContentMargin(context), 16, 0, 10),
                  child: AppBar(
                    automaticallyImplyLeading: drawer != null,
                    toolbarHeight: 62,
                    title: getTitle(context, navigation),
                    actions: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(right: customizer.getContentMargin(context)),
                          child: Observer(
                            builder: (_) => Row(
                              children: navigation.currentPageActions != null ? navigation.currentPageActions.getActions(context) : [],
                            ),
                          ))
                    ],
                  ),
                ),
                const Divider()
              ],
            )),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: new AppDesignCustomizer().getContentMargin(context)),
            child: Stack(
              children: [
                body,
                Observer(
                  builder: (_) => JudoFloatingCard(
                    messageStack: messageHandler.messageStack,
                    closeAction: messageHandler.popMessage,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
  }

  Widget getTitle(BuildContext context, NavigationState navigation) {
    return Theme(
      child: Observer(
          builder: (_) => Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                if (navigation.currentPageActions != null && navigation.currentPageActions.getBackIcon(context) != null)
                  navigation.currentPageActions.getBackIcon(context),
                Expanded(
                  flex: 1,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Observer(
                      builder: (_) => Theme(
                          data: JudoComponentCustomizer.get().getBreadcrumbThemeCustomizer(Theme.of(context)),
                          child: BreadCrumb(
                              items: getStyledBreadCrumbItems(navigation.breadcrumbItems, Theme.of(context)),
                              divider: Icon(Icons.chevron_right),
                              overflow: ScrollableOverflow(
                                keepLastDivider: false,
                                direction: Axis.horizontal,
                              ))),
                    ),
                    new Container(
                      child: Observer(
                        builder: (_) => Container(
                          padding: new EdgeInsets.only(right: 13.0),
                          child: new Text(
                            navigation.currentTitle,
                            overflow: TextOverflow.ellipsis,
                            style: JudoComponentCustomizer.get().getBreadcrumbTitleTextStyle(Theme.of(context)),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ])),
      data: JudoComponentCustomizer.get().getBreadcrumbThemeCustomizer(Theme.of(context)),
    );
  }

  List<BreadCrumbItem> getStyledBreadCrumbItems(List<BreadCrumbItem> items, ThemeData theme) {
    return items.map((item) {
      if (item.content is Icon) {
        Icon icon = item.content as Icon;
        return BreadCrumbItem(
            content: Padding(
                padding: items.indexOf(item) == 0 ? EdgeInsets.fromLTRB(0, 0, 16, 0) : EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  icon.icon,
                )));
      }
      if (item.content is Text) {
        Text text = item.content as Text;
        return BreadCrumbItem(
            content: Padding(
                padding: items.indexOf(item) == 0 ? EdgeInsets.fromLTRB(0, 0, 16, 0) : EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  text.data,
                  style: JudoComponentCustomizer.get().getBreadcrumbItemTextStyle(theme),
                )));
      }
      return item;
    }).toList();
  }
}
