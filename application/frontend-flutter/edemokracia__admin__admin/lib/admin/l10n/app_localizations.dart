//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/l10n/app_localizations.dart'
// Template name: lib/l10n/app_localizations.dart.hbs
// Application: edemokracia::admin::Admin

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:edemokracia/admin/l10n/dart/messages_all.dart';

class AppLocalizations {
  AppLocalizations(this.localeName);

  final String localeName;
  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[Locale('en', ''), Locale('hu', '')];

  static Future<AppLocalizations> load(Locale locale) {
    final String name = (locale.countryCode == null || locale.countryCode.isEmpty) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      return AppLocalizations(localeName);
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String lookUpValue(BuildContext context, String value, {List<String> args}) {
    switch (value) {
      case 'ABSTAIN':
        return AppLocalizations.of(context)._ABSTAIN();
      case 'ACCESS_DENIED':
        return AppLocalizations.of(context)._ACCESS95DENIED();
      case 'ACCESS_DENIED_FOR_INSTANCE_OF_BOUND_OPERATION':
        return AppLocalizations.of(context)._ACCESS95DENIED95FOR95INSTANCE95OF95BOUND95OPERATION();
      case 'ACCESS_DENIED_INVALID_TYPE':
        return AppLocalizations.of(context)._ACCESS95DENIED95INVALID95TYPE();
      case 'ACCESS_TOKEN_EXPIRED':
        return AppLocalizations.of(context)._ACCESS95TOKEN95EXPIRED();
      case 'ACTIVE':
        return AppLocalizations.of(context)._ACTIVE();
      case 'API_URL':
        return AppLocalizations.of(context)._API95URL();
      case 'AUTHENTICATED_ENTITY_NOT_FOUND':
        return AppLocalizations.of(context)._AUTHENTICATED95ENTITY95NOT95FOUND('');
      case 'AUTHENTICATION_REQUIRED':
        return AppLocalizations.of(context)._AUTHENTICATION95REQUIRED();
      case 'Activity cities':
        return AppLocalizations.of(context)._Activity32cities();
      case 'Activity counties':
        return AppLocalizations.of(context)._Activity32counties();
      case 'Activity districts':
        return AppLocalizations.of(context)._Activity32districts();
      case 'Add':
        return AppLocalizations.of(context)._Add();
      case 'Add Filter':
        return AppLocalizations.of(context)._Add32Filter();
      case 'Add argument':
        return AppLocalizations.of(context)._Add32argument();
      case 'Add comment':
        return AppLocalizations.of(context)._Add32comment();
      case 'Are you sure you would like to clear all elements in the list?':
        return AppLocalizations.of(context)._Are32you32sure32you32would32like32to32clear32all32elements32in32the32list63();
      case 'Areas':
        return AppLocalizations.of(context)._Areas();
      case 'Arguments':
        return AppLocalizations.of(context)._Arguments();
      case 'Attachments':
        return AppLocalizations.of(context)._Attachments();
      case 'BOUND_OPERATION_INSTANCE_NOT_FOUND':
        return AppLocalizations.of(context)._BOUND95OPERATION95INSTANCE95NOT95FOUND();
      case 'Back':
        return AppLocalizations.of(context)._Back();
      case 'Basic data':
        return AppLocalizations.of(context)._Basic32data();
      case 'Buttons':
        return AppLocalizations.of(context)._Buttons();
      case 'CLOSED':
        return AppLocalizations.of(context)._CLOSED();
      case 'CON':
        return AppLocalizations.of(context)._CON();
      case 'CONVERSION_FAILED':
        return AppLocalizations.of(context)._CONVERSION95FAILED('', '');
      case 'CREATED':
        return AppLocalizations.of(context)._CREATED();
      case 'Cancel':
        return AppLocalizations.of(context)._Cancel();
      case 'Categories':
        return AppLocalizations.of(context)._Categories();
      case 'Cities':
        return AppLocalizations.of(context)._Cities();
      case 'City':
        return AppLocalizations.of(context)._City();
      case 'City name':
        return AppLocalizations.of(context)._City32name();
      case 'Clear':
        return AppLocalizations.of(context)._Clear();
      case 'Close at':
        return AppLocalizations.of(context)._Close32at();
      case 'Close debate':
        return AppLocalizations.of(context)._Close32debate();
      case 'CloseAt':
        return AppLocalizations.of(context)._CloseAt();
      case 'Comment':
        return AppLocalizations.of(context)._Comment();
      case 'Comments':
        return AppLocalizations.of(context)._Comments();
      case 'Cons':
        return AppLocalizations.of(context)._Cons();
      case 'Contra':
        return AppLocalizations.of(context)._Contra();
      case 'Counties':
        return AppLocalizations.of(context)._Counties();
      case 'County':
        return AppLocalizations.of(context)._County();
      case 'County name':
        return AppLocalizations.of(context)._County32name();
      case 'Create':
        return AppLocalizations.of(context)._Create();
      case 'Create / View Vote':
        return AppLocalizations.of(context)._Create324732View32Vote();
      case 'Create Attachment':
        return AppLocalizations.of(context)._Create32Attachment();
      case 'Create Category':
        return AppLocalizations.of(context)._Create32Category();
      case 'Create Vote':
        return AppLocalizations.of(context)._Create32Vote();
      case 'Create city':
        return AppLocalizations.of(context)._Create32city();
      case 'Create county':
        return AppLocalizations.of(context)._Create32county();
      case 'Create debate':
        return AppLocalizations.of(context)._Create32debate();
      case 'Create district':
        return AppLocalizations.of(context)._Create32district();
      case 'Create issue':
        return AppLocalizations.of(context)._Create32issue();
      case 'Create user':
        return AppLocalizations.of(context)._Create32user();
      case 'Created':
        return AppLocalizations.of(context)._Created();
      case 'Created by':
        return AppLocalizations.of(context)._Created32by();
      case 'CreatedBy':
        return AppLocalizations.of(context)._CreatedBy();
      case 'CreatedByName':
        return AppLocalizations.of(context)._CreatedByName();
      case 'DOWN':
        return AppLocalizations.of(context)._DOWN();
      case 'Dashboard':
        return AppLocalizations.of(context)._Dashboard();
      case 'Debate':
        return AppLocalizations.of(context)._Debate();
      case 'Debates':
        return AppLocalizations.of(context)._Debates();
      case 'Delete':
        return AppLocalizations.of(context)._Delete();
      case 'Description':
        return AppLocalizations.of(context)._Description();
      case 'District':
        return AppLocalizations.of(context)._District();
      case 'District name':
        return AppLocalizations.of(context)._District32name();
      case 'Districts':
        return AppLocalizations.of(context)._Districts();
      case 'Edit':
        return AppLocalizations.of(context)._Edit();
      case 'Email':
        return AppLocalizations.of(context)._Email();
      case 'Entity Table':
        return AppLocalizations.of(context)._Entity32Table();
      case 'Entity View':
        return AppLocalizations.of(context)._Entity32View();
      case 'Error':
        return AppLocalizations.of(context)._Error();
      case 'File':
        return AppLocalizations.of(context)._File();
      case 'File uploaded':
        return AppLocalizations.of(context)._File32uploaded();
      case 'First name':
        return AppLocalizations.of(context)._First32name();
      case 'FirstName':
        return AppLocalizations.of(context)._FirstName();
      case 'Has admin access':
        return AppLocalizations.of(context)._Has32admin32access();
      case 'IDENTIFIER_ATTRIBUTE_UNIQUENESS_VIOLATION':
        return AppLocalizations.of(context)._IDENTIFIER95ATTRIBUTE95UNIQUENESS95VIOLATION('', '');
      case 'IMAGE':
        return AppLocalizations.of(context)._IMAGE();
      case 'INTERNAL_SERVER_ERROR':
        return AppLocalizations.of(context)._INTERNAL95SERVER95ERROR('');
      case 'INVALID_CONTENT':
        return AppLocalizations.of(context)._INVALID95CONTENT('');
      case 'INVALID_IDENTIFIER':
        return AppLocalizations.of(context)._INVALID95IDENTIFIER();
      case 'IsAdmin':
        return AppLocalizations.of(context)._IsAdmin();
      case 'IsRatingType':
        return AppLocalizations.of(context)._IsRatingType();
      case 'IsSelectAnswerType':
        return AppLocalizations.of(context)._IsSelectAnswerType();
      case 'IsYesNoAbstainType':
        return AppLocalizations.of(context)._IsYesNoAbstainType();
      case 'IsYesNoType':
        return AppLocalizations.of(context)._IsYesNoType();
      case 'Issue':
        return AppLocalizations.of(context)._Issue();
      case 'Issues':
        return AppLocalizations.of(context)._Issues();
      case 'Issues, Debates':
        return AppLocalizations.of(context)._Issues4432Debates();
      case 'LINK':
        return AppLocalizations.of(context)._LINK();
      case 'Last name':
        return AppLocalizations.of(context)._Last32name();
      case 'LastName':
        return AppLocalizations.of(context)._LastName();
      case 'Link':
        return AppLocalizations.of(context)._Link();
      case 'Login':
        return AppLocalizations.of(context)._Login();
      case 'Logout':
        return AppLocalizations.of(context)._Logout();
      case 'MAP':
        return AppLocalizations.of(context)._MAP();
      case 'MAX_LENGTH_VALIDATION_FAILED':
        return AppLocalizations.of(context)._MAX95LENGTH95VALIDATION95FAILED('', '', '');
      case 'MISSING_IDENTIFIER_OF_BOUND_OPERATION':
        return AppLocalizations.of(context)._MISSING95IDENTIFIER95OF95BOUND95OPERATION();
      case 'MISSING_REQUIRED_ATTRIBUTE':
        return AppLocalizations.of(context)._MISSING95REQUIRED95ATTRIBUTE('');
      case 'MISSING_REQUIRED_PARAMETER':
        return AppLocalizations.of(context)._MISSING95REQUIRED95PARAMETER('');
      case 'MISSING_REQUIRED_RELATION':
        return AppLocalizations.of(context)._MISSING95REQUIRED95RELATION('');
      case 'My debates':
        return AppLocalizations.of(context)._My32debates();
      case 'My issues':
        return AppLocalizations.of(context)._My32issues();
      case 'NO':
        return AppLocalizations.of(context)._NO();
      case 'NOT_ACCEPTED_BY_RANGE':
        return AppLocalizations.of(context)._NOT95ACCEPTED95BY95RANGE('', '');
      case 'NO_VOTE':
        return AppLocalizations.of(context)._NO95VOTE();
      case 'NULL_ITEM_IS_NOT_SUPPORTED':
        return AppLocalizations.of(context)._NULL95ITEM95IS95NOT95SUPPORTED('');
      case 'NULL_PARAMETER_ITEM_IS_NOT_SUPPORTED':
        return AppLocalizations.of(context)._NULL95PARAMETER95ITEM95IS95NOT95SUPPORTED('');
      case 'Name':
        return AppLocalizations.of(context)._Name();
      case 'Next':
        return AppLocalizations.of(context)._Next();
      case 'No':
        return AppLocalizations.of(context)._No();
      case 'No results':
        return AppLocalizations.of(context)._No32results();
      case 'OK':
        return AppLocalizations.of(context)._OK();
      case 'Ok':
        return AppLocalizations.of(context)._Ok();
      case 'Owner':
        return AppLocalizations.of(context)._Owner();
      case 'PATTERN_VALIDATION_FAILED':
        return AppLocalizations.of(context)._PATTERN95VALIDATION95FAILED('', '', '');
      case 'PENDING':
        return AppLocalizations.of(context)._PENDING();
      case 'PERMISSION_DENIED':
        return AppLocalizations.of(context)._PERMISSION95DENIED('', '');
      case 'PRECISION_VALIDATION_FAILED':
        return AppLocalizations.of(context)._PRECISION95VALIDATION95FAILED('', '', '');
      case 'PRO':
        return AppLocalizations.of(context)._PRO();
      case 'Page loading':
        return AppLocalizations.of(context)._Page32loading();
      case 'Personal':
        return AppLocalizations.of(context)._Personal();
      case 'Phone':
        return AppLocalizations.of(context)._Phone();
      case 'Please make sure all fields are filled in correctly.':
        return AppLocalizations.of(context)._Please32make32sure32all32fields32are32filled32in32correctly46();
      case 'Previous':
        return AppLocalizations.of(context)._Previous();
      case 'Pro':
        return AppLocalizations.of(context)._Pro();
      case 'Pros':
        return AppLocalizations.of(context)._Pros();
      case 'RATE':
        return AppLocalizations.of(context)._RATE();
      case 'Rating vote':
        return AppLocalizations.of(context)._Rating32vote();
      case 'Refresh':
        return AppLocalizations.of(context)._Refresh();
      case 'Remove':
        return AppLocalizations.of(context)._Remove();
      case 'Representation':
        return AppLocalizations.of(context)._Representation();
      case 'Resident city':
        return AppLocalizations.of(context)._Resident32city();
      case 'Resident county':
        return AppLocalizations.of(context)._Resident32county();
      case 'Resident district':
        return AppLocalizations.of(context)._Resident32district();
      case 'SCALE_VALIDATION_FAILED':
        return AppLocalizations.of(context)._SCALE95VALIDATION95FAILED('', '', '', '');
      case 'SELECT_ANSWER':
        return AppLocalizations.of(context)._SELECT95ANSWER();
      case 'Save':
        return AppLocalizations.of(context)._Save();
      case 'Search':
        return AppLocalizations.of(context)._Search();
      case 'Security':
        return AppLocalizations.of(context)._Security();
      case 'Select':
        return AppLocalizations.of(context)._Select();
      case 'Select answer vote':
        return AppLocalizations.of(context)._Select32answer32vote();
      case 'Settings':
        return AppLocalizations.of(context)._Settings();
      case 'Something went wrong. Please contact with the system admins.':
        return AppLocalizations.of(context)._Something32went32wrong4632Please32contact32with32the32system32admins46();
      case 'Sorting':
        return AppLocalizations.of(context)._Sorting();
      case 'Status':
        return AppLocalizations.of(context)._Status();
      case 'Subcategories':
        return AppLocalizations.of(context)._Subcategories();
      case 'Successful operation':
        return AppLocalizations.of(context)._Successful32operation();
      case 'TOO_FEW_ITEMS':
        return AppLocalizations.of(context)._TOO95FEW95ITEMS('', '');
      case 'TOO_FEW_PARAMETERS':
        return AppLocalizations.of(context)._TOO95FEW95PARAMETERS('', '');
      case 'TOO_MANY_ITEMS':
        return AppLocalizations.of(context)._TOO95MANY95ITEMS('', '');
      case 'TOO_MANY_PARAMETERS':
        return AppLocalizations.of(context)._TOO95MANY95PARAMETERS('', '');
      case 'Title':
        return AppLocalizations.of(context)._Title();
      case 'TransferObject Form':
        return AppLocalizations.of(context)._TransferObject32Form();
      case 'TransferObject Table':
        return AppLocalizations.of(context)._TransferObject32Table();
      case 'TransferObject View':
        return AppLocalizations.of(context)._TransferObject32View();
      case 'Type':
        return AppLocalizations.of(context)._Type();
      case 'UP':
        return AppLocalizations.of(context)._UP();
      case 'Unknown':
        return AppLocalizations.of(context)._Unknown();
      case 'Unselect':
        return AppLocalizations.of(context)._Unselect();
      case 'UserName':
        return AppLocalizations.of(context)._UserName();
      case 'Username':
        return AppLocalizations.of(context)._Username();
      case 'Users':
        return AppLocalizations.of(context)._Users();
      case 'VIDEO':
        return AppLocalizations.of(context)._VIDEO();
      case 'View':
        return AppLocalizations.of(context)._View();
      case 'View / Edit Attachment':
        return AppLocalizations.of(context)._View324732Edit32Attachment();
      case 'View / Edit Category':
        return AppLocalizations.of(context)._View324732Edit32Category();
      case 'View / Edit Comment':
        return AppLocalizations.of(context)._View324732Edit32Comment();
      case 'View / Edit Con':
        return AppLocalizations.of(context)._View324732Edit32Con();
      case 'View / Edit Debate':
        return AppLocalizations.of(context)._View324732Edit32Debate();
      case 'View / Edit Issue':
        return AppLocalizations.of(context)._View324732Edit32Issue();
      case 'View / Edit Pro':
        return AppLocalizations.of(context)._View324732Edit32Pro();
      case 'View / Edit User':
        return AppLocalizations.of(context)._View324732Edit32User();
      case 'Vote close at':
        return AppLocalizations.of(context)._Vote32close32at();
      case 'Vote description':
        return AppLocalizations.of(context)._Vote32description();
      case 'Vote title':
        return AppLocalizations.of(context)._Vote32title();
      case 'VoteDefinition':
        return AppLocalizations.of(context)._VoteDefinition();
      case 'VoteRating':
        return AppLocalizations.of(context)._VoteRating();
      case 'VoteSelectAnswer':
        return AppLocalizations.of(context)._VoteSelectAnswer();
      case 'VoteType':
        return AppLocalizations.of(context)._VoteType();
      case 'VoteYesNo':
        return AppLocalizations.of(context)._VoteYesNo();
      case 'VoteYesNoAbstain':
        return AppLocalizations.of(context)._VoteYesNoAbstain();
      case 'Votes':
        return AppLocalizations.of(context)._Votes();
      case 'YES':
        return AppLocalizations.of(context)._YES();
      case 'YES_NO':
        return AppLocalizations.of(context)._YES95NO();
      case 'YES_NO_ABSTAIN':
        return AppLocalizations.of(context)._YES95NO95ABSTAIN();
      case 'Yes':
        return AppLocalizations.of(context)._Yes();
      case 'Yes / No / Abstain vote':
        return AppLocalizations.of(context)._Yes324732No324732Abstain32vote();
      case 'Yes / No vote':
        return AppLocalizations.of(context)._Yes324732No32vote();
      case 'actionButton':
        return AppLocalizations.of(context)._actionButton();
      case 'actionGroup':
        return AppLocalizations.of(context)._actionGroup();
      case 'admin':
        return AppLocalizations.of(context)._admin();
      case 'beginWith':
        return AppLocalizations.of(context)._beginWith();
      case 'called successfully':
        return AppLocalizations.of(context)._called32successfully();
      case 'cancel':
        return AppLocalizations.of(context)._cancel();
      case 'contain':
        return AppLocalizations.of(context)._contain();
      case 'down':
        return AppLocalizations.of(context)._down();
      case 'equal':
        return AppLocalizations.of(context)._equal();
      case 'equals':
        return AppLocalizations.of(context)._equals();
      case 'greaterOrEqual':
        return AppLocalizations.of(context)._greaterOrEqual();
      case 'greaterThan':
        return AppLocalizations.of(context)._greaterThan();
      case 'lessOrEqual':
        return AppLocalizations.of(context)._lessOrEqual();
      case 'lessThan':
        return AppLocalizations.of(context)._lessThan();
      case 'like':
        return AppLocalizations.of(context)._like();
      case 'matches':
        return AppLocalizations.of(context)._matches();
      case 'notEqual':
        return AppLocalizations.of(context)._notEqual();
      case 'notEquals':
        return AppLocalizations.of(context)._notEquals();
      case 'up':
        return AppLocalizations.of(context)._up();
      default:
        return value;
    }
  }

  String _ABSTAIN() {
    return Intl.message(
      'ABSTAIN',
      name: '_ABSTAIN',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _ACCESS95DENIED() {
    return Intl.message(
      'Access denied.',
      name: '_ACCESS95DENIED',
      args: [],
      desc: 'Operation is not exposed to the given actor.',
      locale: localeName,
    );
  }

  String _ACCESS95DENIED95FOR95INSTANCE95OF95BOUND95OPERATION() {
    return Intl.message(
      'Access denied.',
      name: '_ACCESS95DENIED95FOR95INSTANCE95OF95BOUND95OPERATION',
      args: [],
      desc:
          'Instance of bound operation has type that is not exposed to the given actor. (Actor is resolved by access token that will be changed later to be defined by base path of JAX-RS application.)',
      locale: localeName,
    );
  }

  String _ACCESS95DENIED95INVALID95TYPE() {
    return Intl.message(
      'Access denied.',
      name: '_ACCESS95DENIED95INVALID95TYPE',
      args: [],
      desc:
          'Mapped transfer object type of bound operation does not match type of signed identifier. User might call an operation by identifier of different representation (transfer object type) of the requested instance.',
      locale: localeName,
    );
  }

  String _ACCESS95TOKEN95EXPIRED() {
    return Intl.message(
      'Token expired.',
      name: '_ACCESS95TOKEN95EXPIRED',
      args: [],
      desc: 'OAuth 2.0 access token expired, need to refresh it.',
      locale: localeName,
    );
  }

  String _ACTIVE() {
    return Intl.message(
      'ACTIVE',
      name: '_ACTIVE',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _API95URL() {
    return Intl.message(
      'API URL',
      name: '_API95URL',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _AUTHENTICATED95ENTITY95NOT95FOUND(String actor) {
    return Intl.message(
      'User not exists or disabled.',
      name: '_AUTHENTICATED95ENTITY95NOT95FOUND',
      args: [actor],
      desc: 'No user found in da	ase by claims returned in access token. User may deleted/disabled or application has been changed.',
      locale: localeName,
    );
  }

  String _AUTHENTICATION95REQUIRED() {
    return Intl.message(
      'Authentication required.',
      name: '_AUTHENTICATION95REQUIRED',
      args: [],
      desc:
          'OAuth 2.0 access token to call an operation is not sent or incorrect. The same services are exposed to all actors so token data (Client ID) is used to detect the client application so invalid access tokens (missing &quot;Bearer &quot; prefix, invalid content) are ignored (causing this fault).',
      locale: localeName,
    );
  }

  String _Activity32cities() {
    return Intl.message(
      'Activity cities',
      name: '_Activity32cities',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Activity32counties() {
    return Intl.message(
      'Activity counties',
      name: '_Activity32counties',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Activity32districts() {
    return Intl.message(
      'Activity districts',
      name: '_Activity32districts',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Add() {
    return Intl.message(
      'Add',
      name: '_Add',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Add32Filter() {
    return Intl.message(
      'Add Filter',
      name: '_Add32Filter',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Add32argument() {
    return Intl.message(
      'Add argument',
      name: '_Add32argument',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Add32comment() {
    return Intl.message(
      'Add comment',
      name: '_Add32comment',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Are32you32sure32you32would32like32to32clear32all32elements32in32the32list63() {
    return Intl.message(
      'Are you sure you would like to clear all elements in the list?',
      name: '_Are32you32sure32you32would32like32to32clear32all32elements32in32the32list63',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Areas() {
    return Intl.message(
      'Areas',
      name: '_Areas',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Arguments() {
    return Intl.message(
      'Arguments',
      name: '_Arguments',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Attachments() {
    return Intl.message(
      'Attachments',
      name: '_Attachments',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _BOUND95OPERATION95INSTANCE95NOT95FOUND() {
    return Intl.message(
      'Not found.',
      name: '_BOUND95OPERATION95INSTANCE95NOT95FOUND',
      args: [],
      desc: 'Instance of bound operation not found in database. It might be deleted.',
      locale: localeName,
    );
  }

  String _Back() {
    return Intl.message(
      'Back',
      name: '_Back',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Basic32data() {
    return Intl.message(
      'Basic data',
      name: '_Basic32data',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Buttons() {
    return Intl.message(
      'Buttons',
      name: '_Buttons',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _CLOSED() {
    return Intl.message(
      'CLOSED',
      name: '_CLOSED',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _CON() {
    return Intl.message(
      'CON',
      name: '_CON',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _CONVERSION95FAILED(String feature, String value) {
    return Intl.message(
      'Conversion failed.',
      name: '_CONVERSION95FAILED',
      args: [feature, value],
      desc: 'Failed to convert attribute value to the expected type. Path expression is returned in location field.',
      locale: localeName,
    );
  }

  String _CREATED() {
    return Intl.message(
      'CREATED',
      name: '_CREATED',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Cancel() {
    return Intl.message(
      'Cancel',
      name: '_Cancel',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Categories() {
    return Intl.message(
      'Categories',
      name: '_Categories',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Cities() {
    return Intl.message(
      'Cities',
      name: '_Cities',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _City() {
    return Intl.message(
      'City',
      name: '_City',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _City32name() {
    return Intl.message(
      'City name',
      name: '_City32name',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Clear() {
    return Intl.message(
      'Clear',
      name: '_Clear',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Close32at() {
    return Intl.message(
      'Close at',
      name: '_Close32at',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Close32debate() {
    return Intl.message(
      'Close debate',
      name: '_Close32debate',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _CloseAt() {
    return Intl.message(
      'CloseAt',
      name: '_CloseAt',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Comment() {
    return Intl.message(
      'Comment',
      name: '_Comment',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Comments() {
    return Intl.message(
      'Comments',
      name: '_Comments',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Cons() {
    return Intl.message(
      'Cons',
      name: '_Cons',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Contra() {
    return Intl.message(
      'Contra',
      name: '_Contra',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Counties() {
    return Intl.message(
      'Counties',
      name: '_Counties',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _County() {
    return Intl.message(
      'County',
      name: '_County',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _County32name() {
    return Intl.message(
      'County name',
      name: '_County32name',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create() {
    return Intl.message(
      'Create',
      name: '_Create',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create324732View32Vote() {
    return Intl.message(
      'Create / View Vote',
      name: '_Create324732View32Vote',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32Attachment() {
    return Intl.message(
      'Create Attachment',
      name: '_Create32Attachment',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32Category() {
    return Intl.message(
      'Create Category',
      name: '_Create32Category',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32Vote() {
    return Intl.message(
      'Create Vote',
      name: '_Create32Vote',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32city() {
    return Intl.message(
      'Create city',
      name: '_Create32city',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32county() {
    return Intl.message(
      'Create county',
      name: '_Create32county',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32debate() {
    return Intl.message(
      'Create debate',
      name: '_Create32debate',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32district() {
    return Intl.message(
      'Create district',
      name: '_Create32district',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32issue() {
    return Intl.message(
      'Create issue',
      name: '_Create32issue',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Create32user() {
    return Intl.message(
      'Create user',
      name: '_Create32user',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Created() {
    return Intl.message(
      'Created',
      name: '_Created',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Created32by() {
    return Intl.message(
      'Created by',
      name: '_Created32by',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _CreatedBy() {
    return Intl.message(
      'CreatedBy',
      name: '_CreatedBy',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _CreatedByName() {
    return Intl.message(
      'CreatedByName',
      name: '_CreatedByName',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _DOWN() {
    return Intl.message(
      'DOWN',
      name: '_DOWN',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Dashboard() {
    return Intl.message(
      'Dashboard',
      name: '_Dashboard',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Debate() {
    return Intl.message(
      'Debate',
      name: '_Debate',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Debates() {
    return Intl.message(
      'Debates',
      name: '_Debates',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Delete() {
    return Intl.message(
      'Delete',
      name: '_Delete',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Description() {
    return Intl.message(
      'Description',
      name: '_Description',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _District() {
    return Intl.message(
      'District',
      name: '_District',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _District32name() {
    return Intl.message(
      'District name',
      name: '_District32name',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Districts() {
    return Intl.message(
      'Districts',
      name: '_Districts',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Edit() {
    return Intl.message(
      'Edit',
      name: '_Edit',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Email() {
    return Intl.message(
      'Email',
      name: '_Email',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Entity32Table() {
    return Intl.message(
      'Entity Table',
      name: '_Entity32Table',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Entity32View() {
    return Intl.message(
      'Entity View',
      name: '_Entity32View',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Error() {
    return Intl.message(
      'Error',
      name: '_Error',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _File() {
    return Intl.message(
      'File',
      name: '_File',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _File32uploaded() {
    return Intl.message(
      'File uploaded',
      name: '_File32uploaded',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _First32name() {
    return Intl.message(
      'First name',
      name: '_First32name',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _FirstName() {
    return Intl.message(
      'FirstName',
      name: '_FirstName',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Has32admin32access() {
    return Intl.message(
      'Has admin access',
      name: '_Has32admin32access',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _IDENTIFIER95ATTRIBUTE95UNIQUENESS95VIOLATION(String feature, String value) {
    return Intl.message(
      'Identifier attribute is not unique.',
      name: '_IDENTIFIER95ATTRIBUTE95UNIQUENESS95VIOLATION',
      args: [feature, value],
      desc: 'The value is not accepted, because the attribute is marked as identifier and the same value is already presented in other instance.',
      locale: localeName,
    );
  }

  String _IMAGE() {
    return Intl.message(
      'IMAGE',
      name: '_IMAGE',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _INTERNAL95SERVER95ERROR(String exception) {
    return Intl.message(
      'Internal server error.',
      name: '_INTERNAL95SERVER95ERROR',
      args: [exception],
      desc: 'Internal server error that could not fix by user or client, need to analyze by JUDO developers.',
      locale: localeName,
    );
  }

  String _INVALID95CONTENT(String feature) {
    return Intl.message(
      'Invalid content.',
      name: '_INVALID95CONTENT',
      args: [feature],
      desc: 'Content is invalid (collection instead of single value or unknown collection).',
      locale: localeName,
    );
  }

  String _INVALID95IDENTIFIER() {
    return Intl.message(
      'Invalid identifier.',
      name: '_INVALID95IDENTIFIER',
      args: [],
      desc: 'Signed identifier (signature) is invalid.',
      locale: localeName,
    );
  }

  String _IsAdmin() {
    return Intl.message(
      'IsAdmin',
      name: '_IsAdmin',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _IsRatingType() {
    return Intl.message(
      'IsRatingType',
      name: '_IsRatingType',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _IsSelectAnswerType() {
    return Intl.message(
      'IsSelectAnswerType',
      name: '_IsSelectAnswerType',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _IsYesNoAbstainType() {
    return Intl.message(
      'IsYesNoAbstainType',
      name: '_IsYesNoAbstainType',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _IsYesNoType() {
    return Intl.message(
      'IsYesNoType',
      name: '_IsYesNoType',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Issue() {
    return Intl.message(
      'Issue',
      name: '_Issue',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Issues() {
    return Intl.message(
      'Issues',
      name: '_Issues',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Issues4432Debates() {
    return Intl.message(
      'Issues, Debates',
      name: '_Issues4432Debates',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _LINK() {
    return Intl.message(
      'LINK',
      name: '_LINK',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Last32name() {
    return Intl.message(
      'Last name',
      name: '_Last32name',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _LastName() {
    return Intl.message(
      'LastName',
      name: '_LastName',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Link() {
    return Intl.message(
      'Link',
      name: '_Link',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Login() {
    return Intl.message(
      'Login',
      name: '_Login',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Logout() {
    return Intl.message(
      'Logout',
      name: '_Logout',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _MAP() {
    return Intl.message(
      'MAP',
      name: '_MAP',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _MAX95LENGTH95VALIDATION95FAILED(String feature, String maxLength, String value) {
    return Intl.message(
      'Value is too long.',
      name: '_MAX95LENGTH95VALIDATION95FAILED',
      args: [feature, maxLength, value],
      desc: 'Length of value is greater than allowed by model.',
      locale: localeName,
    );
  }

  String _MISSING95IDENTIFIER95OF95BOUND95OPERATION() {
    return Intl.message(
      'Missing object ID of operation.',
      name: '_MISSING95IDENTIFIER95OF95BOUND95OPERATION',
      args: [],
      desc: 'Missing signed identifier (HTTP header) of bound operation.',
      locale: localeName,
    );
  }

  String _MISSING95REQUIRED95ATTRIBUTE(String feature) {
    return Intl.message(
      'Missing required attribute.',
      name: '_MISSING95REQUIRED95ATTRIBUTE',
      args: [feature],
      desc: 'A required attribute (path expression is returned in location field) is missing from request.',
      locale: localeName,
    );
  }

  String _MISSING95REQUIRED95PARAMETER(String feature) {
    return Intl.message(
      'Missing required parameter.',
      name: '_MISSING95REQUIRED95PARAMETER',
      args: [feature],
      desc: 'A required single parameter (name is returned in location field) is missing from request.',
      locale: localeName,
    );
  }

  String _MISSING95REQUIRED95RELATION(String feature) {
    return Intl.message(
      'Missing required relation.',
      name: '_MISSING95REQUIRED95RELATION',
      args: [feature],
      desc: 'A required single relation (path expression is returned in location field) is missing from request.',
      locale: localeName,
    );
  }

  String _My32debates() {
    return Intl.message(
      'My debates',
      name: '_My32debates',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _My32issues() {
    return Intl.message(
      'My issues',
      name: '_My32issues',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _NO() {
    return Intl.message(
      'NO',
      name: '_NO',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _NOT95ACCEPTED95BY95RANGE(String identifier, String signedIdentifier) {
    return Intl.message(
      'Invalid reference.',
      name: '_NOT95ACCEPTED95BY95RANGE',
      args: [identifier, signedIdentifier],
      desc: 'Reference is not accepted because of range expression defined for the given relation.',
      locale: localeName,
    );
  }

  String _NO95VOTE() {
    return Intl.message(
      'NO_VOTE',
      name: '_NO95VOTE',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _NULL95ITEM95IS95NOT95SUPPORTED(String feature) {
    return Intl.message(
      'Null item is not supported.',
      name: '_NULL95ITEM95IS95NOT95SUPPORTED',
      args: [feature],
      desc: 'Null item is not accepted as collection relation item.',
      locale: localeName,
    );
  }

  String _NULL95PARAMETER95ITEM95IS95NOT95SUPPORTED(String feature) {
    return Intl.message(
      'Null item is not supported.',
      name: '_NULL95PARAMETER95ITEM95IS95NOT95SUPPORTED',
      args: [feature],
      desc: 'Null item is not accepted as collection parameter item.',
      locale: localeName,
    );
  }

  String _Name() {
    return Intl.message(
      'Name',
      name: '_Name',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Next() {
    return Intl.message(
      'Next',
      name: '_Next',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _No() {
    return Intl.message(
      'No',
      name: '_No',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _No32results() {
    return Intl.message(
      'No results',
      name: '_No32results',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _OK() {
    return Intl.message(
      'OK',
      name: '_OK',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Ok() {
    return Intl.message(
      'Ok',
      name: '_Ok',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Owner() {
    return Intl.message(
      'Owner',
      name: '_Owner',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _PATTERN95VALIDATION95FAILED(String feature, String pattern, String value) {
    return Intl.message(
      'Value does not match pattern.',
      name: '_PATTERN95VALIDATION95FAILED',
      args: [feature, pattern, value],
      desc: 'Value must match a regular expression defined by model.',
      locale: localeName,
    );
  }

  String _PENDING() {
    return Intl.message(
      'PENDING',
      name: '_PENDING',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _PERMISSION95DENIED(String missingPrivileges, String modelElement) {
    return Intl.message(
      'Permission denied.',
      name: '_PERMISSION95DENIED',
      args: [missingPrivileges, modelElement],
      desc: 'Some privileges (CREATE/UPDATE/DELETE) are missing from model element related to the given operation.',
      locale: localeName,
    );
  }

  String _PRECISION95VALIDATION95FAILED(String feature, String precision, String value) {
    return Intl.message(
      'Too many digits.',
      name: '_PRECISION95VALIDATION95FAILED',
      args: [feature, precision, value],
      desc: 'Number of digits of value is greater than defined by model.',
      locale: localeName,
    );
  }

  String _PRO() {
    return Intl.message(
      'PRO',
      name: '_PRO',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Page32loading() {
    return Intl.message(
      'Page loading',
      name: '_Page32loading',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Personal() {
    return Intl.message(
      'Personal',
      name: '_Personal',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Phone() {
    return Intl.message(
      'Phone',
      name: '_Phone',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Please32make32sure32all32fields32are32filled32in32correctly46() {
    return Intl.message(
      'Please make sure all fields are filled in correctly.',
      name: '_Please32make32sure32all32fields32are32filled32in32correctly46',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Previous() {
    return Intl.message(
      'Previous',
      name: '_Previous',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Pro() {
    return Intl.message(
      'Pro',
      name: '_Pro',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Pros() {
    return Intl.message(
      'Pros',
      name: '_Pros',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _RATE() {
    return Intl.message(
      'RATE',
      name: '_RATE',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Rating32vote() {
    return Intl.message(
      'Rating vote',
      name: '_Rating32vote',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Refresh() {
    return Intl.message(
      'Refresh',
      name: '_Refresh',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Remove() {
    return Intl.message(
      'Remove',
      name: '_Remove',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Representation() {
    return Intl.message(
      'Representation',
      name: '_Representation',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Resident32city() {
    return Intl.message(
      'Resident city',
      name: '_Resident32city',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Resident32county() {
    return Intl.message(
      'Resident county',
      name: '_Resident32county',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Resident32district() {
    return Intl.message(
      'Resident district',
      name: '_Resident32district',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _SCALE95VALIDATION95FAILED(String feature, String precision, String scale, String value) {
    return Intl.message(
      'Invalid scale.',
      name: '_SCALE95VALIDATION95FAILED',
      args: [feature, precision, scale, value],
      desc: 'Scale of decimal value is not supported.',
      locale: localeName,
    );
  }

  String _SELECT95ANSWER() {
    return Intl.message(
      'SELECT_ANSWER',
      name: '_SELECT95ANSWER',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Save() {
    return Intl.message(
      'Save',
      name: '_Save',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Search() {
    return Intl.message(
      'Search',
      name: '_Search',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Security() {
    return Intl.message(
      'Security',
      name: '_Security',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Select() {
    return Intl.message(
      'Select',
      name: '_Select',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Select32answer32vote() {
    return Intl.message(
      'Select answer vote',
      name: '_Select32answer32vote',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Settings() {
    return Intl.message(
      'Settings',
      name: '_Settings',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Something32went32wrong4632Please32contact32with32the32system32admins46() {
    return Intl.message(
      'Something went wrong. Please contact with the system admins.',
      name: '_Something32went32wrong4632Please32contact32with32the32system32admins46',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Sorting() {
    return Intl.message(
      'Sorting',
      name: '_Sorting',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Status() {
    return Intl.message(
      'Status',
      name: '_Status',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Subcategories() {
    return Intl.message(
      'Subcategories',
      name: '_Subcategories',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Successful32operation() {
    return Intl.message(
      'Successful operation',
      name: '_Successful32operation',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _TOO95FEW95ITEMS(String feature, String size) {
    return Intl.message(
      'Too few items in relation.',
      name: '_TOO95FEW95ITEMS',
      args: [feature, size],
      desc: 'Relation (path expression is returned in location field) needs a collection, request contains too few items.',
      locale: localeName,
    );
  }

  String _TOO95FEW95PARAMETERS(String feature, String size) {
    return Intl.message(
      'Too few items in parameter.',
      name: '_TOO95FEW95PARAMETERS',
      args: [feature, size],
      desc: 'Parameter (name is returned in location field) needs a collection, request contains too few items.',
      locale: localeName,
    );
  }

  String _TOO95MANY95ITEMS(String feature, String size) {
    return Intl.message(
      'Too many items in relation.',
      name: '_TOO95MANY95ITEMS',
      args: [feature, size],
      desc: 'Relation (path expression is returned in location field) needs a collection, request container too many items.',
      locale: localeName,
    );
  }

  String _TOO95MANY95PARAMETERS(String feature, String size) {
    return Intl.message(
      'Too many items in parameter.',
      name: '_TOO95MANY95PARAMETERS',
      args: [feature, size],
      desc: 'Parameter (name is returned in location field) needs a collection, request container too many items.',
      locale: localeName,
    );
  }

  String _Title() {
    return Intl.message(
      'Title',
      name: '_Title',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _TransferObject32Form() {
    return Intl.message(
      'TransferObject Form',
      name: '_TransferObject32Form',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _TransferObject32Table() {
    return Intl.message(
      'TransferObject Table',
      name: '_TransferObject32Table',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _TransferObject32View() {
    return Intl.message(
      'TransferObject View',
      name: '_TransferObject32View',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Type() {
    return Intl.message(
      'Type',
      name: '_Type',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _UP() {
    return Intl.message(
      'UP',
      name: '_UP',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Unknown() {
    return Intl.message(
      'Unknown',
      name: '_Unknown',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Unselect() {
    return Intl.message(
      'Unselect',
      name: '_Unselect',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _UserName() {
    return Intl.message(
      'UserName',
      name: '_UserName',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Username() {
    return Intl.message(
      'Username',
      name: '_Username',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Users() {
    return Intl.message(
      'Users',
      name: '_Users',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VIDEO() {
    return Intl.message(
      'VIDEO',
      name: '_VIDEO',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View() {
    return Intl.message(
      'View',
      name: '_View',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Attachment() {
    return Intl.message(
      'View / Edit Attachment',
      name: '_View324732Edit32Attachment',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Category() {
    return Intl.message(
      'View / Edit Category',
      name: '_View324732Edit32Category',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Comment() {
    return Intl.message(
      'View / Edit Comment',
      name: '_View324732Edit32Comment',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Con() {
    return Intl.message(
      'View / Edit Con',
      name: '_View324732Edit32Con',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Debate() {
    return Intl.message(
      'View / Edit Debate',
      name: '_View324732Edit32Debate',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Issue() {
    return Intl.message(
      'View / Edit Issue',
      name: '_View324732Edit32Issue',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32Pro() {
    return Intl.message(
      'View / Edit Pro',
      name: '_View324732Edit32Pro',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _View324732Edit32User() {
    return Intl.message(
      'View / Edit User',
      name: '_View324732Edit32User',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Vote32close32at() {
    return Intl.message(
      'Vote close at',
      name: '_Vote32close32at',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Vote32description() {
    return Intl.message(
      'Vote description',
      name: '_Vote32description',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Vote32title() {
    return Intl.message(
      'Vote title',
      name: '_Vote32title',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VoteDefinition() {
    return Intl.message(
      'VoteDefinition',
      name: '_VoteDefinition',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VoteRating() {
    return Intl.message(
      'VoteRating',
      name: '_VoteRating',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VoteSelectAnswer() {
    return Intl.message(
      'VoteSelectAnswer',
      name: '_VoteSelectAnswer',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VoteType() {
    return Intl.message(
      'VoteType',
      name: '_VoteType',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VoteYesNo() {
    return Intl.message(
      'VoteYesNo',
      name: '_VoteYesNo',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _VoteYesNoAbstain() {
    return Intl.message(
      'VoteYesNoAbstain',
      name: '_VoteYesNoAbstain',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Votes() {
    return Intl.message(
      'Votes',
      name: '_Votes',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _YES() {
    return Intl.message(
      'YES',
      name: '_YES',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _YES95NO() {
    return Intl.message(
      'YES_NO',
      name: '_YES95NO',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _YES95NO95ABSTAIN() {
    return Intl.message(
      'YES_NO_ABSTAIN',
      name: '_YES95NO95ABSTAIN',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Yes() {
    return Intl.message(
      'Yes',
      name: '_Yes',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Yes324732No324732Abstain32vote() {
    return Intl.message(
      'Yes / No / Abstain vote',
      name: '_Yes324732No324732Abstain32vote',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _Yes324732No32vote() {
    return Intl.message(
      'Yes / No vote',
      name: '_Yes324732No32vote',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _actionButton() {
    return Intl.message(
      'actionButton',
      name: '_actionButton',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _actionGroup() {
    return Intl.message(
      'actionGroup',
      name: '_actionGroup',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _admin() {
    return Intl.message(
      'admin',
      name: '_admin',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _beginWith() {
    return Intl.message(
      'beginWith',
      name: '_beginWith',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _called32successfully() {
    return Intl.message(
      'called successfully',
      name: '_called32successfully',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _cancel() {
    return Intl.message(
      'cancel',
      name: '_cancel',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _contain() {
    return Intl.message(
      'contain',
      name: '_contain',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _down() {
    return Intl.message(
      'down',
      name: '_down',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _equal() {
    return Intl.message(
      'equal',
      name: '_equal',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _equals() {
    return Intl.message(
      'equals',
      name: '_equals',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _greaterOrEqual() {
    return Intl.message(
      'greaterOrEqual',
      name: '_greaterOrEqual',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _greaterThan() {
    return Intl.message(
      'greaterThan',
      name: '_greaterThan',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _lessOrEqual() {
    return Intl.message(
      'lessOrEqual',
      name: '_lessOrEqual',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _lessThan() {
    return Intl.message(
      'lessThan',
      name: '_lessThan',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _like() {
    return Intl.message(
      'like',
      name: '_like',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _matches() {
    return Intl.message(
      'matches',
      name: '_matches',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _notEqual() {
    return Intl.message(
      'notEqual',
      name: '_notEqual',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _notEquals() {
    return Intl.message(
      'notEquals',
      name: '_notEquals',
      args: [],
      desc: '',
      locale: localeName,
    );
  }

  String _up() {
    return Intl.message(
      'up',
      name: '_up',
      args: [],
      desc: '',
      locale: localeName,
    );
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'hu'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
