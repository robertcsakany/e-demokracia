//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageStorePackagePath(#self)
// Template name: lib/ui/pages/page/package.dart.hbs
// Application: edemokracia::admin::Admin

library admin.ui.pages.admin.comment.created_by.view;

// no extra packages provided

import 'package:edemokracia/admin/rest/package.dart';
import 'package:edemokracia/admin/config/table_config.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:file_picker/file_picker.dart';

import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:judo_icon_helper/icons_helper.dart';

import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/store/package.dart';
import 'package:edemokracia/admin/repository/package.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_state.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_registry.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_store.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_service.dart';
import 'package:edemokracia/admin/ui/navigation/page_navigation.dart';
import 'package:edemokracia/admin/ui/routes/router.gr.dart';
import 'package:edemokracia/admin/utilities/package.dart';
import 'package:edemokracia/admin/ui/utilities/package.dart';
import 'package:edemokracia/admin/error/package.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';
import 'package:edemokracia/admin/error/package.dart';

import 'package:edemokracia/admin/ui/pages/package.dart';

import 'package:edemokracia/admin/rest/downloader/downloader.dart';

part 'package.g.dart';
part 'page.dart';
part 'page__config.dart';
part 'page__config__typedefs.dart';
part 'table__config.dart';
part 'page_actions.dart';

part 'mobile/body.dart';
part 'mobile/activity_cities__table.dart';
part 'mobile/activity_districts__table.dart';
part 'mobile/activity_counties__table.dart';
part 'tablet/body.dart';
part 'tablet/activity_cities__table.dart';
part 'tablet/activity_districts__table.dart';
part 'tablet/activity_counties__table.dart';
part 'desktop/body.dart';
part 'desktop/activity_cities__table.dart';
part 'desktop/activity_districts__table.dart';
part 'desktop/activity_counties__table.dart';