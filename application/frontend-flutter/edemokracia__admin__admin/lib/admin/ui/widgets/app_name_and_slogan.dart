import 'package:flutter/material.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';

class AppNameAndSlogan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Column(
      children: [
        Image(fit: BoxFit.fill, image: AssetImage('assets/judo-color-logo.png')),
        Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppLocalizations.of(context).lookUpValue(context, 'edemokracia'),
            style: JudoComponentCustomizer.get().getAppNameTextStyle(theme),
          ),
        ]),
      ],
    );
  }
}
