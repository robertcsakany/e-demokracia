//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/'+'app.dart'
// Template name: lib/app.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'app__config.dart';
import 'app__config__typedefs.dart';
import 'auth/auth.dart';
import 'dart:async';
import 'package:flutter/scheduler.dart';
import 'repository/package.dart';

import 'package:edemokracia/admin/app_theme.dart';
import 'package:edemokracia/admin/error/package.dart';
import 'package:edemokracia/admin/ui/routes/router.gr.dart' as router;
import 'package:edemokracia/admin/ui/drawer_items.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_state.dart';
import 'package:edemokracia/admin/ui/guards/auth_guard.dart';
import 'package:edemokracia/admin/utilities/package.dart';
import 'package:edemokracia/admin/utilities/navigationitem_to_theme.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';
import 'package:edemokracia/admin/ui/scaffold.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_service.dart';
import 'package:edemokracia/admin/ui/widgets/user.dart';
import 'package:edemokracia/admin/ui/widgets/app_name_and_slogan.dart';
import 'package:edemokracia/admin/ui/drawer_items__config.dart';

Future<bool> hasActorMenuAccess() async {
  AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();

  try {
    var principal = await _actorRepository.getPrincipal();
    if (principal.userName.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } catch (error) {
    return false;
  }
}

class EdemokraciaAdminAdminApplication extends StatelessWidget {
  AppConfigType appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      ErrorHandler.navigateToBuiltInPage();
    });
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
          return appConfig.localeResolutionCallback(locale, supportedLocales);
        },
        title: 'Edemokracia',
        theme: AppTheme.of(context),
        home: EdemokraciaAdminAdminApplicationPage());
  }
}

class EdemokraciaAdminAdminApplicationPage extends StatefulWidget {
  final String title;

  EdemokraciaAdminAdminApplicationPage({Key key, this.title}) : super(key: key);

  @override
  EdemokraciaAdminAdminApplicationPageState createState() => EdemokraciaAdminAdminApplicationPageState();
}

class EdemokraciaAdminAdminApplicationPageState extends State<EdemokraciaAdminAdminApplicationPage> {
  @override
  Widget build(BuildContext context) {
    final navigation = locator<NavigationState>();

    final menu = Container(
      child: SafeArea(
        child: EdemokraciaAdminAdminDrawer(),
        right: false,
      ),
    );

    final screen = Row(
      children: <Widget>[
        if (!navigation.isMenuCollapsed(context)) menu,
        Expanded(
          child: EdemokraciaAdminAdminScaffold(
            key: navigation.scaffoldKey,
            body: ExtendedNavigator(
              initialRoute: NavigationService.getInitialRoute(),
              key: navigation.navigatorKey,
              router: router.Router(),
              guards: [AuthGuard()],
            ),
          ),
        ),
      ],
    );

    return Container(
      color: AppTheme.of(context).primaryColor,
      child: screen,
    );
  }
}

class EdemokraciaAdminAdminDrawer extends StatefulWidget {
  @override
  _EdemokraciaAdminAdminDrawerState createState() => new _EdemokraciaAdminAdminDrawerState();
}

class _EdemokraciaAdminAdminDrawerState extends State<EdemokraciaAdminAdminDrawer> {
  Future<bool> _hasActorMenuAccess;
  Auth _auth;

  @override
  void initState() {
    super.initState();
    _hasActorMenuAccess = hasActorMenuAccess();
    _auth = locator<Auth>();
  }

  @override
  Widget build(BuildContext context) {
    NavigationState navigationState = locator<NavigationState>();
    ThemeData theme = Theme.of(context);

    String _selected = navigationState.currentRoute; //widget.navigationState.currentRoute;
    return Container(
        width: JudoComponentCustomizer.get().getMenuWidth(),
        child: Drawer(
            child: Container(
          color: theme.cardColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Column(children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                          child: Column(
                            children: [
                              AppNameAndSlogan(),
                              Container(
                                height: 13.3 * 3,
                              ),
                              User(auth: _auth),
                              Container(
                                height: 13.3 * 2,
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [],
                      )
                    ]),
                    Theme(
                        child: actorMenuEntries(context, navigationState, _selected),
                        data: Theme.of(context).copyWith(primaryColor: theme.colorScheme.secondary)),
                    const Divider(),
                    Theme(
                        child: Column(children: [
                          isReleaseModeDebug
                              ? ListTile(
                                  leading: Icon(Icons.settings),
                                  title: Text(AppLocalizations.of(context).lookUpValue(context, 'Settings')),
                                  onTap: () {
                                    navigationState.open(router.Routes.edemokraciaAdminAdminSettingsPage);
                                  },
                                )
                              : Container(),
                          _auth.isAuthenticationRequired()
                              ? Observer(
                                  builder: (_) => _auth.isLoggedIn()
                                      ? ListTile(
                                          leading: Icon(Icons.logout),
                                          title: Text(AppLocalizations.of(context).lookUpValue(context, 'Logout')),
                                          onTap: () {
                                            _auth.logout();
                                          },
                                        )
                                      : ListTile(
                                          leading: Icon(Icons.login),
                                          title: Text(AppLocalizations.of(context).lookUpValue(context, 'Login')),
                                          onTap: () {
                                            _auth.manualLogin();
                                          },
                                        ))
                              : Container(),
                        ]),
                        data: Theme.of(context).copyWith(primaryColor: theme.colorScheme.secondary))
                  ],
                ),
              ),
            ]),
          ),
        )));
  }

  Widget actorMenuEntries(BuildContext context, NavigationState navigationState, String _selected) {
    return !_auth.isAuthenticationRequired() || (_auth.isLoggedIn() && _auth.getAuthInfo().isPrincipalAllowed)
        ? Column(
            children: DrawerItemsConfig.getFilteredNavigationItems(EdemokraciaAdminAdminNavigationItems.navigationItems, _auth)
                .map((e) => navigationItemToTheme(e, context, _auth, navigationState, _selected, setState))
                .toList(),
          )
        : Container();
  }
}
