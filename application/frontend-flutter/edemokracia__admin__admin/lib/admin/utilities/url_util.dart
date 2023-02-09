part of judo.utility;

class UrlUtil {
  static getApiUrl() async {
    // 1. Base URL is the generated default URL or defined in compile time
    //    with --dart-define=API_DEFAULT_BASE_URL=http://some.nice.url/
    var url = API_DEFAULT_BASE_URL + API_RELATIVE_PATH;
    print("Default API URL: " + url);

    // 2. When USE_REQUEST_BASE_URL_FOR_API is defined, uses the window location. It can be used
    //    with web target only.
    //    It can be defined in compile time
    //    with --dart-define=USE_REQUEST_BASE_URL_FOR_API=true
    if (UniversalPlatform.isWeb) {
      if (USE_REQUEST_BASE_URL_FOR_API) {
        var protocol = window.location.protocol ?? "http";
        var port = window.location.port;
        if (port == '') {
          port = null;
        }
        if (protocol == 'http' && port != null && port == '80') {
          port = null;
        }
        if (protocol == 'https' && port != null && port == '443') {
          port = null;
        }

        var host = window.location.host;
        if (host.contains(":")) {
          host = host.substring(0, host.lastIndexOf(":"));
        }

        url = protocol + "//" + host + (port != null ? (":" + port) : '') + API_RELATIVE_PATH;
        print("Use API URL from request URL: " + url);
      }
    }

    // 4. When USE_REQUEST_BASE_URL_FROM_SETTINGS is defined, uses the location from settings page.
    // When no value found the default or request URL is used.
    if (USE_REQUEST_BASE_URL_FROM_SETTINGS) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var urlPref = url;
      if (prefs.getString('apiUrl') == null) {
        print("Preference not found, save apiUrl: " + url);
        prefs.setString('apiUrl', urlPref);
      } else {
        url = prefs.getString('apiUrl');
        print("Preference URL found: " + url);
      }
    }
    return url;
  }

  static Future<String> getUrlForBinary() async {
    // 1. Base URL is the generated default URL or defined in compile time
    //    with --dart-define=API_DEFAULT_BASE_URL=http://some.nice.url/
    String url = API_DEFAULT_BASE_URL + MODEL_RELATIVE_PATH;
    print("Default Model URL: " + url);

    // 2. When USE_REQUEST_BASE_URL_FOR_API is defined, uses the window location. It can be used
    //    with web target only.
    //    It can be defined in compile time
    //    with --dart-define=USE_REQUEST_BASE_URL_FOR_API=true
    if (UniversalPlatform.isWeb) {
      if (USE_REQUEST_BASE_URL_FOR_API) {
        var protocol = window.location.protocol ?? "http";
        var port = window.location.port;
        if (port == '') {
          port = null;
        }
        if (protocol == 'http' && port != null && port == '80') {
          port = null;
        }
        if (protocol == 'https' && port != null && port == '443') {
          port = null;
        }

        var host = window.location.host;
        if (host.contains(":")) {
          host = host.substring(0, host.lastIndexOf(":"));
        }

        url = protocol + "//" + host + (port != null ? (":" + port) : '') + MODEL_RELATIVE_PATH;
        print("Use Model URL from request URL: " + url);
      }
    }

    // 4. When USE_REQUEST_BASE_URL_FROM_SETTINGS is defined, uses the location from settings page.
    // When no value found the default or request URL is used.
    if (USE_REQUEST_BASE_URL_FROM_SETTINGS) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var urlPref = url;
      if (prefs.getString('apiUrl') == null) {
        print("Preference not found, save apiUrl: " + url);
        prefs.setString('apiUrl', urlPref);
      } else {
        url = prefs.getString('apiUrl');
        print("Preference URL found: " + url);
      }
    }
    return url;
  }
}
