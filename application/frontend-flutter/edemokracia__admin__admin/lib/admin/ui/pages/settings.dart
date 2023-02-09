//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #pagesFolderPath(#application.actor)+'settings.dart'
// Template name: lib/ui/pages/settings.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/rest/package.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_state.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:edemokracia/admin/auth/auth.dart';
import 'package:edemokracia/admin/ui/scaffold.dart';
import 'package:edemokracia/admin/utilities/package.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package.dart';

part 'settings.g.dart';

class EdemokraciaAdminAdminSettingsPageStore extends _EdemokraciaAdminAdminSettingsPageStore with _$EdemokraciaAdminAdminSettingsPageStore {}

abstract class _EdemokraciaAdminAdminSettingsPageStore with Store {
  @observable
  String apiUrl = API_DEFAULT_BASE_URL;

  @observable
  bool loading = true;

  @action
  Future<void> loadApiUrl() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    this.apiUrl = sharedPreferences.getString("apiUrl") ?? apiUrl;
    loadFinished();
  }

  @action
  void setApiUrl(String apiUrl) {
    this.apiUrl = apiUrl;
  }

  @action
  void loadFinished() {
    loading = false;
  }
}

class EdemokraciaAdminAdminSettingsPage extends StatefulWidget {
  static const String title = 'Settings';

  @override
  _EdemokraciaAdminAdminSettingsPageState createState() => _EdemokraciaAdminAdminSettingsPageState();
}

class _EdemokraciaAdminAdminSettingsPageState extends State<EdemokraciaAdminAdminSettingsPage> {
  final EdemokraciaAdminAdminSettingsPageStore store = EdemokraciaAdminAdminSettingsPageStore();

  _EdemokraciaAdminAdminSettingsPageState() {
    final navigation = locator<NavigationState>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      navigation.setCurrentTitle(AppLocalizations.of(context).lookUpValue(context, EdemokraciaAdminAdminSettingsPage.title));
    });
    store.loadApiUrl();
  }

  @override
  Widget build(BuildContext context) {
    final navigation = locator<NavigationState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            JudoButton(
              col: 1,
              onPressed: () => navigation.close(),
              label: AppLocalizations.of(context).lookUpValue(context, 'Back'),
              icon: Icon(Icons.arrow_back_ios),
            ),
            JudoButton(
              col: 1,
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setString('apiUrl', store.apiUrl);

                JudoApiClient apiClient = locator<JudoApiClient>();
                apiClient.getDio().options.baseUrl = store.apiUrl + API_RELATIVE_PATH;
                navigation.close();
              },
              label: AppLocalizations.of(context).lookUpValue(context, 'Save'),
              icon: Icon(Icons.save),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Observer(
              builder: (_) => store.loading
                  ? JudoLoadingProgress()
                  : JudoInputText(
                      col: 4,
                      icon: Icon(Icons.web),
                      label: AppLocalizations.of(context).lookUpValue(context, 'API URL'),
                      initialValue: store.apiUrl.toString(),
                      onChanged: (value) => store.setApiUrl(value),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
