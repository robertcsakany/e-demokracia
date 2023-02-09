import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:edemokracia/admin/auth/auth.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';

class User extends StatelessWidget {
  final Auth auth;

  const User({@required this.auth});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var authInfo = auth.getAuthInfo();

    return Row(
      children: [
        Image(width: 64, height: 64, image: AssetImage('assets/ninja.png')),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
            authInfo.userName != null
                ? Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Observer(
                      builder: (_) => Text(
                        authInfo.userName,
                        style: JudoComponentCustomizer.get().getUserNameTextStyle(theme),
                      ),
                    ),
                  )
                : Container(),
            authInfo.email != null
                ? Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Observer(
                      builder: (_) => Text(
                        authInfo.email,
                        style: authInfo.userName != null
                            ? JudoComponentCustomizer.get().getEmailTextStyle(theme)
                            : JudoComponentCustomizer.get().getUserNameTextStyle(theme),
                      ),
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                AppLocalizations.of(context).lookUpValue(context, 'admin'),
                style: JudoComponentCustomizer.get().getActorNameTextStyle(theme),
              ),
            ),
          ]),
        )
      ],
    );
  }
}
