part of admin.rest;

/// Meta
class JudoMetaData {
  List<JudoMetaDataSecurity> security = [];
  JudoMetaData();

  @override
  String toString() {
    return 'JudoMetaData[security=$security]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    {
      final _jsonData = json[r'security'];
      security = (_jsonData == null)
          ? null
          : ((dynamic data) {
              return JudoMetaDataSecurity.listFromJson(data);
            }(_jsonData));
    }
  }

  JudoMetaData.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (security != null) {
      json[r'security'] = security.map((v) => v.toJson()).toList();
    } else {
      json[r'security'] = null;
    }
    return json;
  }

  static List<JudoMetaData> listFromJson(List<dynamic> json) {
    return json == null ? <JudoMetaData>[] : json.map((value) => JudoMetaData.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is JudoMetaData && runtimeType == other.runtimeType) {
      return const ListEquality().equals(security, other.security);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (security != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(security);
    }

    return hashCode;
  }

  JudoMetaData copyWith({List<JudoMetaDataSecurity> security}) {
    JudoMetaData copy = JudoMetaData();
    security ??= this.security;

    copy.security = (security == null)
        ? null
        : ((data) {
            return (data as List<JudoMetaDataSecurity>).map((data) => data.copyWith()).toList();
          }(security));

    return copy;
  }
}

class JudoMetaDataSecurity {
  String tokenEndpoint;

  String clientId;

  String openIdConfigurationUrl;

  String authEndpoint;

  String logoutEndpoint;

  String name;

  String defaultScopes;

  String clientBaseUrl;

  String issuer;
  JudoMetaDataSecurity();

  @override
  String toString() {
    return 'JudoMetaDataSecurity[tokenEndpoint=$tokenEndpoint, clientId=$clientId, openIdConfigurationUrl=$openIdConfigurationUrl, authEndpoint=$authEndpoint, logoutEndpoint=$logoutEndpoint, name=$name, defaultScopes=$defaultScopes, clientBaseUrl=$clientBaseUrl, issuer=$issuer, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tokenEndpoint = (json[r'tokenEndpoint'] == null) ? null : (json[r'tokenEndpoint'] as String);
    clientId = (json[r'clientId'] == null) ? null : (json[r'clientId'] as String);
    openIdConfigurationUrl = (json[r'openIdConfigurationUrl'] == null) ? null : (json[r'openIdConfigurationUrl'] as String);
    authEndpoint = (json[r'authEndpoint'] == null) ? null : (json[r'authEndpoint'] as String);
    logoutEndpoint = (json[r'logoutEndpoint'] == null) ? null : (json[r'logoutEndpoint'] as String);
    name = (json[r'name'] == null) ? null : (json[r'name'] as String);
    defaultScopes = (json[r'defaultScopes'] == null) ? null : (json[r'defaultScopes'] as String);
    clientBaseUrl = (json[r'clientBaseUrl'] == null) ? null : (json[r'clientBaseUrl'] as String);
    issuer = (json[r'issuer'] == null) ? null : (json[r'issuer'] as String);
  }

  JudoMetaDataSecurity.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'tokenEndpoint'] = tokenEndpoint;
    json[r'clientId'] = clientId;
    json[r'openIdConfigurationUrl'] = openIdConfigurationUrl;
    json[r'authEndpoint'] = authEndpoint;
    json[r'logoutEndpoint'] = logoutEndpoint;
    json[r'name'] = name;
    json[r'defaultScopes'] = defaultScopes;
    json[r'clientBaseUrl'] = clientBaseUrl;
    json[r'issuer'] = issuer;
    return json;
  }

  static List<JudoMetaDataSecurity> listFromJson(List<dynamic> json) {
    return json == null ? <JudoMetaDataSecurity>[] : json.map((value) => JudoMetaDataSecurity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is JudoMetaDataSecurity && runtimeType == other.runtimeType) {
      return tokenEndpoint == other.tokenEndpoint &&
          clientId == other.clientId &&
          openIdConfigurationUrl == other.openIdConfigurationUrl &&
          authEndpoint == other.authEndpoint &&
          logoutEndpoint == other.logoutEndpoint &&
          name == other.name &&
          defaultScopes == other.defaultScopes &&
          clientBaseUrl == other.clientBaseUrl &&
          issuer == other.issuer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (tokenEndpoint != null) {
      hashCode = hashCode * 31 + tokenEndpoint.hashCode;
    }

    if (clientId != null) {
      hashCode = hashCode * 31 + clientId.hashCode;
    }

    if (openIdConfigurationUrl != null) {
      hashCode = hashCode * 31 + openIdConfigurationUrl.hashCode;
    }

    if (authEndpoint != null) {
      hashCode = hashCode * 31 + authEndpoint.hashCode;
    }

    if (logoutEndpoint != null) {
      hashCode = hashCode * 31 + logoutEndpoint.hashCode;
    }

    if (name != null) {
      hashCode = hashCode * 31 + name.hashCode;
    }

    if (defaultScopes != null) {
      hashCode = hashCode * 31 + defaultScopes.hashCode;
    }

    if (clientBaseUrl != null) {
      hashCode = hashCode * 31 + clientBaseUrl.hashCode;
    }

    if (issuer != null) {
      hashCode = hashCode * 31 + issuer.hashCode;
    }

    return hashCode;
  }

  JudoMetaDataSecurity copyWith({
    String tokenEndpoint,
    String clientId,
    String openIdConfigurationUrl,
    String authEndpoint,
    String logoutEndpoint,
    String name,
    String defaultScopes,
    String clientBaseUrl,
    String issuer,
  }) {
    JudoMetaDataSecurity copy = JudoMetaDataSecurity();
    tokenEndpoint ??= this.tokenEndpoint;
    clientId ??= this.clientId;
    openIdConfigurationUrl ??= this.openIdConfigurationUrl;
    authEndpoint ??= this.authEndpoint;
    logoutEndpoint ??= this.logoutEndpoint;
    name ??= this.name;
    defaultScopes ??= this.defaultScopes;
    clientBaseUrl ??= this.clientBaseUrl;
    issuer ??= this.issuer;

    copy.tokenEndpoint = tokenEndpoint;
    copy.clientId = clientId;
    copy.openIdConfigurationUrl = openIdConfigurationUrl;
    copy.authEndpoint = authEndpoint;
    copy.logoutEndpoint = logoutEndpoint;
    copy.name = name;
    copy.defaultScopes = defaultScopes;
    copy.clientBaseUrl = clientBaseUrl;
    copy.issuer = issuer;

    return copy;
  }
}

/// Query Customizer
class EdemokraciaExtensionQueryCustomizerCity extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCity seek;
  List<EdemokraciaExtensionOrderingTypeCity> orderBy = [];
  List<EdemokraciaExtensionFilterByString> name = [];

  EdemokraciaExtensionQueryCustomizerCity();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCity[mask=$mask,seek=$seek,orderBy=$orderBy,name=$name]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCity.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeCity.listFromJson(json[r'_orderBy']);
    name = json[r'name'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'name']);
  }

  EdemokraciaExtensionQueryCustomizerCity.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'name'] = name != null ? name.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCity> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionQueryCustomizerCity>[] : json.map((value) => EdemokraciaExtensionQueryCustomizerCity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCity && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) && mask == other.mask && seek == other.seek && const ListEquality().equals(name, other.name);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (name != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(name);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCity copyWith({
    String mask,
    EdemokraciaExtensionSeekCity seek,
    List<EdemokraciaExtensionOrderingTypeCity> orderBy,
    List<EdemokraciaExtensionFilterByString> name,
  }) {
    EdemokraciaExtensionQueryCustomizerCity copy = EdemokraciaExtensionQueryCustomizerCity();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    name ??= this.name;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeCity>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.name = (name == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(name));

    return copy;
  }
}

