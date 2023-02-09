//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/error/package.dart'
// Template name: lib/error/package.dart.hbs
// Application: edemokracia::admin::Admin

library admin.error;

import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';
import 'package:edemokracia/admin/rest/package.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_state.dart';
import 'package:edemokracia/admin/ui/routes/router.gr.dart' as router;
import 'package:edemokracia/admin/utilities/package.dart';
import 'package:edemokracia/admin/auth/auth.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'dart:convert';

part 'package.g.dart';
part 'error_handler.dart';
part 'message_handler.dart';
part 'judo_message.dart';
part 'validation_error.dart';
