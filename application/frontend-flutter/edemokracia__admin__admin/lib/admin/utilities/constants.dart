//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/utilities/constants.dart'
// Template name: lib/utilities/constants.dart
// Application: edemokracia::admin::Admin

part of judo.utility;

const bool isNavigateToSettingsPage = bool.fromEnvironment("TO_SETTINGS_PAGE");
const bool isReleaseModeDebug = kReleaseMode == false;

const USE_REQUEST_BASE_URL_FOR_API = bool.fromEnvironment('USE_REQUEST_BASE_URL', defaultValue: false);
const USE_REQUEST_BASE_URL_FROM_SETTINGS = bool.fromEnvironment('USE_REQUEST_BASE_URL_FROM_SETTINGS', defaultValue: false);

const API_DEFAULT_BASE_URL = String.fromEnvironment('API_DEFAULT_BASE_URL', defaultValue: 'http://localhost:8181');
const API_RELATIVE_PATH = String.fromEnvironment('API_RELATIVE_PATH', defaultValue: '/api/edemokracia/admin/Admin');
const MODEL_RELATIVE_PATH = String.fromEnvironment('MODEL_RELATIVE_PATH', defaultValue: '/Edemokracia');

const Map<String, String> filterOperationIcons = {
  'equal': 'equal',
  'equals': 'equal',
  'notEqual': 'notEqualVariant',
  'notEquals': 'notEqualVariant',
  'lessThan': 'lessThan',
  'greaterThan': 'greaterThan',
  'lessOrEqual': 'lessThanOrEqual',
  'greaterOrEqual': 'greaterThanOrEqual',
  'matches': 'formatLetterMatches',
  'contain': 'contain',
  'beginWith': 'containStart',
};

const Map<String, String> defaultFilterOperation = {
  'boolean': 'equals',
  'numeric': 'equal',
  'string': 'contain',
  'enumeration': 'equals',
  'date': 'greaterThan',
  'time': 'greaterThan',
  'dateTime': 'greaterThan',
  'trinaryLogic': 'equals',
};

const Map<bool, String> trinaryLogicMap = {
  true: 'Yes',
  false: 'No',
  null: 'Unknown',
};
