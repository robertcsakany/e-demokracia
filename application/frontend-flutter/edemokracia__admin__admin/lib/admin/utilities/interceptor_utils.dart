import 'package:dio/dio.dart';

void removeFieldsFromPayload(RequestOptions options, String uriEndsWith, List<String> fieldNames) {
  if (options.path.endsWith(uriEndsWith)) {
    (options.data as Map<String, dynamic>).removeWhere((key, value) => fieldNames.contains(key));
  }
}