class EdemokraciaExtensionSeekCity extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCity();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCity[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCity.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCity> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekCity>[] : json.map((value) => EdemokraciaExtensionSeekCity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCity && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCity copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCity copy = EdemokraciaExtensionSeekCity();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeCity extends RestSerializable {
  EdemokraciaExtensionOrderingTypeCityAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeCity();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeCity[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeCityAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeCity.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeCity> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeCity>[] : json.map((value) => EdemokraciaExtensionOrderingTypeCity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeCity && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeCity copyWith({
    EdemokraciaExtensionOrderingTypeCityAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeCity copy = EdemokraciaExtensionOrderingTypeCity();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeCityAttributeEnum {
  name,
}

extension EdemokraciaExtensionOrderingTypeCityAttributeEnumExtension on EdemokraciaExtensionOrderingTypeCityAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeCityAttributeEnum> fromMap = {
    'name': EdemokraciaExtensionOrderingTypeCityAttributeEnum.name,
  };
  static Map<EdemokraciaExtensionOrderingTypeCityAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeCityAttributeEnum.name: 'name',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeCityAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeCityAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeCityAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeCityAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeCityAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerCloseDebateInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCloseDebateInput seek;

  EdemokraciaExtensionQueryCustomizerCloseDebateInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCloseDebateInput[mask=$mask,seek=$seek,,,,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCloseDebateInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerCloseDebateInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCloseDebateInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerCloseDebateInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerCloseDebateInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCloseDebateInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCloseDebateInput copyWith({
    String mask,
    EdemokraciaExtensionSeekCloseDebateInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerCloseDebateInput copy = EdemokraciaExtensionQueryCustomizerCloseDebateInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekCloseDebateInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCloseDebateInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCloseDebateInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCloseDebateInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCloseDebateInput> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekCloseDebateInput>[] : json.map((value) => EdemokraciaExtensionSeekCloseDebateInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCloseDebateInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCloseDebateInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCloseDebateInput copy = EdemokraciaExtensionSeekCloseDebateInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionQueryCustomizerComment extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekComment seek;
  List<EdemokraciaExtensionOrderingTypeComment> orderBy = [];
  List<EdemokraciaExtensionFilterByText> comment = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];

  EdemokraciaExtensionQueryCustomizerComment();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerComment[mask=$mask,seek=$seek,orderBy=$orderBy,comment=$comment,created=$created]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekComment.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeComment.listFromJson(json[r'_orderBy']);
    comment = json[r'comment'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'comment']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
  }

  EdemokraciaExtensionQueryCustomizerComment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'comment'] = comment != null ? comment.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerComment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerComment>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerComment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerComment && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(comment, other.comment) &&
          const ListEquality().equals(created, other.created);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (comment != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(comment);
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerComment copyWith({
    String mask,
    EdemokraciaExtensionSeekComment seek,
    List<EdemokraciaExtensionOrderingTypeComment> orderBy,
    List<EdemokraciaExtensionFilterByText> comment,
    List<EdemokraciaExtensionFilterByTimestamp> created,
  }) {
    EdemokraciaExtensionQueryCustomizerComment copy = EdemokraciaExtensionQueryCustomizerComment();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    comment ??= this.comment;
    created ??= this.created;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeComment>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.comment = (comment == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(comment));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));

    return copy;
  }
}

class EdemokraciaExtensionSeekComment extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekComment();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekComment[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekComment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekComment> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekComment>[] : json.map((value) => EdemokraciaExtensionSeekComment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekComment && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekComment copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekComment copy = EdemokraciaExtensionSeekComment();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeComment extends RestSerializable {
  EdemokraciaExtensionOrderingTypeCommentAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeComment();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeComment[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeCommentAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeComment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeComment> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeComment>[] : json.map((value) => EdemokraciaExtensionOrderingTypeComment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeComment && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeComment copyWith({
    EdemokraciaExtensionOrderingTypeCommentAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeComment copy = EdemokraciaExtensionOrderingTypeComment();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeCommentAttributeEnum {
  comment,
  created,
}

extension EdemokraciaExtensionOrderingTypeCommentAttributeEnumExtension on EdemokraciaExtensionOrderingTypeCommentAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeCommentAttributeEnum> fromMap = {
    'comment': EdemokraciaExtensionOrderingTypeCommentAttributeEnum.comment,
    'created': EdemokraciaExtensionOrderingTypeCommentAttributeEnum.created,
  };
  static Map<EdemokraciaExtensionOrderingTypeCommentAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeCommentAttributeEnum.comment: 'comment',
    EdemokraciaExtensionOrderingTypeCommentAttributeEnum.created: 'created',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeCommentAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeCommentAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeCommentAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeCommentAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeCommentAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerCon extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCon seek;
  List<EdemokraciaExtensionOrderingTypeCon> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerCon();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCon[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,description=$description,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCon.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeCon.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerCon.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCon> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionQueryCustomizerCon>[] : json.map((value) => EdemokraciaExtensionQueryCustomizerCon.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCon && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCon copyWith({
    String mask,
    EdemokraciaExtensionSeekCon seek,
    List<EdemokraciaExtensionOrderingTypeCon> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerCon copy = EdemokraciaExtensionQueryCustomizerCon();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    description ??= this.description;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeCon>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekCon extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCon();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCon[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCon.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCon> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekCon>[] : json.map((value) => EdemokraciaExtensionSeekCon.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCon && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCon copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCon copy = EdemokraciaExtensionSeekCon();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeCon extends RestSerializable {
  EdemokraciaExtensionOrderingTypeConAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeCon();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeCon[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeConAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeCon.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeCon> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeCon>[] : json.map((value) => EdemokraciaExtensionOrderingTypeCon.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeCon && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeCon copyWith({
    EdemokraciaExtensionOrderingTypeConAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeCon copy = EdemokraciaExtensionOrderingTypeCon();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeConAttributeEnum {
  created,
  description,
  title,
}

extension EdemokraciaExtensionOrderingTypeConAttributeEnumExtension on EdemokraciaExtensionOrderingTypeConAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeConAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionOrderingTypeConAttributeEnum.created,
    'description': EdemokraciaExtensionOrderingTypeConAttributeEnum.description,
    'title': EdemokraciaExtensionOrderingTypeConAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeConAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeConAttributeEnum.created: 'created',
    EdemokraciaExtensionOrderingTypeConAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeConAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeConAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeConAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeConAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeConAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeConAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerCounty extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCounty seek;
  List<EdemokraciaExtensionOrderingTypeCounty> orderBy = [];
  List<EdemokraciaExtensionFilterByString> name = [];

  EdemokraciaExtensionQueryCustomizerCounty();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCounty[mask=$mask,seek=$seek,orderBy=$orderBy,name=$name]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCounty.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeCounty.listFromJson(json[r'_orderBy']);
    name = json[r'name'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'name']);
  }

  EdemokraciaExtensionQueryCustomizerCounty.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'name'] = name != null ? name.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCounty> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerCounty>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerCounty.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCounty && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) && mask == other.mask && seek == other.seek && const ListEquality().equals(name, other.name);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (name != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(name);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCounty copyWith({
    String mask,
    EdemokraciaExtensionSeekCounty seek,
    List<EdemokraciaExtensionOrderingTypeCounty> orderBy,
    List<EdemokraciaExtensionFilterByString> name,
  }) {
    EdemokraciaExtensionQueryCustomizerCounty copy = EdemokraciaExtensionQueryCustomizerCounty();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    name ??= this.name;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeCounty>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.name = (name == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(name));

    return copy;
  }
}

class EdemokraciaExtensionSeekCounty extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCounty();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCounty[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCounty.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCounty> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekCounty>[] : json.map((value) => EdemokraciaExtensionSeekCounty.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCounty && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCounty copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCounty copy = EdemokraciaExtensionSeekCounty();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeCounty extends RestSerializable {
  EdemokraciaExtensionOrderingTypeCountyAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeCounty();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeCounty[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeCountyAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeCounty.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeCounty> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeCounty>[] : json.map((value) => EdemokraciaExtensionOrderingTypeCounty.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeCounty && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeCounty copyWith({
    EdemokraciaExtensionOrderingTypeCountyAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeCounty copy = EdemokraciaExtensionOrderingTypeCounty();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeCountyAttributeEnum {
  name,
}

extension EdemokraciaExtensionOrderingTypeCountyAttributeEnumExtension on EdemokraciaExtensionOrderingTypeCountyAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeCountyAttributeEnum> fromMap = {
    'name': EdemokraciaExtensionOrderingTypeCountyAttributeEnum.name,
  };
  static Map<EdemokraciaExtensionOrderingTypeCountyAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeCountyAttributeEnum.name: 'name',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeCountyAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeCountyAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeCountyAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeCountyAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeCountyAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerCreateArgumentInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCreateArgumentInput seek;

  EdemokraciaExtensionQueryCustomizerCreateArgumentInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCreateArgumentInput[mask=$mask,seek=$seek,,,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCreateArgumentInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerCreateArgumentInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCreateArgumentInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerCreateArgumentInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerCreateArgumentInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCreateArgumentInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCreateArgumentInput copyWith({
    String mask,
    EdemokraciaExtensionSeekCreateArgumentInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerCreateArgumentInput copy = EdemokraciaExtensionQueryCustomizerCreateArgumentInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekCreateArgumentInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCreateArgumentInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCreateArgumentInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCreateArgumentInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCreateArgumentInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionSeekCreateArgumentInput>[]
        : json.map((value) => EdemokraciaExtensionSeekCreateArgumentInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCreateArgumentInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCreateArgumentInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCreateArgumentInput copy = EdemokraciaExtensionSeekCreateArgumentInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionQueryCustomizerCreateCommentInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCreateCommentInput seek;

  EdemokraciaExtensionQueryCustomizerCreateCommentInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCreateCommentInput[mask=$mask,seek=$seek,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCreateCommentInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerCreateCommentInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCreateCommentInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerCreateCommentInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerCreateCommentInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCreateCommentInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCreateCommentInput copyWith({
    String mask,
    EdemokraciaExtensionSeekCreateCommentInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerCreateCommentInput copy = EdemokraciaExtensionQueryCustomizerCreateCommentInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekCreateCommentInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCreateCommentInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCreateCommentInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCreateCommentInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCreateCommentInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionSeekCreateCommentInput>[]
        : json.map((value) => EdemokraciaExtensionSeekCreateCommentInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCreateCommentInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCreateCommentInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCreateCommentInput copy = EdemokraciaExtensionSeekCreateCommentInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionQueryCustomizerCreateDebateInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekCreateDebateInput seek;

  EdemokraciaExtensionQueryCustomizerCreateDebateInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerCreateDebateInput[mask=$mask,seek=$seek,,,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekCreateDebateInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerCreateDebateInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerCreateDebateInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerCreateDebateInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerCreateDebateInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerCreateDebateInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerCreateDebateInput copyWith({
    String mask,
    EdemokraciaExtensionSeekCreateDebateInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerCreateDebateInput copy = EdemokraciaExtensionQueryCustomizerCreateDebateInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekCreateDebateInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekCreateDebateInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekCreateDebateInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekCreateDebateInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekCreateDebateInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionSeekCreateDebateInput>[]
        : json.map((value) => EdemokraciaExtensionSeekCreateDebateInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekCreateDebateInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekCreateDebateInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekCreateDebateInput copy = EdemokraciaExtensionSeekCreateDebateInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionQueryCustomizerDebate extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekDebate seek;
  List<EdemokraciaExtensionOrderingTypeDebate> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> closeAt = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByDebateStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerDebate[mask=$mask,seek=$seek,orderBy=$orderBy,closeAt=$closeAt,description=$description,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekDebate.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeDebate.listFromJson(json[r'_orderBy']);
    closeAt = json[r'closeAt'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'closeAt']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByDebateStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'closeAt'] = closeAt != null ? closeAt.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerDebate> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerDebate>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerDebate && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(closeAt, other.closeAt) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (closeAt != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(closeAt);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerDebate copyWith({
    String mask,
    EdemokraciaExtensionSeekDebate seek,
    List<EdemokraciaExtensionOrderingTypeDebate> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> closeAt,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByDebateStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerDebate copy = EdemokraciaExtensionQueryCustomizerDebate();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    closeAt ??= this.closeAt;
    description ??= this.description;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeDebate>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.closeAt = (closeAt == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(closeAt));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByDebateStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekDebate extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekDebate[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekDebate> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekDebate>[] : json.map((value) => EdemokraciaExtensionSeekDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekDebate && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekDebate copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekDebate copy = EdemokraciaExtensionSeekDebate();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeDebate extends RestSerializable {
  EdemokraciaExtensionOrderingTypeDebateAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeDebate[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeDebateAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeDebate> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeDebate>[] : json.map((value) => EdemokraciaExtensionOrderingTypeDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeDebate && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeDebate copyWith({
    EdemokraciaExtensionOrderingTypeDebateAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeDebate copy = EdemokraciaExtensionOrderingTypeDebate();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeDebateAttributeEnum {
  closeAt,
  description,
  status,
  title,
}

extension EdemokraciaExtensionOrderingTypeDebateAttributeEnumExtension on EdemokraciaExtensionOrderingTypeDebateAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeDebateAttributeEnum> fromMap = {
    'closeAt': EdemokraciaExtensionOrderingTypeDebateAttributeEnum.closeAt,
    'description': EdemokraciaExtensionOrderingTypeDebateAttributeEnum.description,
    'status': EdemokraciaExtensionOrderingTypeDebateAttributeEnum.status,
    'title': EdemokraciaExtensionOrderingTypeDebateAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeDebateAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeDebateAttributeEnum.closeAt: 'closeAt',
    EdemokraciaExtensionOrderingTypeDebateAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeDebateAttributeEnum.status: 'status',
    EdemokraciaExtensionOrderingTypeDebateAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeDebateAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeDebateAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeDebateAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeDebateAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeDebateAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerDistrict extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekDistrict seek;
  List<EdemokraciaExtensionOrderingTypeDistrict> orderBy = [];
  List<EdemokraciaExtensionFilterByString> name = [];

  EdemokraciaExtensionQueryCustomizerDistrict();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerDistrict[mask=$mask,seek=$seek,orderBy=$orderBy,name=$name]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekDistrict.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeDistrict.listFromJson(json[r'_orderBy']);
    name = json[r'name'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'name']);
  }

  EdemokraciaExtensionQueryCustomizerDistrict.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'name'] = name != null ? name.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerDistrict> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerDistrict>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerDistrict.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerDistrict && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) && mask == other.mask && seek == other.seek && const ListEquality().equals(name, other.name);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (name != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(name);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerDistrict copyWith({
    String mask,
    EdemokraciaExtensionSeekDistrict seek,
    List<EdemokraciaExtensionOrderingTypeDistrict> orderBy,
    List<EdemokraciaExtensionFilterByString> name,
  }) {
    EdemokraciaExtensionQueryCustomizerDistrict copy = EdemokraciaExtensionQueryCustomizerDistrict();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    name ??= this.name;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeDistrict>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.name = (name == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(name));

    return copy;
  }
}

class EdemokraciaExtensionSeekDistrict extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekDistrict();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekDistrict[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekDistrict.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekDistrict> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekDistrict>[] : json.map((value) => EdemokraciaExtensionSeekDistrict.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekDistrict && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekDistrict copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekDistrict copy = EdemokraciaExtensionSeekDistrict();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeDistrict extends RestSerializable {
  EdemokraciaExtensionOrderingTypeDistrictAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeDistrict();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeDistrict[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeDistrictAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeDistrict.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeDistrict> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeDistrict>[] : json.map((value) => EdemokraciaExtensionOrderingTypeDistrict.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeDistrict && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeDistrict copyWith({
    EdemokraciaExtensionOrderingTypeDistrictAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeDistrict copy = EdemokraciaExtensionOrderingTypeDistrict();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeDistrictAttributeEnum {
  name,
}

extension EdemokraciaExtensionOrderingTypeDistrictAttributeEnumExtension on EdemokraciaExtensionOrderingTypeDistrictAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeDistrictAttributeEnum> fromMap = {
    'name': EdemokraciaExtensionOrderingTypeDistrictAttributeEnum.name,
  };
  static Map<EdemokraciaExtensionOrderingTypeDistrictAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeDistrictAttributeEnum.name: 'name',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeDistrictAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeDistrictAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeDistrictAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeDistrictAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeDistrictAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerIssue extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekIssue seek;
  List<EdemokraciaExtensionOrderingTypeIssue> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByIssueStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerIssue();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerIssue[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,description=$description,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekIssue.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeIssue.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByIssueStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerIssue.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerIssue> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionQueryCustomizerIssue>[] : json.map((value) => EdemokraciaExtensionQueryCustomizerIssue.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerIssue && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerIssue copyWith({
    String mask,
    EdemokraciaExtensionSeekIssue seek,
    List<EdemokraciaExtensionOrderingTypeIssue> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByIssueStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerIssue copy = EdemokraciaExtensionQueryCustomizerIssue();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    description ??= this.description;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeIssue>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByIssueStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekIssue extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekIssue();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekIssue[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekIssue.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekIssue> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekIssue>[] : json.map((value) => EdemokraciaExtensionSeekIssue.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekIssue && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekIssue copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekIssue copy = EdemokraciaExtensionSeekIssue();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeIssue extends RestSerializable {
  EdemokraciaExtensionOrderingTypeIssueAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeIssue();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeIssue[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeIssueAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeIssue.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeIssue> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeIssue>[] : json.map((value) => EdemokraciaExtensionOrderingTypeIssue.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeIssue && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeIssue copyWith({
    EdemokraciaExtensionOrderingTypeIssueAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeIssue copy = EdemokraciaExtensionOrderingTypeIssue();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeIssueAttributeEnum {
  created,
  description,
  status,
  title,
}

extension EdemokraciaExtensionOrderingTypeIssueAttributeEnumExtension on EdemokraciaExtensionOrderingTypeIssueAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeIssueAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionOrderingTypeIssueAttributeEnum.created,
    'description': EdemokraciaExtensionOrderingTypeIssueAttributeEnum.description,
    'status': EdemokraciaExtensionOrderingTypeIssueAttributeEnum.status,
    'title': EdemokraciaExtensionOrderingTypeIssueAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeIssueAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeIssueAttributeEnum.created: 'created',
    EdemokraciaExtensionOrderingTypeIssueAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeIssueAttributeEnum.status: 'status',
    EdemokraciaExtensionOrderingTypeIssueAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeIssueAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeIssueAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeIssueAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeIssueAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeIssueAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerIssueAttachment extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekIssueAttachment seek;
  List<EdemokraciaExtensionOrderingTypeIssueAttachment> orderBy = [];
  List<EdemokraciaExtensionFilterByURL> link = [];
  List<EdemokraciaExtensionFilterByAttachmentType> type = [];

  EdemokraciaExtensionQueryCustomizerIssueAttachment();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerIssueAttachment[mask=$mask,seek=$seek,orderBy=$orderBy,,link=$link,type=$type]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekIssueAttachment.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeIssueAttachment.listFromJson(json[r'_orderBy']);
    link = json[r'link'] == null ? null : EdemokraciaExtensionFilterByURL.listFromJson(json[r'link']);
    type = json[r'type'] == null ? null : EdemokraciaExtensionFilterByAttachmentType.listFromJson(json[r'type']);
  }

  EdemokraciaExtensionQueryCustomizerIssueAttachment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'link'] = link != null ? link.map((v) => v.toJson()).toList() : null;
    json[r'type'] = type != null ? type.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerIssueAttachment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerIssueAttachment>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerIssueAttachment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerIssueAttachment && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(link, other.link) &&
          const ListEquality().equals(type, other.type);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (link != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(link);
    }
    if (type != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(type);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerIssueAttachment copyWith({
    String mask,
    EdemokraciaExtensionSeekIssueAttachment seek,
    List<EdemokraciaExtensionOrderingTypeIssueAttachment> orderBy,
    List<EdemokraciaExtensionFilterByURL> link,
    List<EdemokraciaExtensionFilterByAttachmentType> type,
  }) {
    EdemokraciaExtensionQueryCustomizerIssueAttachment copy = EdemokraciaExtensionQueryCustomizerIssueAttachment();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    link ??= this.link;
    type ??= this.type;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeIssueAttachment>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.link = (link == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByURL>).map((data) => data.copyWith()).toList();
          }(link));
    copy.type = (type == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByAttachmentType>).map((data) => data.copyWith()).toList();
          }(type));

    return copy;
  }
}

class EdemokraciaExtensionSeekIssueAttachment extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekIssueAttachment();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekIssueAttachment[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekIssueAttachment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekIssueAttachment> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekIssueAttachment>[] : json.map((value) => EdemokraciaExtensionSeekIssueAttachment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekIssueAttachment && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekIssueAttachment copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekIssueAttachment copy = EdemokraciaExtensionSeekIssueAttachment();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeIssueAttachment extends RestSerializable {
  EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeIssueAttachment();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeIssueAttachment[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeIssueAttachment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeIssueAttachment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionOrderingTypeIssueAttachment>[]
        : json.map((value) => EdemokraciaExtensionOrderingTypeIssueAttachment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeIssueAttachment && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeIssueAttachment copyWith({
    EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeIssueAttachment copy = EdemokraciaExtensionOrderingTypeIssueAttachment();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum {
  file,
  link,
  type,
}

extension EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnumExtension on EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum> fromMap = {
    'file': EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.file,
    'link': EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.link,
    'type': EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.type,
  };
  static Map<EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.file: 'file',
    EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.link: 'link',
    EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum.type: 'type',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeIssueAttachmentAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionQueryCustomizerIssueCategory extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekIssueCategory seek;
  List<EdemokraciaExtensionOrderingTypeIssueCategory> orderBy = [];
  List<EdemokraciaExtensionFilterByString> description = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerIssueCategory();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerIssueCategory[mask=$mask,seek=$seek,orderBy=$orderBy,description=$description,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekIssueCategory.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeIssueCategory.listFromJson(json[r'_orderBy']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'description']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerIssueCategory.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerIssueCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerIssueCategory>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerIssueCategory.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerIssueCategory && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerIssueCategory copyWith({
    String mask,
    EdemokraciaExtensionSeekIssueCategory seek,
    List<EdemokraciaExtensionOrderingTypeIssueCategory> orderBy,
    List<EdemokraciaExtensionFilterByString> description,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerIssueCategory copy = EdemokraciaExtensionQueryCustomizerIssueCategory();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    description ??= this.description;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeIssueCategory>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(description));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekIssueCategory extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekIssueCategory();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekIssueCategory[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekIssueCategory.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekIssueCategory> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekIssueCategory>[] : json.map((value) => EdemokraciaExtensionSeekIssueCategory.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekIssueCategory && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekIssueCategory copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekIssueCategory copy = EdemokraciaExtensionSeekIssueCategory();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeIssueCategory extends RestSerializable {
  EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeIssueCategory();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeIssueCategory[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeIssueCategory.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeIssueCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionOrderingTypeIssueCategory>[]
        : json.map((value) => EdemokraciaExtensionOrderingTypeIssueCategory.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeIssueCategory && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeIssueCategory copyWith({
    EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeIssueCategory copy = EdemokraciaExtensionOrderingTypeIssueCategory();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum {
  description,
  title,
}

extension EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnumExtension on EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum> fromMap = {
    'description': EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum.description,
    'title': EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeIssueCategoryAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerPro extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekPro seek;
  List<EdemokraciaExtensionOrderingTypePro> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerPro();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerPro[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,description=$description,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekPro.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypePro.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerPro.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerPro> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionQueryCustomizerPro>[] : json.map((value) => EdemokraciaExtensionQueryCustomizerPro.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerPro && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerPro copyWith({
    String mask,
    EdemokraciaExtensionSeekPro seek,
    List<EdemokraciaExtensionOrderingTypePro> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerPro copy = EdemokraciaExtensionQueryCustomizerPro();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    description ??= this.description;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypePro>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekPro extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekPro();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekPro[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekPro.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekPro> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekPro>[] : json.map((value) => EdemokraciaExtensionSeekPro.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekPro && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekPro copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekPro copy = EdemokraciaExtensionSeekPro();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypePro extends RestSerializable {
  EdemokraciaExtensionOrderingTypeProAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypePro();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypePro[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeProAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypePro.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypePro> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypePro>[] : json.map((value) => EdemokraciaExtensionOrderingTypePro.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypePro && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypePro copyWith({
    EdemokraciaExtensionOrderingTypeProAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypePro copy = EdemokraciaExtensionOrderingTypePro();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeProAttributeEnum {
  created,
  description,
  title,
}

extension EdemokraciaExtensionOrderingTypeProAttributeEnumExtension on EdemokraciaExtensionOrderingTypeProAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeProAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionOrderingTypeProAttributeEnum.created,
    'description': EdemokraciaExtensionOrderingTypeProAttributeEnum.description,
    'title': EdemokraciaExtensionOrderingTypeProAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeProAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeProAttributeEnum.created: 'created',
    EdemokraciaExtensionOrderingTypeProAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeProAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeProAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeProAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeProAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeProAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeProAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerRatingVoteInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekRatingVoteInput seek;

  EdemokraciaExtensionQueryCustomizerRatingVoteInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerRatingVoteInput[mask=$mask,seek=$seek,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekRatingVoteInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerRatingVoteInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerRatingVoteInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerRatingVoteInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerRatingVoteInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerRatingVoteInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerRatingVoteInput copyWith({
    String mask,
    EdemokraciaExtensionSeekRatingVoteInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerRatingVoteInput copy = EdemokraciaExtensionQueryCustomizerRatingVoteInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekRatingVoteInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekRatingVoteInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekRatingVoteInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekRatingVoteInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekRatingVoteInput> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekRatingVoteInput>[] : json.map((value) => EdemokraciaExtensionSeekRatingVoteInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekRatingVoteInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekRatingVoteInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekRatingVoteInput copy = EdemokraciaExtensionSeekRatingVoteInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekSelectAnswerVoteSelection seek;
  List<EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection> orderBy = [];
  List<EdemokraciaExtensionFilterByString> description = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection[mask=$mask,seek=$seek,orderBy=$orderBy,description=$description,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekSelectAnswerVoteSelection.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection.listFromJson(json[r'_orderBy']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'description']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection copyWith({
    String mask,
    EdemokraciaExtensionSeekSelectAnswerVoteSelection seek,
    List<EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection> orderBy,
    List<EdemokraciaExtensionFilterByString> description,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection copy = EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    description ??= this.description;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(description));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekSelectAnswerVoteSelection extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekSelectAnswerVoteSelection();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekSelectAnswerVoteSelection[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekSelectAnswerVoteSelection.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekSelectAnswerVoteSelection> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionSeekSelectAnswerVoteSelection>[]
        : json.map((value) => EdemokraciaExtensionSeekSelectAnswerVoteSelection.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekSelectAnswerVoteSelection && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekSelectAnswerVoteSelection copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekSelectAnswerVoteSelection copy = EdemokraciaExtensionSeekSelectAnswerVoteSelection();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection extends RestSerializable {
  EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute =
        (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection>[]
        : json.map((value) => EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection copyWith({
    EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection copy = EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelection();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum {
  description,
  title,
}

extension EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnumExtension
    on EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum> fromMap = {
    'description': EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum.description,
    'title': EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum copyWith(
          EdemokraciaExtensionOrderingTypeSelectAnswerVoteSelectionAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionQueryCustomizerSimpleVote extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekSimpleVote seek;
  List<EdemokraciaExtensionOrderingTypeSimpleVote> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterBySimpleVoteType> type = [];

  EdemokraciaExtensionQueryCustomizerSimpleVote();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerSimpleVote[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,type=$type]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekSimpleVote.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeSimpleVote.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    type = json[r'type'] == null ? null : EdemokraciaExtensionFilterBySimpleVoteType.listFromJson(json[r'type']);
  }

  EdemokraciaExtensionQueryCustomizerSimpleVote.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'type'] = type != null ? type.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerSimpleVote> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerSimpleVote>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerSimpleVote.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerSimpleVote && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(type, other.type);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (type != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(type);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerSimpleVote copyWith({
    String mask,
    EdemokraciaExtensionSeekSimpleVote seek,
    List<EdemokraciaExtensionOrderingTypeSimpleVote> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterBySimpleVoteType> type,
  }) {
    EdemokraciaExtensionQueryCustomizerSimpleVote copy = EdemokraciaExtensionQueryCustomizerSimpleVote();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    type ??= this.type;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeSimpleVote>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.type = (type == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterBySimpleVoteType>).map((data) => data.copyWith()).toList();
          }(type));

    return copy;
  }
}

class EdemokraciaExtensionSeekSimpleVote extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekSimpleVote();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekSimpleVote[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekSimpleVote.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekSimpleVote> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekSimpleVote>[] : json.map((value) => EdemokraciaExtensionSeekSimpleVote.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekSimpleVote && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekSimpleVote copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekSimpleVote copy = EdemokraciaExtensionSeekSimpleVote();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeSimpleVote extends RestSerializable {
  EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeSimpleVote();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeSimpleVote[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeSimpleVote.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeSimpleVote> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionOrderingTypeSimpleVote>[]
        : json.map((value) => EdemokraciaExtensionOrderingTypeSimpleVote.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeSimpleVote && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeSimpleVote copyWith({
    EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeSimpleVote copy = EdemokraciaExtensionOrderingTypeSimpleVote();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum {
  created,
  type,
}

extension EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnumExtension on EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum.created,
    'type': EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum.type,
  };
  static Map<EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum.created: 'created',
    EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum.type: 'type',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeSimpleVoteAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerUser extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekUser seek;
  List<EdemokraciaExtensionOrderingTypeUser> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByEmail> email = [];
  List<EdemokraciaExtensionFilterByString> firstName = [];
  List<EdemokraciaExtensionFilterByBoolean> isAdmin = [];
  List<EdemokraciaExtensionFilterByString> lastName = [];
  List<EdemokraciaExtensionFilterByPhone> phone = [];
  List<EdemokraciaExtensionFilterByString> userName = [];

  EdemokraciaExtensionQueryCustomizerUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerUser[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,email=$email,firstName=$firstName,isAdmin=$isAdmin,lastName=$lastName,phone=$phone,userName=$userName]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekUser.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeUser.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    email = json[r'email'] == null ? null : EdemokraciaExtensionFilterByEmail.listFromJson(json[r'email']);
    firstName = json[r'firstName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'firstName']);
    isAdmin = json[r'isAdmin'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isAdmin']);
    lastName = json[r'lastName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'lastName']);
    phone = json[r'phone'] == null ? null : EdemokraciaExtensionFilterByPhone.listFromJson(json[r'phone']);
    userName = json[r'userName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'userName']);
  }

  EdemokraciaExtensionQueryCustomizerUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'email'] = email != null ? email.map((v) => v.toJson()).toList() : null;
    json[r'firstName'] = firstName != null ? firstName.map((v) => v.toJson()).toList() : null;
    json[r'isAdmin'] = isAdmin != null ? isAdmin.map((v) => v.toJson()).toList() : null;
    json[r'lastName'] = lastName != null ? lastName.map((v) => v.toJson()).toList() : null;
    json[r'phone'] = phone != null ? phone.map((v) => v.toJson()).toList() : null;
    json[r'userName'] = userName != null ? userName.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerUser> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionQueryCustomizerUser>[] : json.map((value) => EdemokraciaExtensionQueryCustomizerUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerUser && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(email, other.email) &&
          const ListEquality().equals(firstName, other.firstName) &&
          const ListEquality().equals(isAdmin, other.isAdmin) &&
          const ListEquality().equals(lastName, other.lastName) &&
          const ListEquality().equals(phone, other.phone) &&
          const ListEquality().equals(userName, other.userName);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (email != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(email);
    }
    if (firstName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(firstName);
    }
    if (isAdmin != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isAdmin);
    }
    if (lastName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(lastName);
    }
    if (phone != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(phone);
    }
    if (userName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(userName);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerUser copyWith({
    String mask,
    EdemokraciaExtensionSeekUser seek,
    List<EdemokraciaExtensionOrderingTypeUser> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByEmail> email,
    List<EdemokraciaExtensionFilterByString> firstName,
    List<EdemokraciaExtensionFilterByBoolean> isAdmin,
    List<EdemokraciaExtensionFilterByString> lastName,
    List<EdemokraciaExtensionFilterByPhone> phone,
    List<EdemokraciaExtensionFilterByString> userName,
  }) {
    EdemokraciaExtensionQueryCustomizerUser copy = EdemokraciaExtensionQueryCustomizerUser();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    email ??= this.email;
    firstName ??= this.firstName;
    isAdmin ??= this.isAdmin;
    lastName ??= this.lastName;
    phone ??= this.phone;
    userName ??= this.userName;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeUser>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.email = (email == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByEmail>).map((data) => data.copyWith()).toList();
          }(email));
    copy.firstName = (firstName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(firstName));
    copy.isAdmin = (isAdmin == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isAdmin));
    copy.lastName = (lastName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(lastName));
    copy.phone = (phone == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByPhone>).map((data) => data.copyWith()).toList();
          }(phone));
    copy.userName = (userName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(userName));

    return copy;
  }
}

class EdemokraciaExtensionSeekUser extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekUser[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekUser> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekUser>[] : json.map((value) => EdemokraciaExtensionSeekUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekUser && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekUser copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekUser copy = EdemokraciaExtensionSeekUser();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeUser extends RestSerializable {
  EdemokraciaExtensionOrderingTypeUserAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeUser[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeUserAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeUser> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionOrderingTypeUser>[] : json.map((value) => EdemokraciaExtensionOrderingTypeUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeUser && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeUser copyWith({
    EdemokraciaExtensionOrderingTypeUserAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeUser copy = EdemokraciaExtensionOrderingTypeUser();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeUserAttributeEnum {
  created,
  email,
  firstName,
  isAdmin,
  lastName,
  phone,
  userName,
}

extension EdemokraciaExtensionOrderingTypeUserAttributeEnumExtension on EdemokraciaExtensionOrderingTypeUserAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeUserAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionOrderingTypeUserAttributeEnum.created,
    'email': EdemokraciaExtensionOrderingTypeUserAttributeEnum.email,
    'firstName': EdemokraciaExtensionOrderingTypeUserAttributeEnum.firstName,
    'isAdmin': EdemokraciaExtensionOrderingTypeUserAttributeEnum.isAdmin,
    'lastName': EdemokraciaExtensionOrderingTypeUserAttributeEnum.lastName,
    'phone': EdemokraciaExtensionOrderingTypeUserAttributeEnum.phone,
    'userName': EdemokraciaExtensionOrderingTypeUserAttributeEnum.userName,
  };
  static Map<EdemokraciaExtensionOrderingTypeUserAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.created: 'created',
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.email: 'email',
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.firstName: 'firstName',
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.isAdmin: 'isAdmin',
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.lastName: 'lastName',
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.phone: 'phone',
    EdemokraciaExtensionOrderingTypeUserAttributeEnum.userName: 'userName',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeUserAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeUserAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeUserAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeUserAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeUserAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerVoteDefinition extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekVoteDefinition seek;
  List<EdemokraciaExtensionOrderingTypeVoteDefinition> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> closeAt = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByBoolean> isRatingType = [];
  List<EdemokraciaExtensionFilterByBoolean> isSelectAnswerType = [];
  List<EdemokraciaExtensionFilterByBoolean> isYesNoAbstainType = [];
  List<EdemokraciaExtensionFilterByBoolean> isYesNoType = [];
  List<EdemokraciaExtensionFilterByVoteStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionQueryCustomizerVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerVoteDefinition[mask=$mask,seek=$seek,orderBy=$orderBy,closeAt=$closeAt,created=$created,description=$description,isRatingType=$isRatingType,isSelectAnswerType=$isSelectAnswerType,isYesNoAbstainType=$isYesNoAbstainType,isYesNoType=$isYesNoType,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekVoteDefinition.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeVoteDefinition.listFromJson(json[r'_orderBy']);
    closeAt = json[r'closeAt'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'closeAt']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    isRatingType = json[r'isRatingType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isRatingType']);
    isSelectAnswerType = json[r'isSelectAnswerType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isSelectAnswerType']);
    isYesNoAbstainType = json[r'isYesNoAbstainType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isYesNoAbstainType']);
    isYesNoType = json[r'isYesNoType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isYesNoType']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByVoteStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionQueryCustomizerVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'closeAt'] = closeAt != null ? closeAt.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'isRatingType'] = isRatingType != null ? isRatingType.map((v) => v.toJson()).toList() : null;
    json[r'isSelectAnswerType'] = isSelectAnswerType != null ? isSelectAnswerType.map((v) => v.toJson()).toList() : null;
    json[r'isYesNoAbstainType'] = isYesNoAbstainType != null ? isYesNoAbstainType.map((v) => v.toJson()).toList() : null;
    json[r'isYesNoType'] = isYesNoType != null ? isYesNoType.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerVoteDefinition>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerVoteDefinition && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(closeAt, other.closeAt) &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(isRatingType, other.isRatingType) &&
          const ListEquality().equals(isSelectAnswerType, other.isSelectAnswerType) &&
          const ListEquality().equals(isYesNoAbstainType, other.isYesNoAbstainType) &&
          const ListEquality().equals(isYesNoType, other.isYesNoType) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (closeAt != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(closeAt);
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (isRatingType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isRatingType);
    }
    if (isSelectAnswerType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isSelectAnswerType);
    }
    if (isYesNoAbstainType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isYesNoAbstainType);
    }
    if (isYesNoType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isYesNoType);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerVoteDefinition copyWith({
    String mask,
    EdemokraciaExtensionSeekVoteDefinition seek,
    List<EdemokraciaExtensionOrderingTypeVoteDefinition> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> closeAt,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByBoolean> isRatingType,
    List<EdemokraciaExtensionFilterByBoolean> isSelectAnswerType,
    List<EdemokraciaExtensionFilterByBoolean> isYesNoAbstainType,
    List<EdemokraciaExtensionFilterByBoolean> isYesNoType,
    List<EdemokraciaExtensionFilterByVoteStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionQueryCustomizerVoteDefinition copy = EdemokraciaExtensionQueryCustomizerVoteDefinition();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    closeAt ??= this.closeAt;
    created ??= this.created;
    description ??= this.description;
    isRatingType ??= this.isRatingType;
    isSelectAnswerType ??= this.isSelectAnswerType;
    isYesNoAbstainType ??= this.isYesNoAbstainType;
    isYesNoType ??= this.isYesNoType;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeVoteDefinition>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.closeAt = (closeAt == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(closeAt));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.isRatingType = (isRatingType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isRatingType));
    copy.isSelectAnswerType = (isSelectAnswerType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isSelectAnswerType));
    copy.isYesNoAbstainType = (isYesNoAbstainType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isYesNoAbstainType));
    copy.isYesNoType = (isYesNoType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isYesNoType));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByVoteStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionSeekVoteDefinition extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekVoteDefinition[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekVoteDefinition>[] : json.map((value) => EdemokraciaExtensionSeekVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekVoteDefinition && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekVoteDefinition copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekVoteDefinition copy = EdemokraciaExtensionSeekVoteDefinition();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeVoteDefinition extends RestSerializable {
  EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeVoteDefinition[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionOrderingTypeVoteDefinition>[]
        : json.map((value) => EdemokraciaExtensionOrderingTypeVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeVoteDefinition && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeVoteDefinition copyWith({
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeVoteDefinition copy = EdemokraciaExtensionOrderingTypeVoteDefinition();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum {
  closeAt,
  created,
  description,
  isRatingType,
  isSelectAnswerType,
  isYesNoAbstainType,
  isYesNoType,
  status,
  title,
}

extension EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnumExtension on EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum> fromMap = {
    'closeAt': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.closeAt,
    'created': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.created,
    'description': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.description,
    'isRatingType': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isRatingType,
    'isSelectAnswerType': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isSelectAnswerType,
    'isYesNoAbstainType': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isYesNoAbstainType,
    'isYesNoType': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isYesNoType,
    'status': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.status,
    'title': EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.closeAt: 'closeAt',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.created: 'created',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.description: 'description',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isRatingType: 'isRatingType',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isSelectAnswerType: 'isSelectAnswerType',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isYesNoAbstainType: 'isYesNoAbstainType',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.isYesNoType: 'isYesNoType',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.status: 'status',
    EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeVoteDefinitionAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerVoteEntry extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekVoteEntry seek;
  List<EdemokraciaExtensionOrderingTypeVoteEntry> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];

  EdemokraciaExtensionQueryCustomizerVoteEntry();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerVoteEntry[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekVoteEntry.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionOrderingTypeVoteEntry.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
  }

  EdemokraciaExtensionQueryCustomizerVoteEntry.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerVoteEntry> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerVoteEntry>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerVoteEntry.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerVoteEntry && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerVoteEntry copyWith({
    String mask,
    EdemokraciaExtensionSeekVoteEntry seek,
    List<EdemokraciaExtensionOrderingTypeVoteEntry> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
  }) {
    EdemokraciaExtensionQueryCustomizerVoteEntry copy = EdemokraciaExtensionQueryCustomizerVoteEntry();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionOrderingTypeVoteEntry>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));

    return copy;
  }
}

class EdemokraciaExtensionSeekVoteEntry extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekVoteEntry();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekVoteEntry[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekVoteEntry.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekVoteEntry> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekVoteEntry>[] : json.map((value) => EdemokraciaExtensionSeekVoteEntry.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekVoteEntry && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekVoteEntry copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekVoteEntry copy = EdemokraciaExtensionSeekVoteEntry();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionOrderingTypeVoteEntry extends RestSerializable {
  EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionOrderingTypeVoteEntry();

  @override
  String toString() {
    return 'EdemokraciaExtensionOrderingTypeVoteEntry[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionOrderingTypeVoteEntry.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionOrderingTypeVoteEntry> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionOrderingTypeVoteEntry>[]
        : json.map((value) => EdemokraciaExtensionOrderingTypeVoteEntry.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionOrderingTypeVoteEntry && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionOrderingTypeVoteEntry copyWith({
    EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionOrderingTypeVoteEntry copy = EdemokraciaExtensionOrderingTypeVoteEntry();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum {
  created,
}

extension EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnumExtension on EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum {
  static Map<String, EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum.created,
  };
  static Map<EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum, String> toMap = {
    EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum.created: 'created',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum copyWith(EdemokraciaExtensionOrderingTypeVoteEntryAttributeEnum instance) => instance;
}

class EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekYesNoAbstainVoteInput seek;

  EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput[mask=$mask,seek=$seek,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekYesNoAbstainVoteInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput copyWith({
    String mask,
    EdemokraciaExtensionSeekYesNoAbstainVoteInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput copy = EdemokraciaExtensionQueryCustomizerYesNoAbstainVoteInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekYesNoAbstainVoteInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekYesNoAbstainVoteInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekYesNoAbstainVoteInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekYesNoAbstainVoteInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekYesNoAbstainVoteInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionSeekYesNoAbstainVoteInput>[]
        : json.map((value) => EdemokraciaExtensionSeekYesNoAbstainVoteInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekYesNoAbstainVoteInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekYesNoAbstainVoteInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekYesNoAbstainVoteInput copy = EdemokraciaExtensionSeekYesNoAbstainVoteInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionQueryCustomizerYesNoVoteInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionSeekYesNoVoteInput seek;

  EdemokraciaExtensionQueryCustomizerYesNoVoteInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionQueryCustomizerYesNoVoteInput[mask=$mask,seek=$seek,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionSeekYesNoVoteInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionQueryCustomizerYesNoVoteInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionQueryCustomizerYesNoVoteInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionQueryCustomizerYesNoVoteInput>[]
        : json.map((value) => EdemokraciaExtensionQueryCustomizerYesNoVoteInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionQueryCustomizerYesNoVoteInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionQueryCustomizerYesNoVoteInput copyWith({
    String mask,
    EdemokraciaExtensionSeekYesNoVoteInput seek,
  }) {
    EdemokraciaExtensionQueryCustomizerYesNoVoteInput copy = EdemokraciaExtensionQueryCustomizerYesNoVoteInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionSeekYesNoVoteInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionSeekYesNoVoteInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionSeekYesNoVoteInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionSeekYesNoVoteInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionSeekYesNoVoteInput> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionSeekYesNoVoteInput>[] : json.map((value) => EdemokraciaExtensionSeekYesNoVoteInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionSeekYesNoVoteInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionSeekYesNoVoteInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionSeekYesNoVoteInput copy = EdemokraciaExtensionSeekYesNoVoteInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekAdminPrincipalUser seek;
  List<EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByEmail> email = [];
  List<EdemokraciaExtensionFilterByString> firstName = [];
  List<EdemokraciaExtensionFilterByBoolean> isAdmin = [];
  List<EdemokraciaExtensionFilterByString> lastName = [];
  List<EdemokraciaExtensionFilterByPhone> phone = [];
  List<EdemokraciaExtensionFilterByString> userName = [];

  EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,email=$email,firstName=$firstName,isAdmin=$isAdmin,lastName=$lastName,phone=$phone,userName=$userName]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekAdminPrincipalUser.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    email = json[r'email'] == null ? null : EdemokraciaExtensionFilterByEmail.listFromJson(json[r'email']);
    firstName = json[r'firstName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'firstName']);
    isAdmin = json[r'isAdmin'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isAdmin']);
    lastName = json[r'lastName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'lastName']);
    phone = json[r'phone'] == null ? null : EdemokraciaExtensionFilterByPhone.listFromJson(json[r'phone']);
    userName = json[r'userName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'userName']);
  }

  EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'email'] = email != null ? email.map((v) => v.toJson()).toList() : null;
    json[r'firstName'] = firstName != null ? firstName.map((v) => v.toJson()).toList() : null;
    json[r'isAdmin'] = isAdmin != null ? isAdmin.map((v) => v.toJson()).toList() : null;
    json[r'lastName'] = lastName != null ? lastName.map((v) => v.toJson()).toList() : null;
    json[r'phone'] = phone != null ? phone.map((v) => v.toJson()).toList() : null;
    json[r'userName'] = userName != null ? userName.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(email, other.email) &&
          const ListEquality().equals(firstName, other.firstName) &&
          const ListEquality().equals(isAdmin, other.isAdmin) &&
          const ListEquality().equals(lastName, other.lastName) &&
          const ListEquality().equals(phone, other.phone) &&
          const ListEquality().equals(userName, other.userName);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (email != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(email);
    }
    if (firstName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(firstName);
    }
    if (isAdmin != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isAdmin);
    }
    if (lastName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(lastName);
    }
    if (phone != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(phone);
    }
    if (userName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(userName);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekAdminPrincipalUser seek,
    List<EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByEmail> email,
    List<EdemokraciaExtensionFilterByString> firstName,
    List<EdemokraciaExtensionFilterByBoolean> isAdmin,
    List<EdemokraciaExtensionFilterByString> lastName,
    List<EdemokraciaExtensionFilterByPhone> phone,
    List<EdemokraciaExtensionFilterByString> userName,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser copy = EdemokraciaExtensionAdminQueryCustomizerAdminPrincipalUser();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    email ??= this.email;
    firstName ??= this.firstName;
    isAdmin ??= this.isAdmin;
    lastName ??= this.lastName;
    phone ??= this.phone;
    userName ??= this.userName;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.email = (email == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByEmail>).map((data) => data.copyWith()).toList();
          }(email));
    copy.firstName = (firstName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(firstName));
    copy.isAdmin = (isAdmin == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isAdmin));
    copy.lastName = (lastName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(lastName));
    copy.phone = (phone == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByPhone>).map((data) => data.copyWith()).toList();
          }(phone));
    copy.userName = (userName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(userName));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekAdminPrincipalUser extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekAdminPrincipalUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekAdminPrincipalUser[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekAdminPrincipalUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekAdminPrincipalUser> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminSeekAdminPrincipalUser>[]
        : json.map((value) => EdemokraciaExtensionAdminSeekAdminPrincipalUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekAdminPrincipalUser && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekAdminPrincipalUser copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekAdminPrincipalUser copy = EdemokraciaExtensionAdminSeekAdminPrincipalUser();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute =
        (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser copyWith({
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser copy = EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUser();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum {
  created,
  email,
  firstName,
  isAdmin,
  lastName,
  phone,
  userName,
}

extension EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnumExtension
    on EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.created,
    'email': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.email,
    'firstName': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.firstName,
    'isAdmin': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.isAdmin,
    'lastName': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.lastName,
    'phone': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.phone,
    'userName': EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.userName,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.email: 'email',
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.firstName: 'firstName',
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.isAdmin: 'isAdmin',
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.lastName: 'lastName',
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.phone: 'phone',
    EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum.userName: 'userName',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum copyWith(
          EdemokraciaExtensionAdminOrderingTypeAdminPrincipalUserAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionAdminQueryCustomizerCity extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekCity seek;
  List<EdemokraciaExtensionAdminOrderingTypeCity> orderBy = [];
  List<EdemokraciaExtensionFilterByString> county = [];
  List<EdemokraciaExtensionFilterByString> name = [];
  List<EdemokraciaExtensionFilterByString> representation = [];

  EdemokraciaExtensionAdminQueryCustomizerCity();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerCity[mask=$mask,seek=$seek,orderBy=$orderBy,county=$county,name=$name,representation=$representation]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekCity.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeCity.listFromJson(json[r'_orderBy']);
    county = json[r'county'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'county']);
    name = json[r'name'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'name']);
    representation = json[r'representation'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'representation']);
  }

  EdemokraciaExtensionAdminQueryCustomizerCity.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'county'] = county != null ? county.map((v) => v.toJson()).toList() : null;
    json[r'name'] = name != null ? name.map((v) => v.toJson()).toList() : null;
    json[r'representation'] = representation != null ? representation.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerCity> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerCity>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerCity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerCity && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(county, other.county) &&
          const ListEquality().equals(name, other.name) &&
          const ListEquality().equals(representation, other.representation);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (county != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(county);
    }
    if (name != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(name);
    }
    if (representation != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(representation);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerCity copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekCity seek,
    List<EdemokraciaExtensionAdminOrderingTypeCity> orderBy,
    List<EdemokraciaExtensionFilterByString> county,
    List<EdemokraciaExtensionFilterByString> name,
    List<EdemokraciaExtensionFilterByString> representation,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerCity copy = EdemokraciaExtensionAdminQueryCustomizerCity();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    county ??= this.county;
    name ??= this.name;
    representation ??= this.representation;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeCity>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.county = (county == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(county));
    copy.name = (name == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(name));
    copy.representation = (representation == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(representation));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekCity extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekCity();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekCity[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekCity.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekCity> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekCity>[] : json.map((value) => EdemokraciaExtensionAdminSeekCity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekCity && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekCity copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekCity copy = EdemokraciaExtensionAdminSeekCity();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeCity extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeCity();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeCity[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeCityAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeCity.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeCity> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeCity>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeCity.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeCity && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeCity copyWith({
    EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeCity copy = EdemokraciaExtensionAdminOrderingTypeCity();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum {
  county,
  name,
  representation,
}

extension EdemokraciaExtensionAdminOrderingTypeCityAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum> fromMap = {
    'county': EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.county,
    'name': EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.name,
    'representation': EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.representation,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.county: 'county',
    EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.name: 'name',
    EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum.representation: 'representation',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeCityAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerComment extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekComment seek;
  List<EdemokraciaExtensionAdminOrderingTypeComment> orderBy = [];
  List<EdemokraciaExtensionFilterByText> comment = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByString> createdByName = [];
  List<EdemokraciaExtensionFilterByInteger> downVotes = [];
  List<EdemokraciaExtensionFilterByInteger> upVotes = [];

  EdemokraciaExtensionAdminQueryCustomizerComment();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerComment[mask=$mask,seek=$seek,orderBy=$orderBy,comment=$comment,created=$created,createdByName=$createdByName,downVotes=$downVotes,upVotes=$upVotes]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekComment.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeComment.listFromJson(json[r'_orderBy']);
    comment = json[r'comment'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'comment']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    createdByName = json[r'createdByName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'createdByName']);
    downVotes = json[r'downVotes'] == null ? null : EdemokraciaExtensionFilterByInteger.listFromJson(json[r'downVotes']);
    upVotes = json[r'upVotes'] == null ? null : EdemokraciaExtensionFilterByInteger.listFromJson(json[r'upVotes']);
  }

  EdemokraciaExtensionAdminQueryCustomizerComment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'comment'] = comment != null ? comment.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'createdByName'] = createdByName != null ? createdByName.map((v) => v.toJson()).toList() : null;
    json[r'downVotes'] = downVotes != null ? downVotes.map((v) => v.toJson()).toList() : null;
    json[r'upVotes'] = upVotes != null ? upVotes.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerComment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerComment>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerComment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerComment && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(comment, other.comment) &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(createdByName, other.createdByName) &&
          const ListEquality().equals(downVotes, other.downVotes) &&
          const ListEquality().equals(upVotes, other.upVotes);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (comment != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(comment);
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (createdByName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(createdByName);
    }
    if (downVotes != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(downVotes);
    }
    if (upVotes != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(upVotes);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerComment copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekComment seek,
    List<EdemokraciaExtensionAdminOrderingTypeComment> orderBy,
    List<EdemokraciaExtensionFilterByText> comment,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByString> createdByName,
    List<EdemokraciaExtensionFilterByInteger> downVotes,
    List<EdemokraciaExtensionFilterByInteger> upVotes,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerComment copy = EdemokraciaExtensionAdminQueryCustomizerComment();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    comment ??= this.comment;
    created ??= this.created;
    createdByName ??= this.createdByName;
    downVotes ??= this.downVotes;
    upVotes ??= this.upVotes;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeComment>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.comment = (comment == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(comment));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.createdByName = (createdByName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(createdByName));
    copy.downVotes = (downVotes == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByInteger>).map((data) => data.copyWith()).toList();
          }(downVotes));
    copy.upVotes = (upVotes == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByInteger>).map((data) => data.copyWith()).toList();
          }(upVotes));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekComment extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekComment();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekComment[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekComment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekComment> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekComment>[] : json.map((value) => EdemokraciaExtensionAdminSeekComment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekComment && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekComment copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekComment copy = EdemokraciaExtensionAdminSeekComment();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeComment extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeComment();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeComment[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeComment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeComment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeComment>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeComment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeComment && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeComment copyWith({
    EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeComment copy = EdemokraciaExtensionAdminOrderingTypeComment();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum {
  comment,
  created,
  createdByName,
  downVotes,
  upVotes,
}

extension EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum> fromMap = {
    'comment': EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.comment,
    'created': EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.created,
    'createdByName': EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.createdByName,
    'downVotes': EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.downVotes,
    'upVotes': EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.upVotes,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.comment: 'comment',
    EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.createdByName: 'createdByName',
    EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.downVotes: 'downVotes',
    EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum.upVotes: 'upVotes',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeCommentAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerCon extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekCon seek;
  List<EdemokraciaExtensionAdminOrderingTypeCon> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByString> createdByName = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByInteger> downVotes = [];
  List<EdemokraciaExtensionFilterByString> title = [];
  List<EdemokraciaExtensionFilterByInteger> upVotes = [];

  EdemokraciaExtensionAdminQueryCustomizerCon();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerCon[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,createdByName=$createdByName,description=$description,downVotes=$downVotes,title=$title,upVotes=$upVotes]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekCon.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeCon.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    createdByName = json[r'createdByName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'createdByName']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    downVotes = json[r'downVotes'] == null ? null : EdemokraciaExtensionFilterByInteger.listFromJson(json[r'downVotes']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
    upVotes = json[r'upVotes'] == null ? null : EdemokraciaExtensionFilterByInteger.listFromJson(json[r'upVotes']);
  }

  EdemokraciaExtensionAdminQueryCustomizerCon.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'createdByName'] = createdByName != null ? createdByName.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'downVotes'] = downVotes != null ? downVotes.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;
    json[r'upVotes'] = upVotes != null ? upVotes.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerCon> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerCon>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerCon.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerCon && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(createdByName, other.createdByName) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(downVotes, other.downVotes) &&
          const ListEquality().equals(title, other.title) &&
          const ListEquality().equals(upVotes, other.upVotes);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (createdByName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(createdByName);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (downVotes != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(downVotes);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }
    if (upVotes != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(upVotes);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerCon copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekCon seek,
    List<EdemokraciaExtensionAdminOrderingTypeCon> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByString> createdByName,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByInteger> downVotes,
    List<EdemokraciaExtensionFilterByString> title,
    List<EdemokraciaExtensionFilterByInteger> upVotes,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerCon copy = EdemokraciaExtensionAdminQueryCustomizerCon();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    createdByName ??= this.createdByName;
    description ??= this.description;
    downVotes ??= this.downVotes;
    title ??= this.title;
    upVotes ??= this.upVotes;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeCon>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.createdByName = (createdByName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(createdByName));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.downVotes = (downVotes == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByInteger>).map((data) => data.copyWith()).toList();
          }(downVotes));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));
    copy.upVotes = (upVotes == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByInteger>).map((data) => data.copyWith()).toList();
          }(upVotes));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekCon extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekCon();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekCon[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekCon.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekCon> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekCon>[] : json.map((value) => EdemokraciaExtensionAdminSeekCon.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekCon && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekCon copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekCon copy = EdemokraciaExtensionAdminSeekCon();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeCon extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeConAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeCon();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeCon[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeConAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeCon.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeCon> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminOrderingTypeCon>[] : json.map((value) => EdemokraciaExtensionAdminOrderingTypeCon.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeCon && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeCon copyWith({
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeCon copy = EdemokraciaExtensionAdminOrderingTypeCon();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeConAttributeEnum {
  created,
  createdByName,
  description,
  downVotes,
  title,
  upVotes,
}

extension EdemokraciaExtensionAdminOrderingTypeConAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeConAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeConAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.created,
    'createdByName': EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.createdByName,
    'description': EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.description,
    'downVotes': EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.downVotes,
    'title': EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.title,
    'upVotes': EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.upVotes,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeConAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.createdByName: 'createdByName',
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.downVotes: 'downVotes',
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.title: 'title',
    EdemokraciaExtensionAdminOrderingTypeConAttributeEnum.upVotes: 'upVotes',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeConAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeConAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeConAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeConAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeConAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerCounty extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekCounty seek;
  List<EdemokraciaExtensionAdminOrderingTypeCounty> orderBy = [];
  List<EdemokraciaExtensionFilterByString> name = [];
  List<EdemokraciaExtensionFilterByString> representation = [];

  EdemokraciaExtensionAdminQueryCustomizerCounty();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerCounty[mask=$mask,seek=$seek,orderBy=$orderBy,name=$name,representation=$representation]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekCounty.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeCounty.listFromJson(json[r'_orderBy']);
    name = json[r'name'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'name']);
    representation = json[r'representation'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'representation']);
  }

  EdemokraciaExtensionAdminQueryCustomizerCounty.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'name'] = name != null ? name.map((v) => v.toJson()).toList() : null;
    json[r'representation'] = representation != null ? representation.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerCounty> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerCounty>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerCounty.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerCounty && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(name, other.name) &&
          const ListEquality().equals(representation, other.representation);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (name != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(name);
    }
    if (representation != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(representation);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerCounty copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekCounty seek,
    List<EdemokraciaExtensionAdminOrderingTypeCounty> orderBy,
    List<EdemokraciaExtensionFilterByString> name,
    List<EdemokraciaExtensionFilterByString> representation,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerCounty copy = EdemokraciaExtensionAdminQueryCustomizerCounty();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    name ??= this.name;
    representation ??= this.representation;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeCounty>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.name = (name == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(name));
    copy.representation = (representation == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(representation));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekCounty extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekCounty();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekCounty[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekCounty.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekCounty> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekCounty>[] : json.map((value) => EdemokraciaExtensionAdminSeekCounty.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekCounty && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekCounty copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekCounty copy = EdemokraciaExtensionAdminSeekCounty();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeCounty extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeCounty();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeCounty[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeCounty.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeCounty> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeCounty>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeCounty.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeCounty && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeCounty copyWith({
    EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeCounty copy = EdemokraciaExtensionAdminOrderingTypeCounty();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum {
  name,
  representation,
}

extension EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum> fromMap = {
    'name': EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum.name,
    'representation': EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum.representation,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum.name: 'name',
    EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum.representation: 'representation',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeCountyAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekCreateIssueInput seek;

  EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput[mask=$mask,seek=$seek,,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekCreateIssueInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekCreateIssueInput seek,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput copy = EdemokraciaExtensionAdminQueryCustomizerCreateIssueInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekCreateIssueInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekCreateIssueInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekCreateIssueInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekCreateIssueInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekCreateIssueInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminSeekCreateIssueInput>[]
        : json.map((value) => EdemokraciaExtensionAdminSeekCreateIssueInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekCreateIssueInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekCreateIssueInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekCreateIssueInput copy = EdemokraciaExtensionAdminSeekCreateIssueInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminQueryCustomizerCreateUserInput extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekCreateUserInput seek;

  EdemokraciaExtensionAdminQueryCustomizerCreateUserInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerCreateUserInput[mask=$mask,seek=$seek,,,,,,]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekCreateUserInput.fromJson(json[r'_seek']);
  }

  EdemokraciaExtensionAdminQueryCustomizerCreateUserInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerCreateUserInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerCreateUserInput>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerCreateUserInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerCreateUserInput && runtimeType == other.runtimeType) {
      return mask == other.mask && seek == other.seek;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerCreateUserInput copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekCreateUserInput seek,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerCreateUserInput copy = EdemokraciaExtensionAdminQueryCustomizerCreateUserInput();
    seek ??= this.seek;
    mask ??= this.mask;

    copy.mask = mask;
    copy.seek = seek?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekCreateUserInput extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekCreateUserInput();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekCreateUserInput[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekCreateUserInput.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekCreateUserInput> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminSeekCreateUserInput>[]
        : json.map((value) => EdemokraciaExtensionAdminSeekCreateUserInput.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekCreateUserInput && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekCreateUserInput copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekCreateUserInput copy = EdemokraciaExtensionAdminSeekCreateUserInput();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminQueryCustomizerDashboard extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekDashboard seek;
  List<EdemokraciaExtensionAdminOrderingTypeDashboard> orderBy = [];
  List<EdemokraciaExtensionFilterByString> welcome = [];

  EdemokraciaExtensionAdminQueryCustomizerDashboard();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerDashboard[mask=$mask,seek=$seek,orderBy=$orderBy,welcome=$welcome]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekDashboard.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeDashboard.listFromJson(json[r'_orderBy']);
    welcome = json[r'welcome'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'welcome']);
  }

  EdemokraciaExtensionAdminQueryCustomizerDashboard.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'welcome'] = welcome != null ? welcome.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerDashboard> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerDashboard>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerDashboard.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerDashboard && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(welcome, other.welcome);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (welcome != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(welcome);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerDashboard copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekDashboard seek,
    List<EdemokraciaExtensionAdminOrderingTypeDashboard> orderBy,
    List<EdemokraciaExtensionFilterByString> welcome,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerDashboard copy = EdemokraciaExtensionAdminQueryCustomizerDashboard();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    welcome ??= this.welcome;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeDashboard>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.welcome = (welcome == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(welcome));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekDashboard extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekDashboard();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekDashboard[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekDashboard.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekDashboard> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekDashboard>[] : json.map((value) => EdemokraciaExtensionAdminSeekDashboard.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekDashboard && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekDashboard copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekDashboard copy = EdemokraciaExtensionAdminSeekDashboard();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeDashboard extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeDashboard();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeDashboard[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeDashboard.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeDashboard> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeDashboard>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeDashboard.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeDashboard && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeDashboard copyWith({
    EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeDashboard copy = EdemokraciaExtensionAdminOrderingTypeDashboard();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum {
  welcome,
}

extension EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum> fromMap = {
    'welcome': EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum.welcome,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum.welcome: 'welcome',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeDashboardAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerDebate extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekDebate seek;
  List<EdemokraciaExtensionAdminOrderingTypeDebate> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> closeAt = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByDebateStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionAdminQueryCustomizerDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerDebate[mask=$mask,seek=$seek,orderBy=$orderBy,closeAt=$closeAt,description=$description,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekDebate.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeDebate.listFromJson(json[r'_orderBy']);
    closeAt = json[r'closeAt'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'closeAt']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByDebateStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionAdminQueryCustomizerDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'closeAt'] = closeAt != null ? closeAt.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerDebate> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerDebate>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerDebate && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(closeAt, other.closeAt) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (closeAt != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(closeAt);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerDebate copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekDebate seek,
    List<EdemokraciaExtensionAdminOrderingTypeDebate> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> closeAt,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByDebateStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerDebate copy = EdemokraciaExtensionAdminQueryCustomizerDebate();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    closeAt ??= this.closeAt;
    description ??= this.description;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeDebate>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.closeAt = (closeAt == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(closeAt));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByDebateStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekDebate extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekDebate[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekDebate> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekDebate>[] : json.map((value) => EdemokraciaExtensionAdminSeekDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekDebate && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekDebate copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekDebate copy = EdemokraciaExtensionAdminSeekDebate();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeDebate extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeDebate[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeDebate> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeDebate>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeDebate && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeDebate copyWith({
    EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeDebate copy = EdemokraciaExtensionAdminOrderingTypeDebate();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum {
  closeAt,
  description,
  status,
  title,
}

extension EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum> fromMap = {
    'closeAt': EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.closeAt,
    'description': EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.description,
    'status': EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.status,
    'title': EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.closeAt: 'closeAt',
    EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.status: 'status',
    EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerDistrict extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekDistrict seek;
  List<EdemokraciaExtensionAdminOrderingTypeDistrict> orderBy = [];
  List<EdemokraciaExtensionFilterByString> city = [];
  List<EdemokraciaExtensionFilterByString> county = [];
  List<EdemokraciaExtensionFilterByString> name = [];
  List<EdemokraciaExtensionFilterByString> representation = [];

  EdemokraciaExtensionAdminQueryCustomizerDistrict();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerDistrict[mask=$mask,seek=$seek,orderBy=$orderBy,city=$city,county=$county,name=$name,representation=$representation]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekDistrict.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeDistrict.listFromJson(json[r'_orderBy']);
    city = json[r'city'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'city']);
    county = json[r'county'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'county']);
    name = json[r'name'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'name']);
    representation = json[r'representation'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'representation']);
  }

  EdemokraciaExtensionAdminQueryCustomizerDistrict.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'city'] = city != null ? city.map((v) => v.toJson()).toList() : null;
    json[r'county'] = county != null ? county.map((v) => v.toJson()).toList() : null;
    json[r'name'] = name != null ? name.map((v) => v.toJson()).toList() : null;
    json[r'representation'] = representation != null ? representation.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerDistrict> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerDistrict>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerDistrict.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerDistrict && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(city, other.city) &&
          const ListEquality().equals(county, other.county) &&
          const ListEquality().equals(name, other.name) &&
          const ListEquality().equals(representation, other.representation);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (city != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(city);
    }
    if (county != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(county);
    }
    if (name != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(name);
    }
    if (representation != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(representation);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerDistrict copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekDistrict seek,
    List<EdemokraciaExtensionAdminOrderingTypeDistrict> orderBy,
    List<EdemokraciaExtensionFilterByString> city,
    List<EdemokraciaExtensionFilterByString> county,
    List<EdemokraciaExtensionFilterByString> name,
    List<EdemokraciaExtensionFilterByString> representation,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerDistrict copy = EdemokraciaExtensionAdminQueryCustomizerDistrict();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    city ??= this.city;
    county ??= this.county;
    name ??= this.name;
    representation ??= this.representation;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeDistrict>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.city = (city == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(city));
    copy.county = (county == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(county));
    copy.name = (name == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(name));
    copy.representation = (representation == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(representation));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekDistrict extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekDistrict();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekDistrict[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekDistrict.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekDistrict> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekDistrict>[] : json.map((value) => EdemokraciaExtensionAdminSeekDistrict.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekDistrict && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekDistrict copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekDistrict copy = EdemokraciaExtensionAdminSeekDistrict();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeDistrict extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeDistrict();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeDistrict[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeDistrict.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeDistrict> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeDistrict>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeDistrict.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeDistrict && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeDistrict copyWith({
    EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeDistrict copy = EdemokraciaExtensionAdminOrderingTypeDistrict();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum {
  city,
  county,
  name,
  representation,
}

extension EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum> fromMap = {
    'city': EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.city,
    'county': EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.county,
    'name': EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.name,
    'representation': EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.representation,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.city: 'city',
    EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.county: 'county',
    EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.name: 'name',
    EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum.representation: 'representation',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeDistrictAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerIssue extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekIssue seek;
  List<EdemokraciaExtensionAdminOrderingTypeIssue> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByString> representation = [];
  List<EdemokraciaExtensionFilterByIssueStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionAdminQueryCustomizerIssue();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerIssue[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,description=$description,representation=$representation,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekIssue.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssue.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    representation = json[r'representation'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'representation']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByIssueStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionAdminQueryCustomizerIssue.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'representation'] = representation != null ? representation.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerIssue> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerIssue>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerIssue.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerIssue && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(representation, other.representation) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (representation != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(representation);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerIssue copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekIssue seek,
    List<EdemokraciaExtensionAdminOrderingTypeIssue> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByString> representation,
    List<EdemokraciaExtensionFilterByIssueStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerIssue copy = EdemokraciaExtensionAdminQueryCustomizerIssue();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    description ??= this.description;
    representation ??= this.representation;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeIssue>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.representation = (representation == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(representation));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByIssueStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekIssue extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekIssue();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekIssue[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekIssue.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekIssue> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekIssue>[] : json.map((value) => EdemokraciaExtensionAdminSeekIssue.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekIssue && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekIssue copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekIssue copy = EdemokraciaExtensionAdminSeekIssue();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeIssue extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeIssue();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeIssue[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeIssue.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeIssue> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeIssue>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeIssue.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeIssue && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeIssue copyWith({
    EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeIssue copy = EdemokraciaExtensionAdminOrderingTypeIssue();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum {
  created,
  description,
  representation,
  status,
  title,
}

extension EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.created,
    'description': EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.description,
    'representation': EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.representation,
    'status': EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.status,
    'title': EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.representation: 'representation',
    EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.status: 'status',
    EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeIssueAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerIssueAttachment extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekIssueAttachment seek;
  List<EdemokraciaExtensionAdminOrderingTypeIssueAttachment> orderBy = [];
  List<EdemokraciaExtensionFilterByURL> link = [];
  List<EdemokraciaExtensionFilterByAttachmentType> type = [];

  EdemokraciaExtensionAdminQueryCustomizerIssueAttachment();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerIssueAttachment[mask=$mask,seek=$seek,orderBy=$orderBy,,link=$link,type=$type]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekIssueAttachment.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueAttachment.listFromJson(json[r'_orderBy']);
    link = json[r'link'] == null ? null : EdemokraciaExtensionFilterByURL.listFromJson(json[r'link']);
    type = json[r'type'] == null ? null : EdemokraciaExtensionFilterByAttachmentType.listFromJson(json[r'type']);
  }

  EdemokraciaExtensionAdminQueryCustomizerIssueAttachment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'link'] = link != null ? link.map((v) => v.toJson()).toList() : null;
    json[r'type'] = type != null ? type.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerIssueAttachment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerIssueAttachment>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerIssueAttachment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerIssueAttachment && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(link, other.link) &&
          const ListEquality().equals(type, other.type);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (link != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(link);
    }
    if (type != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(type);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerIssueAttachment copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekIssueAttachment seek,
    List<EdemokraciaExtensionAdminOrderingTypeIssueAttachment> orderBy,
    List<EdemokraciaExtensionFilterByURL> link,
    List<EdemokraciaExtensionFilterByAttachmentType> type,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerIssueAttachment copy = EdemokraciaExtensionAdminQueryCustomizerIssueAttachment();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    link ??= this.link;
    type ??= this.type;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeIssueAttachment>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.link = (link == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByURL>).map((data) => data.copyWith()).toList();
          }(link));
    copy.type = (type == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByAttachmentType>).map((data) => data.copyWith()).toList();
          }(type));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekIssueAttachment extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekIssueAttachment();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekIssueAttachment[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekIssueAttachment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekIssueAttachment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminSeekIssueAttachment>[]
        : json.map((value) => EdemokraciaExtensionAdminSeekIssueAttachment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekIssueAttachment && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekIssueAttachment copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekIssueAttachment copy = EdemokraciaExtensionAdminSeekIssueAttachment();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeIssueAttachment extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeIssueAttachment();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeIssueAttachment[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeIssueAttachment.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeIssueAttachment> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeIssueAttachment>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeIssueAttachment.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeIssueAttachment && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeIssueAttachment copyWith({
    EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeIssueAttachment copy = EdemokraciaExtensionAdminOrderingTypeIssueAttachment();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum {
  file,
  link,
  type,
}

extension EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum> fromMap = {
    'file': EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.file,
    'link': EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.link,
    'type': EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.type,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.file: 'file',
    EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.link: 'link',
    EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum.type: 'type',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum copyWith(
          EdemokraciaExtensionAdminOrderingTypeIssueAttachmentAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionAdminQueryCustomizerIssueCategory extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekIssueCategory seek;
  List<EdemokraciaExtensionAdminOrderingTypeIssueCategory> orderBy = [];
  List<EdemokraciaExtensionFilterByString> description = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionAdminQueryCustomizerIssueCategory();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerIssueCategory[mask=$mask,seek=$seek,orderBy=$orderBy,description=$description,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekIssueCategory.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueCategory.listFromJson(json[r'_orderBy']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'description']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionAdminQueryCustomizerIssueCategory.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerIssueCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerIssueCategory>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerIssueCategory.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerIssueCategory && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerIssueCategory copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekIssueCategory seek,
    List<EdemokraciaExtensionAdminOrderingTypeIssueCategory> orderBy,
    List<EdemokraciaExtensionFilterByString> description,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerIssueCategory copy = EdemokraciaExtensionAdminQueryCustomizerIssueCategory();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    description ??= this.description;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeIssueCategory>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(description));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekIssueCategory extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekIssueCategory();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekIssueCategory[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekIssueCategory.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekIssueCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminSeekIssueCategory>[]
        : json.map((value) => EdemokraciaExtensionAdminSeekIssueCategory.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekIssueCategory && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekIssueCategory copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekIssueCategory copy = EdemokraciaExtensionAdminSeekIssueCategory();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeIssueCategory extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeIssueCategory();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeIssueCategory[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeIssueCategory.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeIssueCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeIssueCategory>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeIssueCategory.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeIssueCategory && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeIssueCategory copyWith({
    EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeIssueCategory copy = EdemokraciaExtensionAdminOrderingTypeIssueCategory();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum {
  description,
  title,
}

extension EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum> fromMap = {
    'description': EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum.description,
    'title': EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeIssueCategoryAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionAdminQueryCustomizerIssueDebate extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekIssueDebate seek;
  List<EdemokraciaExtensionAdminOrderingTypeIssueDebate> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> closeAt = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByDebateStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionAdminQueryCustomizerIssueDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerIssueDebate[mask=$mask,seek=$seek,orderBy=$orderBy,closeAt=$closeAt,description=$description,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekIssueDebate.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueDebate.listFromJson(json[r'_orderBy']);
    closeAt = json[r'closeAt'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'closeAt']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByDebateStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionAdminQueryCustomizerIssueDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'closeAt'] = closeAt != null ? closeAt.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerIssueDebate> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerIssueDebate>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerIssueDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerIssueDebate && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(closeAt, other.closeAt) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (closeAt != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(closeAt);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerIssueDebate copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekIssueDebate seek,
    List<EdemokraciaExtensionAdminOrderingTypeIssueDebate> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> closeAt,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByDebateStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerIssueDebate copy = EdemokraciaExtensionAdminQueryCustomizerIssueDebate();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    closeAt ??= this.closeAt;
    description ??= this.description;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeIssueDebate>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.closeAt = (closeAt == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(closeAt));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByDebateStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekIssueDebate extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekIssueDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekIssueDebate[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekIssueDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekIssueDebate> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekIssueDebate>[] : json.map((value) => EdemokraciaExtensionAdminSeekIssueDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekIssueDebate && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekIssueDebate copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekIssueDebate copy = EdemokraciaExtensionAdminSeekIssueDebate();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeIssueDebate extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeIssueDebate();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeIssueDebate[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeIssueDebate.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeIssueDebate> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeIssueDebate>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeIssueDebate.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeIssueDebate && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeIssueDebate copyWith({
    EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeIssueDebate copy = EdemokraciaExtensionAdminOrderingTypeIssueDebate();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum {
  closeAt,
  description,
  status,
  title,
}

extension EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum> fromMap = {
    'closeAt': EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.closeAt,
    'description': EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.description,
    'status': EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.status,
    'title': EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.closeAt: 'closeAt',
    EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.status: 'status',
    EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeIssueDebateAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionAdminQueryCustomizerPro extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekPro seek;
  List<EdemokraciaExtensionAdminOrderingTypePro> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByString> createdByName = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByInteger> downVotes = [];
  List<EdemokraciaExtensionFilterByString> title = [];
  List<EdemokraciaExtensionFilterByInteger> upVotes = [];

  EdemokraciaExtensionAdminQueryCustomizerPro();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerPro[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,createdByName=$createdByName,description=$description,downVotes=$downVotes,title=$title,upVotes=$upVotes]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekPro.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypePro.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    createdByName = json[r'createdByName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'createdByName']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    downVotes = json[r'downVotes'] == null ? null : EdemokraciaExtensionFilterByInteger.listFromJson(json[r'downVotes']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
    upVotes = json[r'upVotes'] == null ? null : EdemokraciaExtensionFilterByInteger.listFromJson(json[r'upVotes']);
  }

  EdemokraciaExtensionAdminQueryCustomizerPro.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'createdByName'] = createdByName != null ? createdByName.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'downVotes'] = downVotes != null ? downVotes.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;
    json[r'upVotes'] = upVotes != null ? upVotes.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerPro> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerPro>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerPro.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerPro && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(createdByName, other.createdByName) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(downVotes, other.downVotes) &&
          const ListEquality().equals(title, other.title) &&
          const ListEquality().equals(upVotes, other.upVotes);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (createdByName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(createdByName);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (downVotes != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(downVotes);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }
    if (upVotes != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(upVotes);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerPro copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekPro seek,
    List<EdemokraciaExtensionAdminOrderingTypePro> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByString> createdByName,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByInteger> downVotes,
    List<EdemokraciaExtensionFilterByString> title,
    List<EdemokraciaExtensionFilterByInteger> upVotes,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerPro copy = EdemokraciaExtensionAdminQueryCustomizerPro();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    createdByName ??= this.createdByName;
    description ??= this.description;
    downVotes ??= this.downVotes;
    title ??= this.title;
    upVotes ??= this.upVotes;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypePro>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.createdByName = (createdByName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(createdByName));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.downVotes = (downVotes == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByInteger>).map((data) => data.copyWith()).toList();
          }(downVotes));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));
    copy.upVotes = (upVotes == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByInteger>).map((data) => data.copyWith()).toList();
          }(upVotes));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekPro extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekPro();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekPro[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekPro.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekPro> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekPro>[] : json.map((value) => EdemokraciaExtensionAdminSeekPro.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekPro && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekPro copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekPro copy = EdemokraciaExtensionAdminSeekPro();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypePro extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeProAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypePro();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypePro[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeProAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypePro.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypePro> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminOrderingTypePro>[] : json.map((value) => EdemokraciaExtensionAdminOrderingTypePro.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypePro && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypePro copyWith({
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypePro copy = EdemokraciaExtensionAdminOrderingTypePro();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeProAttributeEnum {
  created,
  createdByName,
  description,
  downVotes,
  title,
  upVotes,
}

extension EdemokraciaExtensionAdminOrderingTypeProAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeProAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeProAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.created,
    'createdByName': EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.createdByName,
    'description': EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.description,
    'downVotes': EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.downVotes,
    'title': EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.title,
    'upVotes': EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.upVotes,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeProAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.createdByName: 'createdByName',
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.downVotes: 'downVotes',
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.title: 'title',
    EdemokraciaExtensionAdminOrderingTypeProAttributeEnum.upVotes: 'upVotes',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeProAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeProAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeProAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeProAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeProAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerSimpleVote extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekSimpleVote seek;
  List<EdemokraciaExtensionAdminOrderingTypeSimpleVote> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterBySimpleVoteType> type = [];

  EdemokraciaExtensionAdminQueryCustomizerSimpleVote();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerSimpleVote[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,type=$type]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekSimpleVote.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeSimpleVote.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    type = json[r'type'] == null ? null : EdemokraciaExtensionFilterBySimpleVoteType.listFromJson(json[r'type']);
  }

  EdemokraciaExtensionAdminQueryCustomizerSimpleVote.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'type'] = type != null ? type.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerSimpleVote> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerSimpleVote>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerSimpleVote.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerSimpleVote && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(type, other.type);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (type != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(type);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerSimpleVote copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekSimpleVote seek,
    List<EdemokraciaExtensionAdminOrderingTypeSimpleVote> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterBySimpleVoteType> type,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerSimpleVote copy = EdemokraciaExtensionAdminQueryCustomizerSimpleVote();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    type ??= this.type;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeSimpleVote>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.type = (type == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterBySimpleVoteType>).map((data) => data.copyWith()).toList();
          }(type));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekSimpleVote extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekSimpleVote();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekSimpleVote[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekSimpleVote.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekSimpleVote> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekSimpleVote>[] : json.map((value) => EdemokraciaExtensionAdminSeekSimpleVote.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekSimpleVote && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekSimpleVote copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekSimpleVote copy = EdemokraciaExtensionAdminSeekSimpleVote();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeSimpleVote extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeSimpleVote();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeSimpleVote[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeSimpleVote.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeSimpleVote> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeSimpleVote>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeSimpleVote.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeSimpleVote && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeSimpleVote copyWith({
    EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeSimpleVote copy = EdemokraciaExtensionAdminOrderingTypeSimpleVote();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum {
  created,
  type,
}

extension EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.created,
    'type': EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.type,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum.type: 'type',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeSimpleVoteAttributeEnum instance) =>
      instance;
}

class EdemokraciaExtensionAdminQueryCustomizerUser extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekUser seek;
  List<EdemokraciaExtensionAdminOrderingTypeUser> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByEmail> email = [];
  List<EdemokraciaExtensionFilterByString> firstName = [];
  List<EdemokraciaExtensionFilterByBoolean> isAdmin = [];
  List<EdemokraciaExtensionFilterByString> lastName = [];
  List<EdemokraciaExtensionFilterByPhone> phone = [];
  List<EdemokraciaExtensionFilterByString> representation = [];
  List<EdemokraciaExtensionFilterByString> userName = [];

  EdemokraciaExtensionAdminQueryCustomizerUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerUser[mask=$mask,seek=$seek,orderBy=$orderBy,created=$created,email=$email,firstName=$firstName,isAdmin=$isAdmin,lastName=$lastName,phone=$phone,representation=$representation,userName=$userName]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekUser.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeUser.listFromJson(json[r'_orderBy']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    email = json[r'email'] == null ? null : EdemokraciaExtensionFilterByEmail.listFromJson(json[r'email']);
    firstName = json[r'firstName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'firstName']);
    isAdmin = json[r'isAdmin'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isAdmin']);
    lastName = json[r'lastName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'lastName']);
    phone = json[r'phone'] == null ? null : EdemokraciaExtensionFilterByPhone.listFromJson(json[r'phone']);
    representation = json[r'representation'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'representation']);
    userName = json[r'userName'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'userName']);
  }

  EdemokraciaExtensionAdminQueryCustomizerUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'email'] = email != null ? email.map((v) => v.toJson()).toList() : null;
    json[r'firstName'] = firstName != null ? firstName.map((v) => v.toJson()).toList() : null;
    json[r'isAdmin'] = isAdmin != null ? isAdmin.map((v) => v.toJson()).toList() : null;
    json[r'lastName'] = lastName != null ? lastName.map((v) => v.toJson()).toList() : null;
    json[r'phone'] = phone != null ? phone.map((v) => v.toJson()).toList() : null;
    json[r'representation'] = representation != null ? representation.map((v) => v.toJson()).toList() : null;
    json[r'userName'] = userName != null ? userName.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerUser> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerUser>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerUser && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(email, other.email) &&
          const ListEquality().equals(firstName, other.firstName) &&
          const ListEquality().equals(isAdmin, other.isAdmin) &&
          const ListEquality().equals(lastName, other.lastName) &&
          const ListEquality().equals(phone, other.phone) &&
          const ListEquality().equals(representation, other.representation) &&
          const ListEquality().equals(userName, other.userName);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (email != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(email);
    }
    if (firstName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(firstName);
    }
    if (isAdmin != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isAdmin);
    }
    if (lastName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(lastName);
    }
    if (phone != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(phone);
    }
    if (representation != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(representation);
    }
    if (userName != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(userName);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerUser copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekUser seek,
    List<EdemokraciaExtensionAdminOrderingTypeUser> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByEmail> email,
    List<EdemokraciaExtensionFilterByString> firstName,
    List<EdemokraciaExtensionFilterByBoolean> isAdmin,
    List<EdemokraciaExtensionFilterByString> lastName,
    List<EdemokraciaExtensionFilterByPhone> phone,
    List<EdemokraciaExtensionFilterByString> representation,
    List<EdemokraciaExtensionFilterByString> userName,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerUser copy = EdemokraciaExtensionAdminQueryCustomizerUser();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    created ??= this.created;
    email ??= this.email;
    firstName ??= this.firstName;
    isAdmin ??= this.isAdmin;
    lastName ??= this.lastName;
    phone ??= this.phone;
    representation ??= this.representation;
    userName ??= this.userName;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeUser>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.email = (email == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByEmail>).map((data) => data.copyWith()).toList();
          }(email));
    copy.firstName = (firstName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(firstName));
    copy.isAdmin = (isAdmin == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isAdmin));
    copy.lastName = (lastName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(lastName));
    copy.phone = (phone == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByPhone>).map((data) => data.copyWith()).toList();
          }(phone));
    copy.representation = (representation == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(representation));
    copy.userName = (userName == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(userName));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekUser extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekUser[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekUser> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionAdminSeekUser>[] : json.map((value) => EdemokraciaExtensionAdminSeekUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekUser && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekUser copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekUser copy = EdemokraciaExtensionAdminSeekUser();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeUser extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeUser[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeUserAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeUser> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeUser>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeUser && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeUser copyWith({
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeUser copy = EdemokraciaExtensionAdminOrderingTypeUser();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum {
  created,
  email,
  firstName,
  isAdmin,
  lastName,
  phone,
  representation,
  userName,
}

extension EdemokraciaExtensionAdminOrderingTypeUserAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum> fromMap = {
    'created': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.created,
    'email': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.email,
    'firstName': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.firstName,
    'isAdmin': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.isAdmin,
    'lastName': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.lastName,
    'phone': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.phone,
    'representation': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.representation,
    'userName': EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.userName,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.email: 'email',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.firstName: 'firstName',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.isAdmin: 'isAdmin',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.lastName: 'lastName',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.phone: 'phone',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.representation: 'representation',
    EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum.userName: 'userName',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeUserAttributeEnum instance) => instance;
}

class EdemokraciaExtensionAdminQueryCustomizerVoteDefinition extends RestSerializable {
  String mask;
  EdemokraciaExtensionAdminSeekVoteDefinition seek;
  List<EdemokraciaExtensionAdminOrderingTypeVoteDefinition> orderBy = [];
  List<EdemokraciaExtensionFilterByTimestamp> closeAt = [];
  List<EdemokraciaExtensionFilterByTimestamp> created = [];
  List<EdemokraciaExtensionFilterByText> description = [];
  List<EdemokraciaExtensionFilterByBoolean> isNotRatingType = [];
  List<EdemokraciaExtensionFilterByBoolean> isNotSelectAnswerType = [];
  List<EdemokraciaExtensionFilterByBoolean> isNotYesNoAbstainType = [];
  List<EdemokraciaExtensionFilterByBoolean> isNotYesNoType = [];
  List<EdemokraciaExtensionFilterByBoolean> isRatingType = [];
  List<EdemokraciaExtensionFilterByBoolean> isSelectAnswerType = [];
  List<EdemokraciaExtensionFilterByBoolean> isYesNoAbstainType = [];
  List<EdemokraciaExtensionFilterByBoolean> isYesNoType = [];
  List<EdemokraciaExtensionFilterByVoteStatus> status = [];
  List<EdemokraciaExtensionFilterByString> title = [];

  EdemokraciaExtensionAdminQueryCustomizerVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminQueryCustomizerVoteDefinition[mask=$mask,seek=$seek,orderBy=$orderBy,closeAt=$closeAt,created=$created,description=$description,isNotRatingType=$isNotRatingType,isNotSelectAnswerType=$isNotSelectAnswerType,isNotYesNoAbstainType=$isNotYesNoAbstainType,isNotYesNoType=$isNotYesNoType,isRatingType=$isRatingType,isSelectAnswerType=$isSelectAnswerType,isYesNoAbstainType=$isYesNoAbstainType,isYesNoType=$isYesNoType,status=$status,title=$title]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    mask = (json[r'_mask'] == null) ? null : (json[r'_mask'] as String);
    seek = (json[r'_seek'] == null) ? null : EdemokraciaExtensionAdminSeekVoteDefinition.fromJson(json[r'_seek']);
    orderBy = (json[r'_orderBy'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeVoteDefinition.listFromJson(json[r'_orderBy']);
    closeAt = json[r'closeAt'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'closeAt']);
    created = json[r'created'] == null ? null : EdemokraciaExtensionFilterByTimestamp.listFromJson(json[r'created']);
    description = json[r'description'] == null ? null : EdemokraciaExtensionFilterByText.listFromJson(json[r'description']);
    isNotRatingType = json[r'isNotRatingType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isNotRatingType']);
    isNotSelectAnswerType = json[r'isNotSelectAnswerType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isNotSelectAnswerType']);
    isNotYesNoAbstainType = json[r'isNotYesNoAbstainType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isNotYesNoAbstainType']);
    isNotYesNoType = json[r'isNotYesNoType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isNotYesNoType']);
    isRatingType = json[r'isRatingType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isRatingType']);
    isSelectAnswerType = json[r'isSelectAnswerType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isSelectAnswerType']);
    isYesNoAbstainType = json[r'isYesNoAbstainType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isYesNoAbstainType']);
    isYesNoType = json[r'isYesNoType'] == null ? null : EdemokraciaExtensionFilterByBoolean.listFromJson(json[r'isYesNoType']);
    status = json[r'status'] == null ? null : EdemokraciaExtensionFilterByVoteStatus.listFromJson(json[r'status']);
    title = json[r'title'] == null ? null : EdemokraciaExtensionFilterByString.listFromJson(json[r'title']);
  }

  EdemokraciaExtensionAdminQueryCustomizerVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};

    json[r'_mask'] = mask;
    json[r'_seek'] = seek != null ? seek.toJson() : null;
    json[r'_orderBy'] = orderBy != null ? orderBy.map((v) => v.toJson()).toList() : null;
    json[r'closeAt'] = closeAt != null ? closeAt.map((v) => v.toJson()).toList() : null;
    json[r'created'] = created != null ? created.map((v) => v.toJson()).toList() : null;
    json[r'description'] = description != null ? description.map((v) => v.toJson()).toList() : null;
    json[r'isNotRatingType'] = isNotRatingType != null ? isNotRatingType.map((v) => v.toJson()).toList() : null;
    json[r'isNotSelectAnswerType'] = isNotSelectAnswerType != null ? isNotSelectAnswerType.map((v) => v.toJson()).toList() : null;
    json[r'isNotYesNoAbstainType'] = isNotYesNoAbstainType != null ? isNotYesNoAbstainType.map((v) => v.toJson()).toList() : null;
    json[r'isNotYesNoType'] = isNotYesNoType != null ? isNotYesNoType.map((v) => v.toJson()).toList() : null;
    json[r'isRatingType'] = isRatingType != null ? isRatingType.map((v) => v.toJson()).toList() : null;
    json[r'isSelectAnswerType'] = isSelectAnswerType != null ? isSelectAnswerType.map((v) => v.toJson()).toList() : null;
    json[r'isYesNoAbstainType'] = isYesNoAbstainType != null ? isYesNoAbstainType.map((v) => v.toJson()).toList() : null;
    json[r'isYesNoType'] = isYesNoType != null ? isYesNoType.map((v) => v.toJson()).toList() : null;
    json[r'status'] = status != null ? status.map((v) => v.toJson()).toList() : null;
    json[r'title'] = title != null ? title.map((v) => v.toJson()).toList() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminQueryCustomizerVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminQueryCustomizerVoteDefinition>[]
        : json.map((value) => EdemokraciaExtensionAdminQueryCustomizerVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminQueryCustomizerVoteDefinition && runtimeType == other.runtimeType) {
      return const ListEquality().equals(orderBy, other.orderBy) &&
          mask == other.mask &&
          seek == other.seek &&
          const ListEquality().equals(closeAt, other.closeAt) &&
          const ListEquality().equals(created, other.created) &&
          const ListEquality().equals(description, other.description) &&
          const ListEquality().equals(isNotRatingType, other.isNotRatingType) &&
          const ListEquality().equals(isNotSelectAnswerType, other.isNotSelectAnswerType) &&
          const ListEquality().equals(isNotYesNoAbstainType, other.isNotYesNoAbstainType) &&
          const ListEquality().equals(isNotYesNoType, other.isNotYesNoType) &&
          const ListEquality().equals(isRatingType, other.isRatingType) &&
          const ListEquality().equals(isSelectAnswerType, other.isSelectAnswerType) &&
          const ListEquality().equals(isYesNoAbstainType, other.isYesNoAbstainType) &&
          const ListEquality().equals(isYesNoType, other.isYesNoType) &&
          const ListEquality().equals(status, other.status) &&
          const ListEquality().equals(title, other.title);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (seek != null) {
      hashCode = hashCode * 31 + seek.hashCode;
    }
    if (orderBy != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(orderBy);
    }
    if (mask != null) {
      hashCode = hashCode * 31 + mask.hashCode;
    }
    if (closeAt != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(closeAt);
    }
    if (created != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(created);
    }
    if (description != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(description);
    }
    if (isNotRatingType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isNotRatingType);
    }
    if (isNotSelectAnswerType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isNotSelectAnswerType);
    }
    if (isNotYesNoAbstainType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isNotYesNoAbstainType);
    }
    if (isNotYesNoType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isNotYesNoType);
    }
    if (isRatingType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isRatingType);
    }
    if (isSelectAnswerType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isSelectAnswerType);
    }
    if (isYesNoAbstainType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isYesNoAbstainType);
    }
    if (isYesNoType != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(isYesNoType);
    }
    if (status != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(status);
    }
    if (title != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(title);
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminQueryCustomizerVoteDefinition copyWith({
    String mask,
    EdemokraciaExtensionAdminSeekVoteDefinition seek,
    List<EdemokraciaExtensionAdminOrderingTypeVoteDefinition> orderBy,
    List<EdemokraciaExtensionFilterByTimestamp> closeAt,
    List<EdemokraciaExtensionFilterByTimestamp> created,
    List<EdemokraciaExtensionFilterByText> description,
    List<EdemokraciaExtensionFilterByBoolean> isNotRatingType,
    List<EdemokraciaExtensionFilterByBoolean> isNotSelectAnswerType,
    List<EdemokraciaExtensionFilterByBoolean> isNotYesNoAbstainType,
    List<EdemokraciaExtensionFilterByBoolean> isNotYesNoType,
    List<EdemokraciaExtensionFilterByBoolean> isRatingType,
    List<EdemokraciaExtensionFilterByBoolean> isSelectAnswerType,
    List<EdemokraciaExtensionFilterByBoolean> isYesNoAbstainType,
    List<EdemokraciaExtensionFilterByBoolean> isYesNoType,
    List<EdemokraciaExtensionFilterByVoteStatus> status,
    List<EdemokraciaExtensionFilterByString> title,
  }) {
    EdemokraciaExtensionAdminQueryCustomizerVoteDefinition copy = EdemokraciaExtensionAdminQueryCustomizerVoteDefinition();
    seek ??= this.seek;
    orderBy ??= this.orderBy;
    mask ??= this.mask;
    closeAt ??= this.closeAt;
    created ??= this.created;
    description ??= this.description;
    isNotRatingType ??= this.isNotRatingType;
    isNotSelectAnswerType ??= this.isNotSelectAnswerType;
    isNotYesNoAbstainType ??= this.isNotYesNoAbstainType;
    isNotYesNoType ??= this.isNotYesNoType;
    isRatingType ??= this.isRatingType;
    isSelectAnswerType ??= this.isSelectAnswerType;
    isYesNoAbstainType ??= this.isYesNoAbstainType;
    isYesNoType ??= this.isYesNoType;
    status ??= this.status;
    title ??= this.title;

    copy.mask = mask;
    copy.seek = seek?.copyWith();
    copy.orderBy = (orderBy == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionAdminOrderingTypeVoteDefinition>).map((data) => data.copyWith()).toList();
          }(orderBy));
    copy.closeAt = (closeAt == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(closeAt));
    copy.created = (created == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByTimestamp>).map((data) => data.copyWith()).toList();
          }(created));
    copy.description = (description == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByText>).map((data) => data.copyWith()).toList();
          }(description));
    copy.isNotRatingType = (isNotRatingType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isNotRatingType));
    copy.isNotSelectAnswerType = (isNotSelectAnswerType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isNotSelectAnswerType));
    copy.isNotYesNoAbstainType = (isNotYesNoAbstainType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isNotYesNoAbstainType));
    copy.isNotYesNoType = (isNotYesNoType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isNotYesNoType));
    copy.isRatingType = (isRatingType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isRatingType));
    copy.isSelectAnswerType = (isSelectAnswerType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isSelectAnswerType));
    copy.isYesNoAbstainType = (isYesNoAbstainType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isYesNoAbstainType));
    copy.isYesNoType = (isYesNoType == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByBoolean>).map((data) => data.copyWith()).toList();
          }(isYesNoType));
    copy.status = (status == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByVoteStatus>).map((data) => data.copyWith()).toList();
          }(status));
    copy.title = (title == null)
        ? null
        : ((data) {
            return (data as List<EdemokraciaExtensionFilterByString>).map((data) => data.copyWith()).toList();
          }(title));

    return copy;
  }
}

class EdemokraciaExtensionAdminSeekVoteDefinition extends RestSerializable {
  dynamic lastItem;
  int limit;
  bool reverse;

  EdemokraciaExtensionAdminSeekVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminSeekVoteDefinition[lastItem=$lastItem, limit=$limit, reverse=$reverse, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    lastItem = json[r'lastItem'];
    limit = (json[r'limit'] == null) ? null : (json[r'limit'] as int);
    reverse = (json[r'reverse'] == null) ? null : (json[r'reverse'] as bool);
  }

  EdemokraciaExtensionAdminSeekVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'lastItem'] = lastItem;
    json[r'limit'] = limit;
    json[r'reverse'] = reverse;
    return json;
  }

  static List<EdemokraciaExtensionAdminSeekVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminSeekVoteDefinition>[]
        : json.map((value) => EdemokraciaExtensionAdminSeekVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminSeekVoteDefinition && runtimeType == other.runtimeType) {
      return lastItem == other.lastItem && limit == other.limit && reverse == other.reverse;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (lastItem != null) {
      hashCode = hashCode * 31 + lastItem.hashCode;
    }

    if (limit != null) {
      hashCode = hashCode * 31 + limit.hashCode;
    }

    if (reverse != null) {
      hashCode = hashCode * 31 + reverse.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminSeekVoteDefinition copyWith({
    dynamic lastItem,
    int limit,
    bool reverse,
  }) {
    EdemokraciaExtensionAdminSeekVoteDefinition copy = EdemokraciaExtensionAdminSeekVoteDefinition();
    lastItem ??= this.lastItem;
    limit ??= this.limit;
    reverse ??= this.reverse;

    copy.lastItem = lastItem;
    copy.limit = limit;
    copy.reverse = reverse;

    return copy;
  }
}

class EdemokraciaExtensionAdminOrderingTypeVoteDefinition extends RestSerializable {
  EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum attribute;
  bool descending;

  EdemokraciaExtensionAdminOrderingTypeVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminOrderingTypeVoteDefinition[attribute=$attribute, descending=$descending, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    attribute = (json[r'attribute'] == null) ? null : EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnumExtension.fromJson(json[r'attribute']);
    descending = (json[r'descending'] == null) ? null : (json[r'descending'] as bool);
  }

  EdemokraciaExtensionAdminOrderingTypeVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'attribute'] = attribute != null ? attribute.toJson() : null;
    json[r'descending'] = descending;
    return json;
  }

  static List<EdemokraciaExtensionAdminOrderingTypeVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminOrderingTypeVoteDefinition>[]
        : json.map((value) => EdemokraciaExtensionAdminOrderingTypeVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminOrderingTypeVoteDefinition && runtimeType == other.runtimeType) {
      return attribute == other.attribute && descending == other.descending;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (attribute != null) {
      hashCode = hashCode * 31 + attribute.hashCode;
    }

    if (descending != null) {
      hashCode = hashCode * 31 + descending.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminOrderingTypeVoteDefinition copyWith({
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum attribute,
    bool descending,
  }) {
    EdemokraciaExtensionAdminOrderingTypeVoteDefinition copy = EdemokraciaExtensionAdminOrderingTypeVoteDefinition();
    attribute ??= this.attribute;
    descending ??= this.descending;

    copy.attribute = attribute;
    copy.descending = descending;

    return copy;
  }
}

enum EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum {
  closeAt,
  created,
  description,
  isNotRatingType,
  isNotSelectAnswerType,
  isNotYesNoAbstainType,
  isNotYesNoType,
  isRatingType,
  isSelectAnswerType,
  isYesNoAbstainType,
  isYesNoType,
  status,
  title,
}

extension EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnumExtension on EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum {
  static Map<String, EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum> fromMap = {
    'closeAt': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.closeAt,
    'created': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.created,
    'description': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.description,
    'isNotRatingType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotRatingType,
    'isNotSelectAnswerType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotSelectAnswerType,
    'isNotYesNoAbstainType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotYesNoAbstainType,
    'isNotYesNoType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotYesNoType,
    'isRatingType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isRatingType,
    'isSelectAnswerType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isSelectAnswerType,
    'isYesNoAbstainType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isYesNoAbstainType,
    'isYesNoType': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isYesNoType,
    'status': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.status,
    'title': EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.title,
  };
  static Map<EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum, String> toMap = {
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.closeAt: 'closeAt',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.created: 'created',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.description: 'description',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotRatingType: 'isNotRatingType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotSelectAnswerType: 'isNotSelectAnswerType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotYesNoAbstainType: 'isNotYesNoAbstainType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isNotYesNoType: 'isNotYesNoType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isRatingType: 'isRatingType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isSelectAnswerType: 'isSelectAnswerType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isYesNoAbstainType: 'isYesNoAbstainType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.isYesNoType: 'isYesNoType',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.status: 'status',
    EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum.title: 'title',
  };

  String toJson() => toMap[this];

  static EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum copyWith(EdemokraciaExtensionAdminOrderingTypeVoteDefinitionAttributeEnum instance) =>
      instance;
}

/// Filters
class EdemokraciaExtensionFilterByString extends RestSerializable {
  String value;

  EdemokraciaExtensionFilterByStringOperatorEnum operator_;
  EdemokraciaExtensionFilterByString();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByString[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as String);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByStringOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByString.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByString> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByString>[] : json.map((value) => EdemokraciaExtensionFilterByString.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByString && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByString copyWith({
    String value,
    EdemokraciaExtensionFilterByStringOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByString copy = EdemokraciaExtensionFilterByString();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByStringOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
  matches,
  like,
}

extension EdemokraciaExtensionFilterByStringOperatorEnumExtension on EdemokraciaExtensionFilterByStringOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByStringOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByStringOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByStringOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByStringOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByStringOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByStringOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByStringOperatorEnum.notEqual,
    'matches': EdemokraciaExtensionFilterByStringOperatorEnum.matches,
    'like': EdemokraciaExtensionFilterByStringOperatorEnum.like,
  };
  static Map<EdemokraciaExtensionFilterByStringOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByStringOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByStringOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByStringOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByStringOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByStringOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByStringOperatorEnum.notEqual: 'notEqual',
    EdemokraciaExtensionFilterByStringOperatorEnum.matches: 'matches',
    EdemokraciaExtensionFilterByStringOperatorEnum.like: 'like',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByStringOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByStringOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByStringOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByStringOperatorEnum copyWith(EdemokraciaExtensionFilterByStringOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByText extends RestSerializable {
  String value;

  EdemokraciaExtensionFilterByTextOperatorEnum operator_;
  EdemokraciaExtensionFilterByText();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByText[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as String);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByTextOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByText.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByText> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByText>[] : json.map((value) => EdemokraciaExtensionFilterByText.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByText && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByText copyWith({
    String value,
    EdemokraciaExtensionFilterByTextOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByText copy = EdemokraciaExtensionFilterByText();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByTextOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
  matches,
  like,
}

extension EdemokraciaExtensionFilterByTextOperatorEnumExtension on EdemokraciaExtensionFilterByTextOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByTextOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByTextOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByTextOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByTextOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByTextOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByTextOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByTextOperatorEnum.notEqual,
    'matches': EdemokraciaExtensionFilterByTextOperatorEnum.matches,
    'like': EdemokraciaExtensionFilterByTextOperatorEnum.like,
  };
  static Map<EdemokraciaExtensionFilterByTextOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByTextOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByTextOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByTextOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByTextOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByTextOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByTextOperatorEnum.notEqual: 'notEqual',
    EdemokraciaExtensionFilterByTextOperatorEnum.matches: 'matches',
    EdemokraciaExtensionFilterByTextOperatorEnum.like: 'like',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByTextOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByTextOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByTextOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByTextOperatorEnum copyWith(EdemokraciaExtensionFilterByTextOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByTimestamp extends RestSerializable {
  DateTime value;

  EdemokraciaExtensionFilterByTimestampOperatorEnum operator_;
  EdemokraciaExtensionFilterByTimestamp();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByTimestamp[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as DateTime);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByTimestampOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByTimestamp.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value?.toUtc()?.toIso8601String();
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByTimestamp> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByTimestamp>[] : json.map((value) => EdemokraciaExtensionFilterByTimestamp.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByTimestamp && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByTimestamp copyWith({
    DateTime value,
    EdemokraciaExtensionFilterByTimestampOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByTimestamp copy = EdemokraciaExtensionFilterByTimestamp();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByTimestampOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
}

extension EdemokraciaExtensionFilterByTimestampOperatorEnumExtension on EdemokraciaExtensionFilterByTimestampOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByTimestampOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByTimestampOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByTimestampOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByTimestampOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByTimestampOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByTimestampOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByTimestampOperatorEnum.notEqual,
  };
  static Map<EdemokraciaExtensionFilterByTimestampOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByTimestampOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByTimestampOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByTimestampOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByTimestampOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByTimestampOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByTimestampOperatorEnum.notEqual: 'notEqual',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByTimestampOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByTimestampOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByTimestampOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByTimestampOperatorEnum copyWith(EdemokraciaExtensionFilterByTimestampOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByDebateStatus extends RestSerializable {
  EdemokraciaExtensionFilterByDebateStatusValueEnum value;

  EdemokraciaExtensionFilterByDebateStatusOperatorEnum operator_;
  EdemokraciaExtensionFilterByDebateStatus();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByDebateStatus[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : EdemokraciaExtensionFilterByDebateStatusValueEnumExtension.fromJson(json[r'value']);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByDebateStatusOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByDebateStatus.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value?.toJson();
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByDebateStatus> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByDebateStatus>[] : json.map((value) => EdemokraciaExtensionFilterByDebateStatus.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByDebateStatus && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByDebateStatus copyWith({
    EdemokraciaExtensionFilterByDebateStatusValueEnum value,
    EdemokraciaExtensionFilterByDebateStatusOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByDebateStatus copy = EdemokraciaExtensionFilterByDebateStatus();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByDebateStatusValueEnum {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}

extension EdemokraciaExtensionFilterByDebateStatusValueEnumExtension on EdemokraciaExtensionFilterByDebateStatusValueEnum {
  static Map<String, EdemokraciaExtensionFilterByDebateStatusValueEnum> fromMap = {
    'CREATED': EdemokraciaExtensionFilterByDebateStatusValueEnum.CREATED,
    'PENDING': EdemokraciaExtensionFilterByDebateStatusValueEnum.PENDING,
    'ACTIVE': EdemokraciaExtensionFilterByDebateStatusValueEnum.ACTIVE,
    'CLOSED': EdemokraciaExtensionFilterByDebateStatusValueEnum.CLOSED,
  };
  static Map<EdemokraciaExtensionFilterByDebateStatusValueEnum, String> toMap = {
    EdemokraciaExtensionFilterByDebateStatusValueEnum.CREATED: 'CREATED',
    EdemokraciaExtensionFilterByDebateStatusValueEnum.PENDING: 'PENDING',
    EdemokraciaExtensionFilterByDebateStatusValueEnum.ACTIVE: 'ACTIVE',
    EdemokraciaExtensionFilterByDebateStatusValueEnum.CLOSED: 'CLOSED',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByDebateStatusValueEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByDebateStatusValueEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByDebateStatusValueEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByDebateStatusValueEnum copyWith(EdemokraciaExtensionFilterByDebateStatusValueEnum instance) => instance;
}

enum EdemokraciaExtensionFilterByDebateStatusOperatorEnum {
  equals,
  notEquals,
}

extension EdemokraciaExtensionFilterByDebateStatusOperatorEnumExtension on EdemokraciaExtensionFilterByDebateStatusOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByDebateStatusOperatorEnum> fromMap = {
    'equals': EdemokraciaExtensionFilterByDebateStatusOperatorEnum.equals,
    'notEquals': EdemokraciaExtensionFilterByDebateStatusOperatorEnum.notEquals,
  };
  static Map<EdemokraciaExtensionFilterByDebateStatusOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByDebateStatusOperatorEnum.equals: 'equals',
    EdemokraciaExtensionFilterByDebateStatusOperatorEnum.notEquals: 'notEquals',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByDebateStatusOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByDebateStatusOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByDebateStatusOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByDebateStatusOperatorEnum copyWith(EdemokraciaExtensionFilterByDebateStatusOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByIssueStatus extends RestSerializable {
  EdemokraciaExtensionFilterByIssueStatusValueEnum value;

  EdemokraciaExtensionFilterByIssueStatusOperatorEnum operator_;
  EdemokraciaExtensionFilterByIssueStatus();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByIssueStatus[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : EdemokraciaExtensionFilterByIssueStatusValueEnumExtension.fromJson(json[r'value']);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByIssueStatusOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByIssueStatus.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value?.toJson();
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByIssueStatus> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByIssueStatus>[] : json.map((value) => EdemokraciaExtensionFilterByIssueStatus.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByIssueStatus && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByIssueStatus copyWith({
    EdemokraciaExtensionFilterByIssueStatusValueEnum value,
    EdemokraciaExtensionFilterByIssueStatusOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByIssueStatus copy = EdemokraciaExtensionFilterByIssueStatus();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByIssueStatusValueEnum {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}

extension EdemokraciaExtensionFilterByIssueStatusValueEnumExtension on EdemokraciaExtensionFilterByIssueStatusValueEnum {
  static Map<String, EdemokraciaExtensionFilterByIssueStatusValueEnum> fromMap = {
    'CREATED': EdemokraciaExtensionFilterByIssueStatusValueEnum.CREATED,
    'PENDING': EdemokraciaExtensionFilterByIssueStatusValueEnum.PENDING,
    'ACTIVE': EdemokraciaExtensionFilterByIssueStatusValueEnum.ACTIVE,
    'CLOSED': EdemokraciaExtensionFilterByIssueStatusValueEnum.CLOSED,
  };
  static Map<EdemokraciaExtensionFilterByIssueStatusValueEnum, String> toMap = {
    EdemokraciaExtensionFilterByIssueStatusValueEnum.CREATED: 'CREATED',
    EdemokraciaExtensionFilterByIssueStatusValueEnum.PENDING: 'PENDING',
    EdemokraciaExtensionFilterByIssueStatusValueEnum.ACTIVE: 'ACTIVE',
    EdemokraciaExtensionFilterByIssueStatusValueEnum.CLOSED: 'CLOSED',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByIssueStatusValueEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByIssueStatusValueEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByIssueStatusValueEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByIssueStatusValueEnum copyWith(EdemokraciaExtensionFilterByIssueStatusValueEnum instance) => instance;
}

enum EdemokraciaExtensionFilterByIssueStatusOperatorEnum {
  equals,
  notEquals,
}

extension EdemokraciaExtensionFilterByIssueStatusOperatorEnumExtension on EdemokraciaExtensionFilterByIssueStatusOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByIssueStatusOperatorEnum> fromMap = {
    'equals': EdemokraciaExtensionFilterByIssueStatusOperatorEnum.equals,
    'notEquals': EdemokraciaExtensionFilterByIssueStatusOperatorEnum.notEquals,
  };
  static Map<EdemokraciaExtensionFilterByIssueStatusOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByIssueStatusOperatorEnum.equals: 'equals',
    EdemokraciaExtensionFilterByIssueStatusOperatorEnum.notEquals: 'notEquals',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByIssueStatusOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByIssueStatusOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByIssueStatusOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByIssueStatusOperatorEnum copyWith(EdemokraciaExtensionFilterByIssueStatusOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByURL extends RestSerializable {
  String value;

  EdemokraciaExtensionFilterByURLOperatorEnum operator_;
  EdemokraciaExtensionFilterByURL();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByURL[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as String);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByURLOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByURL.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByURL> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByURL>[] : json.map((value) => EdemokraciaExtensionFilterByURL.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByURL && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByURL copyWith({
    String value,
    EdemokraciaExtensionFilterByURLOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByURL copy = EdemokraciaExtensionFilterByURL();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByURLOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
  matches,
  like,
}

extension EdemokraciaExtensionFilterByURLOperatorEnumExtension on EdemokraciaExtensionFilterByURLOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByURLOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByURLOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByURLOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByURLOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByURLOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByURLOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByURLOperatorEnum.notEqual,
    'matches': EdemokraciaExtensionFilterByURLOperatorEnum.matches,
    'like': EdemokraciaExtensionFilterByURLOperatorEnum.like,
  };
  static Map<EdemokraciaExtensionFilterByURLOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByURLOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByURLOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByURLOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByURLOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByURLOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByURLOperatorEnum.notEqual: 'notEqual',
    EdemokraciaExtensionFilterByURLOperatorEnum.matches: 'matches',
    EdemokraciaExtensionFilterByURLOperatorEnum.like: 'like',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByURLOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByURLOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByURLOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByURLOperatorEnum copyWith(EdemokraciaExtensionFilterByURLOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByAttachmentType extends RestSerializable {
  EdemokraciaExtensionFilterByAttachmentTypeValueEnum value;

  EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum operator_;
  EdemokraciaExtensionFilterByAttachmentType();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByAttachmentType[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : EdemokraciaExtensionFilterByAttachmentTypeValueEnumExtension.fromJson(json[r'value']);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByAttachmentTypeOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByAttachmentType.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value?.toJson();
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByAttachmentType> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionFilterByAttachmentType>[]
        : json.map((value) => EdemokraciaExtensionFilterByAttachmentType.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByAttachmentType && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByAttachmentType copyWith({
    EdemokraciaExtensionFilterByAttachmentTypeValueEnum value,
    EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByAttachmentType copy = EdemokraciaExtensionFilterByAttachmentType();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByAttachmentTypeValueEnum {
  LINK,
  IMAGE,
  VIDEO,
  MAP,
}

extension EdemokraciaExtensionFilterByAttachmentTypeValueEnumExtension on EdemokraciaExtensionFilterByAttachmentTypeValueEnum {
  static Map<String, EdemokraciaExtensionFilterByAttachmentTypeValueEnum> fromMap = {
    'LINK': EdemokraciaExtensionFilterByAttachmentTypeValueEnum.LINK,
    'IMAGE': EdemokraciaExtensionFilterByAttachmentTypeValueEnum.IMAGE,
    'VIDEO': EdemokraciaExtensionFilterByAttachmentTypeValueEnum.VIDEO,
    'MAP': EdemokraciaExtensionFilterByAttachmentTypeValueEnum.MAP,
  };
  static Map<EdemokraciaExtensionFilterByAttachmentTypeValueEnum, String> toMap = {
    EdemokraciaExtensionFilterByAttachmentTypeValueEnum.LINK: 'LINK',
    EdemokraciaExtensionFilterByAttachmentTypeValueEnum.IMAGE: 'IMAGE',
    EdemokraciaExtensionFilterByAttachmentTypeValueEnum.VIDEO: 'VIDEO',
    EdemokraciaExtensionFilterByAttachmentTypeValueEnum.MAP: 'MAP',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByAttachmentTypeValueEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByAttachmentTypeValueEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByAttachmentTypeValueEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByAttachmentTypeValueEnum copyWith(EdemokraciaExtensionFilterByAttachmentTypeValueEnum instance) => instance;
}

enum EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum {
  equals,
  notEquals,
}

extension EdemokraciaExtensionFilterByAttachmentTypeOperatorEnumExtension on EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum> fromMap = {
    'equals': EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum.equals,
    'notEquals': EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum.notEquals,
  };
  static Map<EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum.equals: 'equals',
    EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum.notEquals: 'notEquals',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum copyWith(EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterBySimpleVoteType extends RestSerializable {
  EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum value;

  EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum operator_;
  EdemokraciaExtensionFilterBySimpleVoteType();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterBySimpleVoteType[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : EdemokraciaExtensionFilterBySimpleVoteTypeValueEnumExtension.fromJson(json[r'value']);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterBySimpleVoteType.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value?.toJson();
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterBySimpleVoteType> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionFilterBySimpleVoteType>[]
        : json.map((value) => EdemokraciaExtensionFilterBySimpleVoteType.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterBySimpleVoteType && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterBySimpleVoteType copyWith({
    EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum value,
    EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterBySimpleVoteType copy = EdemokraciaExtensionFilterBySimpleVoteType();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum {
  UP,
  DOWN,
}

extension EdemokraciaExtensionFilterBySimpleVoteTypeValueEnumExtension on EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum {
  static Map<String, EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum> fromMap = {
    'UP': EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum.UP,
    'DOWN': EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum.DOWN,
  };
  static Map<EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum, String> toMap = {
    EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum.UP: 'UP',
    EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum.DOWN: 'DOWN',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum copyWith(EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum instance) => instance;
}

enum EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum {
  equals,
  notEquals,
}

extension EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnumExtension on EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum> fromMap = {
    'equals': EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum.equals,
    'notEquals': EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum.notEquals,
  };
  static Map<EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum.equals: 'equals',
    EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum.notEquals: 'notEquals',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum copyWith(EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByEmail extends RestSerializable {
  String value;

  EdemokraciaExtensionFilterByEmailOperatorEnum operator_;
  EdemokraciaExtensionFilterByEmail();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByEmail[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as String);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByEmailOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByEmail.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByEmail> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByEmail>[] : json.map((value) => EdemokraciaExtensionFilterByEmail.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByEmail && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByEmail copyWith({
    String value,
    EdemokraciaExtensionFilterByEmailOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByEmail copy = EdemokraciaExtensionFilterByEmail();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByEmailOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
  matches,
  like,
}

extension EdemokraciaExtensionFilterByEmailOperatorEnumExtension on EdemokraciaExtensionFilterByEmailOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByEmailOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByEmailOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByEmailOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByEmailOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByEmailOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByEmailOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByEmailOperatorEnum.notEqual,
    'matches': EdemokraciaExtensionFilterByEmailOperatorEnum.matches,
    'like': EdemokraciaExtensionFilterByEmailOperatorEnum.like,
  };
  static Map<EdemokraciaExtensionFilterByEmailOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByEmailOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByEmailOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByEmailOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByEmailOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByEmailOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByEmailOperatorEnum.notEqual: 'notEqual',
    EdemokraciaExtensionFilterByEmailOperatorEnum.matches: 'matches',
    EdemokraciaExtensionFilterByEmailOperatorEnum.like: 'like',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByEmailOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByEmailOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByEmailOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByEmailOperatorEnum copyWith(EdemokraciaExtensionFilterByEmailOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByBoolean extends RestSerializable {
  bool value;

  EdemokraciaExtensionFilterByBooleanOperatorEnum operator_;
  EdemokraciaExtensionFilterByBoolean();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByBoolean[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as bool);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByBooleanOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByBoolean.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByBoolean> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByBoolean>[] : json.map((value) => EdemokraciaExtensionFilterByBoolean.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByBoolean && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByBoolean copyWith({
    bool value,
    EdemokraciaExtensionFilterByBooleanOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByBoolean copy = EdemokraciaExtensionFilterByBoolean();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByBooleanOperatorEnum {
  equals,
}

extension EdemokraciaExtensionFilterByBooleanOperatorEnumExtension on EdemokraciaExtensionFilterByBooleanOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByBooleanOperatorEnum> fromMap = {
    'equals': EdemokraciaExtensionFilterByBooleanOperatorEnum.equals,
  };
  static Map<EdemokraciaExtensionFilterByBooleanOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByBooleanOperatorEnum.equals: 'equals',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByBooleanOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByBooleanOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByBooleanOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByBooleanOperatorEnum copyWith(EdemokraciaExtensionFilterByBooleanOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByPhone extends RestSerializable {
  String value;

  EdemokraciaExtensionFilterByPhoneOperatorEnum operator_;
  EdemokraciaExtensionFilterByPhone();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByPhone[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as String);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByPhoneOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByPhone.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByPhone> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByPhone>[] : json.map((value) => EdemokraciaExtensionFilterByPhone.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByPhone && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByPhone copyWith({
    String value,
    EdemokraciaExtensionFilterByPhoneOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByPhone copy = EdemokraciaExtensionFilterByPhone();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByPhoneOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
  matches,
  like,
}

extension EdemokraciaExtensionFilterByPhoneOperatorEnumExtension on EdemokraciaExtensionFilterByPhoneOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByPhoneOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByPhoneOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByPhoneOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByPhoneOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByPhoneOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByPhoneOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByPhoneOperatorEnum.notEqual,
    'matches': EdemokraciaExtensionFilterByPhoneOperatorEnum.matches,
    'like': EdemokraciaExtensionFilterByPhoneOperatorEnum.like,
  };
  static Map<EdemokraciaExtensionFilterByPhoneOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByPhoneOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.notEqual: 'notEqual',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.matches: 'matches',
    EdemokraciaExtensionFilterByPhoneOperatorEnum.like: 'like',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByPhoneOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByPhoneOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByPhoneOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByPhoneOperatorEnum copyWith(EdemokraciaExtensionFilterByPhoneOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByVoteStatus extends RestSerializable {
  EdemokraciaExtensionFilterByVoteStatusValueEnum value;

  EdemokraciaExtensionFilterByVoteStatusOperatorEnum operator_;
  EdemokraciaExtensionFilterByVoteStatus();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByVoteStatus[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : EdemokraciaExtensionFilterByVoteStatusValueEnumExtension.fromJson(json[r'value']);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByVoteStatusOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByVoteStatus.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value?.toJson();
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByVoteStatus> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByVoteStatus>[] : json.map((value) => EdemokraciaExtensionFilterByVoteStatus.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByVoteStatus && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByVoteStatus copyWith({
    EdemokraciaExtensionFilterByVoteStatusValueEnum value,
    EdemokraciaExtensionFilterByVoteStatusOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByVoteStatus copy = EdemokraciaExtensionFilterByVoteStatus();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByVoteStatusValueEnum {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}

extension EdemokraciaExtensionFilterByVoteStatusValueEnumExtension on EdemokraciaExtensionFilterByVoteStatusValueEnum {
  static Map<String, EdemokraciaExtensionFilterByVoteStatusValueEnum> fromMap = {
    'CREATED': EdemokraciaExtensionFilterByVoteStatusValueEnum.CREATED,
    'PENDING': EdemokraciaExtensionFilterByVoteStatusValueEnum.PENDING,
    'ACTIVE': EdemokraciaExtensionFilterByVoteStatusValueEnum.ACTIVE,
    'CLOSED': EdemokraciaExtensionFilterByVoteStatusValueEnum.CLOSED,
  };
  static Map<EdemokraciaExtensionFilterByVoteStatusValueEnum, String> toMap = {
    EdemokraciaExtensionFilterByVoteStatusValueEnum.CREATED: 'CREATED',
    EdemokraciaExtensionFilterByVoteStatusValueEnum.PENDING: 'PENDING',
    EdemokraciaExtensionFilterByVoteStatusValueEnum.ACTIVE: 'ACTIVE',
    EdemokraciaExtensionFilterByVoteStatusValueEnum.CLOSED: 'CLOSED',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByVoteStatusValueEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByVoteStatusValueEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByVoteStatusValueEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByVoteStatusValueEnum copyWith(EdemokraciaExtensionFilterByVoteStatusValueEnum instance) => instance;
}

enum EdemokraciaExtensionFilterByVoteStatusOperatorEnum {
  equals,
  notEquals,
}

extension EdemokraciaExtensionFilterByVoteStatusOperatorEnumExtension on EdemokraciaExtensionFilterByVoteStatusOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByVoteStatusOperatorEnum> fromMap = {
    'equals': EdemokraciaExtensionFilterByVoteStatusOperatorEnum.equals,
    'notEquals': EdemokraciaExtensionFilterByVoteStatusOperatorEnum.notEquals,
  };
  static Map<EdemokraciaExtensionFilterByVoteStatusOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByVoteStatusOperatorEnum.equals: 'equals',
    EdemokraciaExtensionFilterByVoteStatusOperatorEnum.notEquals: 'notEquals',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByVoteStatusOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByVoteStatusOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByVoteStatusOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByVoteStatusOperatorEnum copyWith(EdemokraciaExtensionFilterByVoteStatusOperatorEnum instance) => instance;
}

class EdemokraciaExtensionFilterByInteger extends RestSerializable {
  int value;

  EdemokraciaExtensionFilterByIntegerOperatorEnum operator_;
  EdemokraciaExtensionFilterByInteger();

  @override
  String toString() {
    return 'EdemokraciaExtensionFilterByInteger[value=$value, operator_=$operator_, ]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    value = (json[r'value'] == null) ? null : (json[r'value'] as int);
    operator_ = (json[r'operator'] == null) ? null : EdemokraciaExtensionFilterByIntegerOperatorEnumExtension.fromJson(json[r'operator']);
  }

  EdemokraciaExtensionFilterByInteger.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'value'] = value;
    json[r'operator'] = operator_?.toJson();
    return json;
  }

  static List<EdemokraciaExtensionFilterByInteger> listFromJson(List<dynamic> json) {
    return json == null ? <EdemokraciaExtensionFilterByInteger>[] : json.map((value) => EdemokraciaExtensionFilterByInteger.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionFilterByInteger && runtimeType == other.runtimeType) {
      return value == other.value && operator_ == other.operator_;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (value != null) {
      hashCode = hashCode * 31 + value.hashCode;
    }

    if (operator_ != null) {
      hashCode = hashCode * 31 + operator_.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionFilterByInteger copyWith({
    int value,
    EdemokraciaExtensionFilterByIntegerOperatorEnum operator_,
  }) {
    EdemokraciaExtensionFilterByInteger copy = EdemokraciaExtensionFilterByInteger();
    value ??= this.value;
    operator_ ??= this.operator_;

    copy.value = value;
    copy.operator_ = operator_;

    return copy;
  }
}

enum EdemokraciaExtensionFilterByIntegerOperatorEnum {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
}

extension EdemokraciaExtensionFilterByIntegerOperatorEnumExtension on EdemokraciaExtensionFilterByIntegerOperatorEnum {
  static Map<String, EdemokraciaExtensionFilterByIntegerOperatorEnum> fromMap = {
    'lessThan': EdemokraciaExtensionFilterByIntegerOperatorEnum.lessThan,
    'greaterThan': EdemokraciaExtensionFilterByIntegerOperatorEnum.greaterThan,
    'lessOrEqual': EdemokraciaExtensionFilterByIntegerOperatorEnum.lessOrEqual,
    'greaterOrEqual': EdemokraciaExtensionFilterByIntegerOperatorEnum.greaterOrEqual,
    'equal': EdemokraciaExtensionFilterByIntegerOperatorEnum.equal,
    'notEqual': EdemokraciaExtensionFilterByIntegerOperatorEnum.notEqual,
  };
  static Map<EdemokraciaExtensionFilterByIntegerOperatorEnum, String> toMap = {
    EdemokraciaExtensionFilterByIntegerOperatorEnum.lessThan: 'lessThan',
    EdemokraciaExtensionFilterByIntegerOperatorEnum.greaterThan: 'greaterThan',
    EdemokraciaExtensionFilterByIntegerOperatorEnum.lessOrEqual: 'lessOrEqual',
    EdemokraciaExtensionFilterByIntegerOperatorEnum.greaterOrEqual: 'greaterOrEqual',
    EdemokraciaExtensionFilterByIntegerOperatorEnum.equal: 'equal',
    EdemokraciaExtensionFilterByIntegerOperatorEnum.notEqual: 'notEqual',
  };

  String toJson() => toMap[this];
  static EdemokraciaExtensionFilterByIntegerOperatorEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaExtensionFilterByIntegerOperatorEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaExtensionFilterByIntegerOperatorEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaExtensionFilterByIntegerOperatorEnum copyWith(EdemokraciaExtensionFilterByIntegerOperatorEnum instance) => instance;
}

/// Enums
enum EdemokraciaSimpleVoteTypeRestEnum {
  UP,
  DOWN,
}

extension EdemokraciaSimpleVoteTypeRestEnumExtension on EdemokraciaSimpleVoteTypeRestEnum {
  static Map<String, EdemokraciaSimpleVoteTypeRestEnum> fromMap = {
    'UP': EdemokraciaSimpleVoteTypeRestEnum.UP,
    'DOWN': EdemokraciaSimpleVoteTypeRestEnum.DOWN,
  };
  static Map<EdemokraciaSimpleVoteTypeRestEnum, String> toMap = {
    EdemokraciaSimpleVoteTypeRestEnum.UP: 'UP',
    EdemokraciaSimpleVoteTypeRestEnum.DOWN: 'DOWN',
  };

  String toJson() => toMap[this];

  static EdemokraciaSimpleVoteTypeRestEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaSimpleVoteTypeRestEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaSimpleVoteTypeRestEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaSimpleVoteTypeRestEnum copyWith(EdemokraciaSimpleVoteTypeRestEnum instance) => instance;
}

enum EdemokraciaVoteStatusRestEnum {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}

extension EdemokraciaVoteStatusRestEnumExtension on EdemokraciaVoteStatusRestEnum {
  static Map<String, EdemokraciaVoteStatusRestEnum> fromMap = {
    'CREATED': EdemokraciaVoteStatusRestEnum.CREATED,
    'PENDING': EdemokraciaVoteStatusRestEnum.PENDING,
    'ACTIVE': EdemokraciaVoteStatusRestEnum.ACTIVE,
    'CLOSED': EdemokraciaVoteStatusRestEnum.CLOSED,
  };
  static Map<EdemokraciaVoteStatusRestEnum, String> toMap = {
    EdemokraciaVoteStatusRestEnum.CREATED: 'CREATED',
    EdemokraciaVoteStatusRestEnum.PENDING: 'PENDING',
    EdemokraciaVoteStatusRestEnum.ACTIVE: 'ACTIVE',
    EdemokraciaVoteStatusRestEnum.CLOSED: 'CLOSED',
  };

  String toJson() => toMap[this];

  static EdemokraciaVoteStatusRestEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaVoteStatusRestEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaVoteStatusRestEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaVoteStatusRestEnum copyWith(EdemokraciaVoteStatusRestEnum instance) => instance;
}

enum EdemokraciaIssueStatusRestEnum {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}

extension EdemokraciaIssueStatusRestEnumExtension on EdemokraciaIssueStatusRestEnum {
  static Map<String, EdemokraciaIssueStatusRestEnum> fromMap = {
    'CREATED': EdemokraciaIssueStatusRestEnum.CREATED,
    'PENDING': EdemokraciaIssueStatusRestEnum.PENDING,
    'ACTIVE': EdemokraciaIssueStatusRestEnum.ACTIVE,
    'CLOSED': EdemokraciaIssueStatusRestEnum.CLOSED,
  };
  static Map<EdemokraciaIssueStatusRestEnum, String> toMap = {
    EdemokraciaIssueStatusRestEnum.CREATED: 'CREATED',
    EdemokraciaIssueStatusRestEnum.PENDING: 'PENDING',
    EdemokraciaIssueStatusRestEnum.ACTIVE: 'ACTIVE',
    EdemokraciaIssueStatusRestEnum.CLOSED: 'CLOSED',
  };

  String toJson() => toMap[this];

  static EdemokraciaIssueStatusRestEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaIssueStatusRestEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaIssueStatusRestEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaIssueStatusRestEnum copyWith(EdemokraciaIssueStatusRestEnum instance) => instance;
}

enum EdemokraciaAttachmentTypeRestEnum {
  LINK,
  IMAGE,
  VIDEO,
  MAP,
}

extension EdemokraciaAttachmentTypeRestEnumExtension on EdemokraciaAttachmentTypeRestEnum {
  static Map<String, EdemokraciaAttachmentTypeRestEnum> fromMap = {
    'LINK': EdemokraciaAttachmentTypeRestEnum.LINK,
    'IMAGE': EdemokraciaAttachmentTypeRestEnum.IMAGE,
    'VIDEO': EdemokraciaAttachmentTypeRestEnum.VIDEO,
    'MAP': EdemokraciaAttachmentTypeRestEnum.MAP,
  };
  static Map<EdemokraciaAttachmentTypeRestEnum, String> toMap = {
    EdemokraciaAttachmentTypeRestEnum.LINK: 'LINK',
    EdemokraciaAttachmentTypeRestEnum.IMAGE: 'IMAGE',
    EdemokraciaAttachmentTypeRestEnum.VIDEO: 'VIDEO',
    EdemokraciaAttachmentTypeRestEnum.MAP: 'MAP',
  };

  String toJson() => toMap[this];

  static EdemokraciaAttachmentTypeRestEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaAttachmentTypeRestEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaAttachmentTypeRestEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaAttachmentTypeRestEnum copyWith(EdemokraciaAttachmentTypeRestEnum instance) => instance;
}

enum EdemokraciaDebateStatusRestEnum {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}

extension EdemokraciaDebateStatusRestEnumExtension on EdemokraciaDebateStatusRestEnum {
  static Map<String, EdemokraciaDebateStatusRestEnum> fromMap = {
    'CREATED': EdemokraciaDebateStatusRestEnum.CREATED,
    'PENDING': EdemokraciaDebateStatusRestEnum.PENDING,
    'ACTIVE': EdemokraciaDebateStatusRestEnum.ACTIVE,
    'CLOSED': EdemokraciaDebateStatusRestEnum.CLOSED,
  };
  static Map<EdemokraciaDebateStatusRestEnum, String> toMap = {
    EdemokraciaDebateStatusRestEnum.CREATED: 'CREATED',
    EdemokraciaDebateStatusRestEnum.PENDING: 'PENDING',
    EdemokraciaDebateStatusRestEnum.ACTIVE: 'ACTIVE',
    EdemokraciaDebateStatusRestEnum.CLOSED: 'CLOSED',
  };

  String toJson() => toMap[this];

  static EdemokraciaDebateStatusRestEnum fromJson(String key) => key == null ? null : fromMap[key];

  static List<EdemokraciaDebateStatusRestEnum> listFromJson(List<dynamic> json) =>
      json == null ? <EdemokraciaDebateStatusRestEnum>[] : json.map((value) => fromJson(value)).toList();

  static EdemokraciaDebateStatusRestEnum copyWith(EdemokraciaDebateStatusRestEnum instance) => instance;
}

/// RangeInputs
class EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionQueryCustomizerVoteEntry queryCustomizer;
  EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries();

  @override
  String toString() {
    return 'EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionQueryCustomizerVoteEntry.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries>[]
        : json.map((value) => EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries copyWith({
    dynamic owner,
    EdemokraciaExtensionQueryCustomizerVoteEntry queryCustomizer,
  }) {
    EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries copy = EdemokraciaExtensionnullGetRangeInputVoteDefinitionVoteEntries();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionnullGetRangeInputVoteEntryUser extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionQueryCustomizerUser queryCustomizer;
  EdemokraciaExtensionnullGetRangeInputVoteEntryUser();

  @override
  String toString() {
    return 'EdemokraciaExtensionnullGetRangeInputVoteEntryUser[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionQueryCustomizerUser.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionnullGetRangeInputVoteEntryUser.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionnullGetRangeInputVoteEntryUser> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionnullGetRangeInputVoteEntryUser>[]
        : json.map((value) => EdemokraciaExtensionnullGetRangeInputVoteEntryUser.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionnullGetRangeInputVoteEntryUser && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionnullGetRangeInputVoteEntryUser copyWith({
    dynamic owner,
    EdemokraciaExtensionQueryCustomizerUser queryCustomizer,
  }) {
    EdemokraciaExtensionnullGetRangeInputVoteEntryUser copy = EdemokraciaExtensionnullGetRangeInputVoteEntryUser();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionQueryCustomizerVoteDefinition queryCustomizer;
  EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition();

  @override
  String toString() {
    return 'EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionQueryCustomizerVoteDefinition.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition>[]
        : json.map((value) => EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition copyWith({
    dynamic owner,
    EdemokraciaExtensionQueryCustomizerVoteDefinition queryCustomizer,
  }) {
    EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition copy = EdemokraciaExtensionnullGetRangeInputVoteEntryVoteDefinition();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminGetRangeInputIssueCategories extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionAdminQueryCustomizerIssueCategory queryCustomizer;
  EdemokraciaExtensionAdminGetRangeInputIssueCategories();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminGetRangeInputIssueCategories[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionAdminQueryCustomizerIssueCategory.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionAdminGetRangeInputIssueCategories.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminGetRangeInputIssueCategories> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminGetRangeInputIssueCategories>[]
        : json.map((value) => EdemokraciaExtensionAdminGetRangeInputIssueCategories.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminGetRangeInputIssueCategories && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminGetRangeInputIssueCategories copyWith({
    dynamic owner,
    EdemokraciaExtensionAdminQueryCustomizerIssueCategory queryCustomizer,
  }) {
    EdemokraciaExtensionAdminGetRangeInputIssueCategories copy = EdemokraciaExtensionAdminGetRangeInputIssueCategories();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminGetRangeInputIssueOwner extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionAdminQueryCustomizerUser queryCustomizer;
  EdemokraciaExtensionAdminGetRangeInputIssueOwner();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminGetRangeInputIssueOwner[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionAdminQueryCustomizerUser.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionAdminGetRangeInputIssueOwner.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminGetRangeInputIssueOwner> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminGetRangeInputIssueOwner>[]
        : json.map((value) => EdemokraciaExtensionAdminGetRangeInputIssueOwner.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminGetRangeInputIssueOwner && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminGetRangeInputIssueOwner copyWith({
    dynamic owner,
    EdemokraciaExtensionAdminQueryCustomizerUser queryCustomizer,
  }) {
    EdemokraciaExtensionAdminGetRangeInputIssueOwner copy = EdemokraciaExtensionAdminGetRangeInputIssueOwner();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminGetRangeInputUserActivityCities extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionAdminQueryCustomizerCity queryCustomizer;
  EdemokraciaExtensionAdminGetRangeInputUserActivityCities();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminGetRangeInputUserActivityCities[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionAdminQueryCustomizerCity.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionAdminGetRangeInputUserActivityCities.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminGetRangeInputUserActivityCities> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminGetRangeInputUserActivityCities>[]
        : json.map((value) => EdemokraciaExtensionAdminGetRangeInputUserActivityCities.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminGetRangeInputUserActivityCities && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminGetRangeInputUserActivityCities copyWith({
    dynamic owner,
    EdemokraciaExtensionAdminQueryCustomizerCity queryCustomizer,
  }) {
    EdemokraciaExtensionAdminGetRangeInputUserActivityCities copy = EdemokraciaExtensionAdminGetRangeInputUserActivityCities();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminGetRangeInputUserActivityCounties extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionAdminQueryCustomizerCounty queryCustomizer;
  EdemokraciaExtensionAdminGetRangeInputUserActivityCounties();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminGetRangeInputUserActivityCounties[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionAdminQueryCustomizerCounty.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionAdminGetRangeInputUserActivityCounties.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminGetRangeInputUserActivityCounties> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminGetRangeInputUserActivityCounties>[]
        : json.map((value) => EdemokraciaExtensionAdminGetRangeInputUserActivityCounties.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminGetRangeInputUserActivityCounties && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminGetRangeInputUserActivityCounties copyWith({
    dynamic owner,
    EdemokraciaExtensionAdminQueryCustomizerCounty queryCustomizer,
  }) {
    EdemokraciaExtensionAdminGetRangeInputUserActivityCounties copy = EdemokraciaExtensionAdminGetRangeInputUserActivityCounties();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionAdminQueryCustomizerDistrict queryCustomizer;
  EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionAdminQueryCustomizerDistrict.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts>[]
        : json.map((value) => EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts copyWith({
    dynamic owner,
    EdemokraciaExtensionAdminQueryCustomizerDistrict queryCustomizer,
  }) {
    EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts copy = EdemokraciaExtensionAdminGetRangeInputUserActivityDistricts();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

class EdemokraciaExtensionAdminGetRangeInputUserVotes extends RestSerializable {
  dynamic owner;

  EdemokraciaExtensionAdminQueryCustomizerSimpleVote queryCustomizer;
  EdemokraciaExtensionAdminGetRangeInputUserVotes();

  @override
  String toString() {
    return 'EdemokraciaExtensionAdminGetRangeInputUserVotes[owner=$owner,queryCustomizer=$queryCustomizer]';
  }

  @override
  fromJson(dynamic json) {
    if (json == null) return;

    owner = json[r'owner'];
    queryCustomizer = (json[r'queryCustomizer'] == null) ? null : EdemokraciaExtensionAdminQueryCustomizerSimpleVote.fromJson(json[r'queryCustomizer']);
  }

  EdemokraciaExtensionAdminGetRangeInputUserVotes.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    json[r'owner'] = owner != null ? owner.toJson() : null;
    json[r'queryCustomizer'] = queryCustomizer != null ? queryCustomizer.toJson() : null;

    return json;
  }

  static List<EdemokraciaExtensionAdminGetRangeInputUserVotes> listFromJson(List<dynamic> json) {
    return json == null
        ? <EdemokraciaExtensionAdminGetRangeInputUserVotes>[]
        : json.map((value) => EdemokraciaExtensionAdminGetRangeInputUserVotes.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is EdemokraciaExtensionAdminGetRangeInputUserVotes && runtimeType == other.runtimeType) {
      return owner == other.owner && queryCustomizer == other.queryCustomizer;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (owner != null) {
      hashCode = hashCode * 31 + owner.hashCode;
    }

    if (queryCustomizer != null) {
      hashCode = hashCode * 31 + queryCustomizer.hashCode;
    }

    return hashCode;
  }

  EdemokraciaExtensionAdminGetRangeInputUserVotes copyWith({
    dynamic owner,
    EdemokraciaExtensionAdminQueryCustomizerSimpleVote queryCustomizer,
  }) {
    EdemokraciaExtensionAdminGetRangeInputUserVotes copy = EdemokraciaExtensionAdminGetRangeInputUserVotes();
    owner ??= this.owner;
    queryCustomizer ??= this.queryCustomizer;

    copy.owner = owner?.copyWith();
    copy.queryCustomizer = queryCustomizer?.copyWith();

    return copy;
  }
}

/// Extra
class SingleReference extends RestSerializable {
  /* Signed ID of referenced instance */
  String internal__signedIdentifier;
  SingleReference();

  @override
  String toString() {
    return 'SingleReference[internal__signedIdentifier=$internal__signedIdentifier, ]';
  }

  fromJson(dynamic json) {
    if (json == null) return;

    internal__signedIdentifier = (json[r'__signedIdentifier'] == null) ? null : (json[r'__signedIdentifier'] as String);
  }

  SingleReference.fromJson(dynamic json) {
    fromJson(json);
  }

  @override
  dynamic toJson() {
    final json = <String, dynamic>{};
    if (internal__signedIdentifier != null) {
      json[r'__signedIdentifier'] = internal__signedIdentifier;
    } else {
      json[r'__signedIdentifier'] = null;
    }
    return json;
  }

  static List<SingleReference> listFromJson(List<dynamic> json) {
    return json == null ? <SingleReference>[] : json.map((value) => SingleReference.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is SingleReference && runtimeType == other.runtimeType) {
      return internal__signedIdentifier == other.internal__signedIdentifier;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (internal__signedIdentifier != null) {
      hashCode = hashCode * 31 + internal__signedIdentifier.hashCode;
    }

    return hashCode;
  }

  SingleReference copyWith({
    String internal__signedIdentifier,
  }) {
    SingleReference copy = SingleReference();
    internal__signedIdentifier ??= this.internal__signedIdentifier;

    copy.internal__signedIdentifier = internal__signedIdentifier;

    return copy;
  }
}

class JudoToken extends RestSerializable {
  String token;

  JudoToken();

  @override
  String toString() {
    return 'JudoToken[token=$token, ]';
  }

  fromJson(dynamic json) {
    if (json == null) return;

    token = (json[r'token'] == null) ? null : (json[r'token'] as String);
  }

  JudoToken.fromJson(dynamic json) {
    fromJson(json);
  }

  dynamic toJson() {
    final json = <String, dynamic>{};
    if (token != null) {
      json[r'token'] = token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  static List<JudoToken> listFromJson(List<dynamic> json) {
    return json == null ? <JudoToken>[] : json.map((value) => JudoToken.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is JudoToken && runtimeType == other.runtimeType) {
      return token == other.token;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (token != null) {
      hashCode = hashCode * 31 + token.hashCode;
    }

    return hashCode;
  }

  JudoToken copyWith({
    String token,
  }) {
    JudoToken copy = JudoToken();
    token ??= this.token;

    copy.token = token;

    return copy;
  }
}

class JudoUploadFile extends RestSerializable {
  String cType;

  String field;

  String id;

  String name;

  int size;

  String token;

  String url;

  JudoUploadFile();

  @override
  String toString() {
    return 'JudoUploadFile[cType=$cType, field=$field, id=$id, name=$name, size=$size, token=$token, url=$url,]';
  }

  fromJson(dynamic json) async {
    if (json == null) return;
    cType = (json[r'cType'] == null) ? null : (json[r'cType'] as String);
    field = (json[r'field'] == null) ? null : (json[r'field'] as String);
    id = (json[r'id'] == null) ? null : (json[r'id'] as String);
    name = (json[r'name'] == null) ? null : (json[r'name'] as String);
    size = (json[r'size'] == null) ? null : (json[r'size'] as int);
    token = (json[r'token'] == null) ? null : (json[r'token'] as String);
    url = (json[r'url'] == null) ? null : (json[r'url'] as String);
  }

  JudoUploadFile.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'cType'] = cType != null ? cType : null;
    json[r'field'] = field != null ? field : null;
    json[r'id'] = id != null ? id : null;
    json[r'name'] = name != null ? name : null;
    json[r'size'] = size != null ? size : null;
    json[r'token'] = token != null ? token : null;
    json[r'url'] = url != null ? url : null;
    return json;
  }

  static List<JudoUploadFile> listFromJson(List<dynamic> json) {
    return json == null ? <JudoUploadFile>[] : json.map((value) => JudoUploadFile.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is JudoUploadFile && runtimeType == other.runtimeType) {
      return cType == other.cType &&
          field == other.field &&
          id == other.id &&
          name == other.name &&
          size == other.size &&
          token == other.token &&
          url == other.url;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (cType != null) {
      hashCode = hashCode * 31 + cType.hashCode;
    }

    if (field != null) {
      hashCode = hashCode * 31 + field.hashCode;
    }

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (name != null) {
      hashCode = hashCode * 31 + name.hashCode;
    }

    if (size != null) {
      hashCode = hashCode * 31 + size.hashCode;
    }

    if (token != null) {
      hashCode = hashCode * 31 + token.hashCode;
    }

    if (url != null) {
      hashCode = hashCode * 31 + url.hashCode;
    }

    return hashCode;
  }

  JudoUploadFile copyWith({
    String cType,
    String field,
    String id,
    String name,
    int size,
    String token,
    String url,
  }) {
    JudoUploadFile copy = JudoUploadFile();
    cType ??= this.cType;
    field ??= this.field;
    id ??= this.id;
    name ??= this.name;
    size ??= this.size;
    token ??= this.token;
    url ??= this.url;

    copy.cType = cType;
    copy.field = field;
    copy.id = id;
    copy.name = name;
    copy.size = size;
    copy.token = token;
    copy.url = url;

    return copy;
  }
}

class JudoUploadData extends RestSerializable {
  List<JudoUploadFile> files = [];
  String finished;

  JudoUploadData();

  @override
  String toString() {
    return 'JudoUploadData[files=$files, finished=$finished, ]';
  }

  fromJson(dynamic json) {
    if (json == null) return;

    {
      finished = (json[r'finished'] == null) ? null : (json[r'finished'] as String);
      final _jsonData = json[r'files'];
      files = (_jsonData == null)
          ? null
          : ((dynamic data) {
              return JudoUploadFile.listFromJson(data);
            }(_jsonData));
    }
  }

  JudoUploadData.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (files != null) {
      json[r'files'] = files.map((v) => v.toJson()).toList();
    } else {
      json[r'files'] = null;
    }
    if (finished != null) {
      json[r'finished'] = finished;
    } else {
      json[r'finished'] = null;
    }
    return json;
  }

  static List<JudoUploadData> listFromJson(List<dynamic> json) {
    return json == null ? <JudoUploadData>[] : json.map((value) => JudoUploadData.fromJson(value)).toList();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is JudoUploadData && runtimeType == other.runtimeType) {
      return const ListEquality().equals(files, other.files) && finished == other.finished;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (files != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(files);
    }

    if (finished != null) {
      hashCode = hashCode * 31 + finished.hashCode;
    }

    return hashCode;
  }

  JudoUploadData copyWith({String finished, List<JudoUploadFile> files}) {
    JudoUploadData copy = JudoUploadData();
    files ??= this.files;
    finished ??= this.finished;

    copy.files = (files == null)
        ? null
        : ((data) {
            return (data as List<JudoUploadFile>).map((data) => data.copyWith()).toList();
          }(files));
    copy.finished = finished;

    return copy;
  }
}

class JudoDownloadFile {
  Blob file;
  String filename;

  JudoDownloadFile(this.file, this.filename);
}

class EdemokraciaIdentifier {}
