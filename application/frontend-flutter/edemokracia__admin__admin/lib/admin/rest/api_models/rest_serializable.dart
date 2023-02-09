part of admin.rest;

abstract class RestSerializable {
  dynamic toJson();
  void fromJson(dynamic json);
}
