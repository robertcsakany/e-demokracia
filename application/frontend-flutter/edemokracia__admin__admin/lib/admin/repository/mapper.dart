//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryFolderPath(#application.actor)+'mapper.dart'
// Template name: lib/repositories/repository_store_mapper.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.repository;

class AdminAdminRepositoryStoreMapper {
  // MAPPERS FOR City
  static CityStore createCityStoreFromEdemokraciaCity(dynamic city) {
    if (city == null) {
      return null;
    }
    var store = CityStore();
    mapEdemokraciaCityToCityStore(city, store);
    return store;
  }

  static void mapEdemokraciaCityToCityStore(dynamic city, CityStore store) {
    // Identifier
    store.internal__identifier = city['__identifier'];
    store.internal__signedIdentifier = city['__signedIdentifier'];
    store.internal__referenceIdentifier = city['__referenceId'];
    store.internal__entityType = city['__entityType'];
    store.internal__updatable = city['__updateable'];
    store.internal__deletable = city['__deleteable'];

    if (city != null && city.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.name = city['name'];
    // Relations
    if (city['districts'] != null) {
      store.districts.addAll(city['districts'].map<DistrictStore>((district) {
        var store = DistrictStore();
        mapEdemokraciaDistrictToDistrictStore(district, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaCityFromCityStore(CityStore store) {
    if (store == null) {
      return null;
    }
    var city = {};
    mapCityStoreToEdemokraciaCity(store, city);
    return city;
  }

  static void mapCityStoreToEdemokraciaCity(CityStore store, dynamic city) {
    city['__identifier'] = store.internal__identifier;
    city['__signedIdentifier'] = store.internal__signedIdentifier;
    city['__entityType'] = store.internal__entityType;
    city['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'name')) {
      city['name'] = store.name;
    }

    /// Relations
    if (store.changedFields.contains(r'districts')) {
      city['districts'] = store.districts.map<dynamic>(createEdemokraciaDistrictFromDistrictStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCity(CityStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCity = {};
    optionalCity['__identifier'] = store.internal__identifier;
    optionalCity['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalCity['__entityType'] = store.internal__entityType;
    optionalCity['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'name')) {
      optionalCity['name'] = store.name;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'districts')) {
      optionalCity['districts'] = store.districts.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesDistrict).toList();
    }
    return optionalCity;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR CloseDebateInput
  static CloseDebateInputStore createCloseDebateInputStoreFromEdemokraciaCloseDebateInput(dynamic closeDebateInput) {
    if (closeDebateInput == null) {
      return null;
    }
    var store = CloseDebateInputStore();
    mapEdemokraciaCloseDebateInputToCloseDebateInputStore(closeDebateInput, store);
    return store;
  }

  static void mapEdemokraciaCloseDebateInputToCloseDebateInputStore(dynamic closeDebateInput, CloseDebateInputStore store) {
    // Identifier
    if (closeDebateInput != null && closeDebateInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = closeDebateInput['closeAt'] != null ? DateTime.tryParse(closeDebateInput['closeAt']).toLocal() : null;
    store.description = closeDebateInput['description'];
    store.title = closeDebateInput['title'];
    if (closeDebateInput['voteType'] != null) {
      store.voteType = enumFromString<EdemokraciaVoteTypeOnCloseDebate>(EdemokraciaVoteTypeOnCloseDebate.values, closeDebateInput['voteType']);
    }
    // Relations
  }

  static dynamic createEdemokraciaCloseDebateInputFromCloseDebateInputStore(CloseDebateInputStore store) {
    if (store == null) {
      return null;
    }
    var closeDebateInput = {};
    mapCloseDebateInputStoreToEdemokraciaCloseDebateInput(store, closeDebateInput);
    return closeDebateInput;
  }

  static void mapCloseDebateInputStoreToEdemokraciaCloseDebateInput(CloseDebateInputStore store, dynamic closeDebateInput) {
    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      closeDebateInput['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      closeDebateInput['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      closeDebateInput['title'] = store.title;
    }
    if (store.changedFields.contains(r'voteType')) {
      closeDebateInput['voteType'] = store.voteType != null ? store.voteType.toString().split('.').last : null;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCloseDebateInput(CloseDebateInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCloseDebateInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalCloseDebateInput['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalCloseDebateInput['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalCloseDebateInput['title'] = store.title;
    }
    if (keepAllFields || store.changedFields.contains(r'voteType')) {
      optionalCloseDebateInput['voteType'] = store.voteType != null ? store.voteType.toString().split('.').last : null;
    }

    // Relations
    return optionalCloseDebateInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Comment
  static CommentStore createCommentStoreFromEdemokraciaComment(dynamic comment) {
    if (comment == null) {
      return null;
    }
    var store = CommentStore();
    mapEdemokraciaCommentToCommentStore(comment, store);
    return store;
  }

  static void mapEdemokraciaCommentToCommentStore(dynamic comment, CommentStore store) {
    // Identifier
    store.internal__identifier = comment['__identifier'];
    store.internal__signedIdentifier = comment['__signedIdentifier'];
    store.internal__referenceIdentifier = comment['__referenceId'];
    store.internal__entityType = comment['__entityType'];
    store.internal__updatable = comment['__updateable'];
    store.internal__deletable = comment['__deleteable'];

    if (comment != null && comment.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.comment = comment['comment'];
    store.created = comment['created'] != null ? DateTime.tryParse(comment['created']).toLocal() : null;
    // Relations
    if (comment['votes'] != null) {
      store.votes.addAll(comment['votes'].map<SimpleVoteStore>((simpleVote) {
        var store = SimpleVoteStore();
        mapEdemokraciaSimpleVoteToSimpleVoteStore(simpleVote, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaCommentFromCommentStore(CommentStore store) {
    if (store == null) {
      return null;
    }
    var comment = {};
    mapCommentStoreToEdemokraciaComment(store, comment);
    return comment;
  }

  static void mapCommentStoreToEdemokraciaComment(CommentStore store, dynamic comment) {
    comment['__identifier'] = store.internal__identifier;
    comment['__signedIdentifier'] = store.internal__signedIdentifier;
    comment['__entityType'] = store.internal__entityType;
    comment['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'comment')) {
      comment['comment'] = store.comment;
    }
    if (store.changedFields.contains(r'created')) {
      comment['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }

    /// Relations
    if (store.changedFields.contains(r'votes')) {
      comment['votes'] = store.votes.map<dynamic>(createEdemokraciaSimpleVoteFromSimpleVoteStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesComment(CommentStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalComment = {};
    optionalComment['__identifier'] = store.internal__identifier;
    optionalComment['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalComment['__entityType'] = store.internal__entityType;
    optionalComment['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'comment')) {
      optionalComment['comment'] = store.comment;
    }
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalComment['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'votes')) {
      optionalComment['votes'] = store.votes.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesSimpleVote).toList();
    }
    return optionalComment;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Con
  static ConStore createConStoreFromEdemokraciaCon(dynamic con) {
    if (con == null) {
      return null;
    }
    var store = ConStore();
    mapEdemokraciaConToConStore(con, store);
    return store;
  }

  static void mapEdemokraciaConToConStore(dynamic con, ConStore store) {
    // Identifier
    store.internal__identifier = con['__identifier'];
    store.internal__signedIdentifier = con['__signedIdentifier'];
    store.internal__referenceIdentifier = con['__referenceId'];
    store.internal__entityType = con['__entityType'];
    store.internal__updatable = con['__updateable'];
    store.internal__deletable = con['__deleteable'];

    if (con != null && con.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = con['created'] != null ? DateTime.tryParse(con['created']).toLocal() : null;
    store.description = con['description'];
    store.title = con['title'];
    // Relations
    if (con['comments'] != null) {
      store.comments.addAll(con['comments'].map<CommentStore>((comment) {
        var store = CommentStore();
        mapEdemokraciaCommentToCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (con['cons'] != null) {
      store.cons.addAll(con['cons'].map<ConStore>((con) {
        var store = ConStore();
        mapEdemokraciaConToConStore(con, store);
        return store;
      }).toList());
    }
    if (con['pros'] != null) {
      store.pros.addAll(con['pros'].map<ProStore>((pro) {
        var store = ProStore();
        mapEdemokraciaProToProStore(pro, store);
        return store;
      }).toList());
    }
    if (con['votes'] != null) {
      store.votes.addAll(con['votes'].map<SimpleVoteStore>((simpleVote) {
        var store = SimpleVoteStore();
        mapEdemokraciaSimpleVoteToSimpleVoteStore(simpleVote, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaConFromConStore(ConStore store) {
    if (store == null) {
      return null;
    }
    var con = {};
    mapConStoreToEdemokraciaCon(store, con);
    return con;
  }

  static void mapConStoreToEdemokraciaCon(ConStore store, dynamic con) {
    con['__identifier'] = store.internal__identifier;
    con['__signedIdentifier'] = store.internal__signedIdentifier;
    con['__entityType'] = store.internal__entityType;
    con['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      con['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      con['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      con['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'comments')) {
      con['comments'] = store.comments.map<dynamic>(createEdemokraciaCommentFromCommentStore).toList();
    }
    if (store.changedFields.contains(r'cons')) {
      con['cons'] = store.cons.map<dynamic>(createEdemokraciaConFromConStore).toList();
    }
    if (store.changedFields.contains(r'pros')) {
      con['pros'] = store.pros.map<dynamic>(createEdemokraciaProFromProStore).toList();
    }
    if (store.changedFields.contains(r'votes')) {
      con['votes'] = store.votes.map<dynamic>(createEdemokraciaSimpleVoteFromSimpleVoteStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCon(ConStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCon = {};
    optionalCon['__identifier'] = store.internal__identifier;
    optionalCon['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalCon['__entityType'] = store.internal__entityType;
    optionalCon['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalCon['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalCon['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalCon['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'comments')) {
      optionalCon['comments'] = store.comments.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesComment).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'cons')) {
      optionalCon['cons'] = store.cons.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesCon).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'pros')) {
      optionalCon['pros'] = store.pros.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesPro).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'votes')) {
      optionalCon['votes'] = store.votes.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesSimpleVote).toList();
    }
    return optionalCon;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR County
  static CountyStore createCountyStoreFromEdemokraciaCounty(dynamic county) {
    if (county == null) {
      return null;
    }
    var store = CountyStore();
    mapEdemokraciaCountyToCountyStore(county, store);
    return store;
  }

  static void mapEdemokraciaCountyToCountyStore(dynamic county, CountyStore store) {
    // Identifier
    store.internal__identifier = county['__identifier'];
    store.internal__signedIdentifier = county['__signedIdentifier'];
    store.internal__referenceIdentifier = county['__referenceId'];
    store.internal__entityType = county['__entityType'];
    store.internal__updatable = county['__updateable'];
    store.internal__deletable = county['__deleteable'];

    if (county != null && county.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.name = county['name'];
    // Relations
    if (county['cities'] != null) {
      store.cities.addAll(county['cities'].map<CityStore>((city) {
        var store = CityStore();
        mapEdemokraciaCityToCityStore(city, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaCountyFromCountyStore(CountyStore store) {
    if (store == null) {
      return null;
    }
    var county = {};
    mapCountyStoreToEdemokraciaCounty(store, county);
    return county;
  }

  static void mapCountyStoreToEdemokraciaCounty(CountyStore store, dynamic county) {
    county['__identifier'] = store.internal__identifier;
    county['__signedIdentifier'] = store.internal__signedIdentifier;
    county['__entityType'] = store.internal__entityType;
    county['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'name')) {
      county['name'] = store.name;
    }

    /// Relations
    if (store.changedFields.contains(r'cities')) {
      county['cities'] = store.cities.map<dynamic>(createEdemokraciaCityFromCityStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCounty(CountyStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCounty = {};
    optionalCounty['__identifier'] = store.internal__identifier;
    optionalCounty['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalCounty['__entityType'] = store.internal__entityType;
    optionalCounty['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'name')) {
      optionalCounty['name'] = store.name;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'cities')) {
      optionalCounty['cities'] = store.cities.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesCity).toList();
    }
    return optionalCounty;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR CreateArgumentInput
  static CreateArgumentInputStore createCreateArgumentInputStoreFromEdemokraciaCreateArgumentInput(dynamic createArgumentInput) {
    if (createArgumentInput == null) {
      return null;
    }
    var store = CreateArgumentInputStore();
    mapEdemokraciaCreateArgumentInputToCreateArgumentInputStore(createArgumentInput, store);
    return store;
  }

  static void mapEdemokraciaCreateArgumentInputToCreateArgumentInputStore(dynamic createArgumentInput, CreateArgumentInputStore store) {
    // Identifier
    if (createArgumentInput != null && createArgumentInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.description = createArgumentInput['description'];
    store.title = createArgumentInput['title'];
    if (createArgumentInput['type'] != null) {
      store.type = enumFromString<EdemokraciaCreateArgumentInputType>(EdemokraciaCreateArgumentInputType.values, createArgumentInput['type']);
    }
    // Relations
  }

  static dynamic createEdemokraciaCreateArgumentInputFromCreateArgumentInputStore(CreateArgumentInputStore store) {
    if (store == null) {
      return null;
    }
    var createArgumentInput = {};
    mapCreateArgumentInputStoreToEdemokraciaCreateArgumentInput(store, createArgumentInput);
    return createArgumentInput;
  }

  static void mapCreateArgumentInputStoreToEdemokraciaCreateArgumentInput(CreateArgumentInputStore store, dynamic createArgumentInput) {
    /// Attributes
    if (store.changedFields.contains(r'description')) {
      createArgumentInput['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      createArgumentInput['title'] = store.title;
    }
    if (store.changedFields.contains(r'type')) {
      createArgumentInput['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCreateArgumentInput(CreateArgumentInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCreateArgumentInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalCreateArgumentInput['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalCreateArgumentInput['title'] = store.title;
    }
    if (keepAllFields || store.changedFields.contains(r'type')) {
      optionalCreateArgumentInput['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    // Relations
    return optionalCreateArgumentInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR CreateCommentInput
  static CreateCommentInputStore createCreateCommentInputStoreFromEdemokraciaCreateCommentInput(dynamic createCommentInput) {
    if (createCommentInput == null) {
      return null;
    }
    var store = CreateCommentInputStore();
    mapEdemokraciaCreateCommentInputToCreateCommentInputStore(createCommentInput, store);
    return store;
  }

  static void mapEdemokraciaCreateCommentInputToCreateCommentInputStore(dynamic createCommentInput, CreateCommentInputStore store) {
    // Identifier
    if (createCommentInput != null && createCommentInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.comment = createCommentInput['comment'];
    // Relations
  }

  static dynamic createEdemokraciaCreateCommentInputFromCreateCommentInputStore(CreateCommentInputStore store) {
    if (store == null) {
      return null;
    }
    var createCommentInput = {};
    mapCreateCommentInputStoreToEdemokraciaCreateCommentInput(store, createCommentInput);
    return createCommentInput;
  }

  static void mapCreateCommentInputStoreToEdemokraciaCreateCommentInput(CreateCommentInputStore store, dynamic createCommentInput) {
    /// Attributes
    if (store.changedFields.contains(r'comment')) {
      createCommentInput['comment'] = store.comment;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCreateCommentInput(CreateCommentInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCreateCommentInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'comment')) {
      optionalCreateCommentInput['comment'] = store.comment;
    }

    // Relations
    return optionalCreateCommentInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR CreateDebateInput
  static CreateDebateInputStore createCreateDebateInputStoreFromEdemokraciaCreateDebateInput(dynamic createDebateInput) {
    if (createDebateInput == null) {
      return null;
    }
    var store = CreateDebateInputStore();
    mapEdemokraciaCreateDebateInputToCreateDebateInputStore(createDebateInput, store);
    return store;
  }

  static void mapEdemokraciaCreateDebateInputToCreateDebateInputStore(dynamic createDebateInput, CreateDebateInputStore store) {
    // Identifier
    if (createDebateInput != null && createDebateInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = createDebateInput['closeAt'] != null ? DateTime.tryParse(createDebateInput['closeAt']).toLocal() : null;
    store.description = createDebateInput['description'];
    store.title = createDebateInput['title'];
    // Relations
  }

  static dynamic createEdemokraciaCreateDebateInputFromCreateDebateInputStore(CreateDebateInputStore store) {
    if (store == null) {
      return null;
    }
    var createDebateInput = {};
    mapCreateDebateInputStoreToEdemokraciaCreateDebateInput(store, createDebateInput);
    return createDebateInput;
  }

  static void mapCreateDebateInputStoreToEdemokraciaCreateDebateInput(CreateDebateInputStore store, dynamic createDebateInput) {
    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      createDebateInput['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      createDebateInput['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      createDebateInput['title'] = store.title;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesCreateDebateInput(CreateDebateInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCreateDebateInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalCreateDebateInput['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalCreateDebateInput['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalCreateDebateInput['title'] = store.title;
    }

    // Relations
    return optionalCreateDebateInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Debate
  static DebateStore createDebateStoreFromEdemokraciaDebate(dynamic debate) {
    if (debate == null) {
      return null;
    }
    var store = DebateStore();
    mapEdemokraciaDebateToDebateStore(debate, store);
    return store;
  }

  static void mapEdemokraciaDebateToDebateStore(dynamic debate, DebateStore store) {
    // Identifier
    store.internal__identifier = debate['__identifier'];
    store.internal__signedIdentifier = debate['__signedIdentifier'];
    store.internal__referenceIdentifier = debate['__referenceId'];
    store.internal__entityType = debate['__entityType'];
    store.internal__updatable = debate['__updateable'];
    store.internal__deletable = debate['__deleteable'];

    if (debate != null && debate.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = debate['closeAt'] != null ? DateTime.tryParse(debate['closeAt']).toLocal() : null;
    store.description = debate['description'];
    if (debate['status'] != null) {
      store.status = enumFromString<EdemokraciaDebateStatus>(EdemokraciaDebateStatus.values, debate['status']);
    }
    store.title = debate['title'];
    // Relations
    if (debate['comments'] != null) {
      store.comments.addAll(debate['comments'].map<CommentStore>((comment) {
        var store = CommentStore();
        mapEdemokraciaCommentToCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (debate['cons'] != null) {
      store.cons.addAll(debate['cons'].map<ConStore>((con) {
        var store = ConStore();
        mapEdemokraciaConToConStore(con, store);
        return store;
      }).toList());
    }
    if (debate['debateVote'] != null) {
      var debateVote = VoteDefinitionStore();
      mapEdemokraciaVoteDefinitionToVoteDefinitionStore(debate['debateVote'], debateVote);
      store.setDebateVote(debateVote);
    }
    if (debate['pros'] != null) {
      store.pros.addAll(debate['pros'].map<ProStore>((pro) {
        var store = ProStore();
        mapEdemokraciaProToProStore(pro, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaDebateFromDebateStore(DebateStore store) {
    if (store == null) {
      return null;
    }
    var debate = {};
    mapDebateStoreToEdemokraciaDebate(store, debate);
    return debate;
  }

  static void mapDebateStoreToEdemokraciaDebate(DebateStore store, dynamic debate) {
    debate['__identifier'] = store.internal__identifier;
    debate['__signedIdentifier'] = store.internal__signedIdentifier;
    debate['__entityType'] = store.internal__entityType;
    debate['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      debate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      debate['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      debate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      debate['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'comments')) {
      debate['comments'] = store.comments.map<dynamic>(createEdemokraciaCommentFromCommentStore).toList();
    }
    if (store.changedFields.contains(r'cons')) {
      debate['cons'] = store.cons.map<dynamic>(createEdemokraciaConFromConStore).toList();
    }
    if (store.changedFields.contains(r'debateVote')) {
      debate['debateVote'] = createEdemokraciaVoteDefinitionFromVoteDefinitionStore(store.debateVote);
    }
    if (store.changedFields.contains(r'pros')) {
      debate['pros'] = store.pros.map<dynamic>(createEdemokraciaProFromProStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesDebate(DebateStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalDebate = {};
    optionalDebate['__identifier'] = store.internal__identifier;
    optionalDebate['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalDebate['__entityType'] = store.internal__entityType;
    optionalDebate['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalDebate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalDebate['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalDebate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalDebate['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'comments')) {
      optionalDebate['comments'] = store.comments.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesComment).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'cons')) {
      optionalDebate['cons'] = store.cons.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesCon).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'debateVote')) {
      optionalDebate['debateVote'] = createEdemokraciaOptionalTransferobjecttypesVoteDefinition(store.debateVote);
    }
    if (keepAllFields || store.changedFields.contains(r'pros')) {
      optionalDebate['pros'] = store.pros.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesPro).toList();
    }
    return optionalDebate;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR District
  static DistrictStore createDistrictStoreFromEdemokraciaDistrict(dynamic district) {
    if (district == null) {
      return null;
    }
    var store = DistrictStore();
    mapEdemokraciaDistrictToDistrictStore(district, store);
    return store;
  }

  static void mapEdemokraciaDistrictToDistrictStore(dynamic district, DistrictStore store) {
    // Identifier
    store.internal__identifier = district['__identifier'];
    store.internal__signedIdentifier = district['__signedIdentifier'];
    store.internal__referenceIdentifier = district['__referenceId'];
    store.internal__entityType = district['__entityType'];
    store.internal__updatable = district['__updateable'];
    store.internal__deletable = district['__deleteable'];

    if (district != null && district.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.name = district['name'];
    // Relations
  }

  static dynamic createEdemokraciaDistrictFromDistrictStore(DistrictStore store) {
    if (store == null) {
      return null;
    }
    var district = {};
    mapDistrictStoreToEdemokraciaDistrict(store, district);
    return district;
  }

  static void mapDistrictStoreToEdemokraciaDistrict(DistrictStore store, dynamic district) {
    district['__identifier'] = store.internal__identifier;
    district['__signedIdentifier'] = store.internal__signedIdentifier;
    district['__entityType'] = store.internal__entityType;
    district['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'name')) {
      district['name'] = store.name;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesDistrict(DistrictStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalDistrict = {};
    optionalDistrict['__identifier'] = store.internal__identifier;
    optionalDistrict['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalDistrict['__entityType'] = store.internal__entityType;
    optionalDistrict['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'name')) {
      optionalDistrict['name'] = store.name;
    }

    // Relations
    return optionalDistrict;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Issue
  static IssueStore createIssueStoreFromEdemokraciaIssue(dynamic issue) {
    if (issue == null) {
      return null;
    }
    var store = IssueStore();
    mapEdemokraciaIssueToIssueStore(issue, store);
    return store;
  }

  static void mapEdemokraciaIssueToIssueStore(dynamic issue, IssueStore store) {
    // Identifier
    store.internal__identifier = issue['__identifier'];
    store.internal__signedIdentifier = issue['__signedIdentifier'];
    store.internal__referenceIdentifier = issue['__referenceId'];
    store.internal__entityType = issue['__entityType'];
    store.internal__updatable = issue['__updateable'];
    store.internal__deletable = issue['__deleteable'];

    if (issue != null && issue.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = issue['created'] != null ? DateTime.tryParse(issue['created']).toLocal() : null;
    store.description = issue['description'];
    if (issue['status'] != null) {
      store.status = enumFromString<EdemokraciaIssueStatus>(EdemokraciaIssueStatus.values, issue['status']);
    }
    store.title = issue['title'];
    // Relations
    if (issue['attachments'] != null) {
      store.attachments.addAll(issue['attachments'].map<IssueAttachmentStore>((issueAttachment) {
        var store = IssueAttachmentStore();
        mapEdemokraciaIssueAttachmentToIssueAttachmentStore(issueAttachment, store);
        return store;
      }).toList());
    }
    if (issue['comments'] != null) {
      store.comments.addAll(issue['comments'].map<CommentStore>((comment) {
        var store = CommentStore();
        mapEdemokraciaCommentToCommentStore(comment, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaIssueFromIssueStore(IssueStore store) {
    if (store == null) {
      return null;
    }
    var issue = {};
    mapIssueStoreToEdemokraciaIssue(store, issue);
    return issue;
  }

  static void mapIssueStoreToEdemokraciaIssue(IssueStore store, dynamic issue) {
    issue['__identifier'] = store.internal__identifier;
    issue['__signedIdentifier'] = store.internal__signedIdentifier;
    issue['__entityType'] = store.internal__entityType;
    issue['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      issue['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      issue['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      issue['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      issue['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'attachments')) {
      issue['attachments'] = store.attachments.map<dynamic>(createEdemokraciaIssueAttachmentFromIssueAttachmentStore).toList();
    }
    if (store.changedFields.contains(r'comments')) {
      issue['comments'] = store.comments.map<dynamic>(createEdemokraciaCommentFromCommentStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesIssue(IssueStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssue = {};
    optionalIssue['__identifier'] = store.internal__identifier;
    optionalIssue['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssue['__entityType'] = store.internal__entityType;
    optionalIssue['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalIssue['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalIssue['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalIssue['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalIssue['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'attachments')) {
      optionalIssue['attachments'] = store.attachments.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesIssueAttachment).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'comments')) {
      optionalIssue['comments'] = store.comments.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesComment).toList();
    }
    return optionalIssue;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR IssueAttachment
  static IssueAttachmentStore createIssueAttachmentStoreFromEdemokraciaIssueAttachment(dynamic issueAttachment) {
    if (issueAttachment == null) {
      return null;
    }
    var store = IssueAttachmentStore();
    mapEdemokraciaIssueAttachmentToIssueAttachmentStore(issueAttachment, store);
    return store;
  }

  static void mapEdemokraciaIssueAttachmentToIssueAttachmentStore(dynamic issueAttachment, IssueAttachmentStore store) {
    // Identifier
    store.internal__identifier = issueAttachment['__identifier'];
    store.internal__signedIdentifier = issueAttachment['__signedIdentifier'];
    store.internal__referenceIdentifier = issueAttachment['__referenceId'];
    store.internal__entityType = issueAttachment['__entityType'];
    store.internal__updatable = issueAttachment['__updateable'];
    store.internal__deletable = issueAttachment['__deleteable'];

    if (issueAttachment != null && issueAttachment.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.file = issueAttachment['file'];
    store.link = issueAttachment['link'];
    if (issueAttachment['type'] != null) {
      store.type = enumFromString<EdemokraciaAttachmentType>(EdemokraciaAttachmentType.values, issueAttachment['type']);
    }
    // Relations
  }

  static dynamic createEdemokraciaIssueAttachmentFromIssueAttachmentStore(IssueAttachmentStore store) {
    if (store == null) {
      return null;
    }
    var issueAttachment = {};
    mapIssueAttachmentStoreToEdemokraciaIssueAttachment(store, issueAttachment);
    return issueAttachment;
  }

  static void mapIssueAttachmentStoreToEdemokraciaIssueAttachment(IssueAttachmentStore store, dynamic issueAttachment) {
    issueAttachment['__identifier'] = store.internal__identifier;
    issueAttachment['__signedIdentifier'] = store.internal__signedIdentifier;
    issueAttachment['__entityType'] = store.internal__entityType;
    issueAttachment['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'file')) {
      issueAttachment['file'] = store.file;
    }
    if (store.changedFields.contains(r'link')) {
      issueAttachment['link'] = store.link;
    }
    if (store.changedFields.contains(r'type')) {
      issueAttachment['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesIssueAttachment(IssueAttachmentStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssueAttachment = {};
    optionalIssueAttachment['__identifier'] = store.internal__identifier;
    optionalIssueAttachment['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssueAttachment['__entityType'] = store.internal__entityType;
    optionalIssueAttachment['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'file')) {
      optionalIssueAttachment['file'] = store.file;
    }
    if (keepAllFields || store.changedFields.contains(r'link')) {
      optionalIssueAttachment['link'] = store.link;
    }
    if (keepAllFields || store.changedFields.contains(r'type')) {
      optionalIssueAttachment['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    // Relations
    return optionalIssueAttachment;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR IssueCategory
  static IssueCategoryStore createIssueCategoryStoreFromEdemokraciaIssueCategory(dynamic issueCategory) {
    if (issueCategory == null) {
      return null;
    }
    var store = IssueCategoryStore();
    mapEdemokraciaIssueCategoryToIssueCategoryStore(issueCategory, store);
    return store;
  }

  static void mapEdemokraciaIssueCategoryToIssueCategoryStore(dynamic issueCategory, IssueCategoryStore store) {
    // Identifier
    store.internal__identifier = issueCategory['__identifier'];
    store.internal__signedIdentifier = issueCategory['__signedIdentifier'];
    store.internal__referenceIdentifier = issueCategory['__referenceId'];
    store.internal__entityType = issueCategory['__entityType'];
    store.internal__updatable = issueCategory['__updateable'];
    store.internal__deletable = issueCategory['__deleteable'];

    if (issueCategory != null && issueCategory.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.description = issueCategory['description'];
    store.title = issueCategory['title'];
    // Relations
    if (issueCategory['subcategories'] != null) {
      store.subcategories.addAll(issueCategory['subcategories'].map<IssueCategoryStore>((issueCategory) {
        var store = IssueCategoryStore();
        mapEdemokraciaIssueCategoryToIssueCategoryStore(issueCategory, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaIssueCategoryFromIssueCategoryStore(IssueCategoryStore store) {
    if (store == null) {
      return null;
    }
    var issueCategory = {};
    mapIssueCategoryStoreToEdemokraciaIssueCategory(store, issueCategory);
    return issueCategory;
  }

  static void mapIssueCategoryStoreToEdemokraciaIssueCategory(IssueCategoryStore store, dynamic issueCategory) {
    issueCategory['__identifier'] = store.internal__identifier;
    issueCategory['__signedIdentifier'] = store.internal__signedIdentifier;
    issueCategory['__entityType'] = store.internal__entityType;
    issueCategory['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'description')) {
      issueCategory['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      issueCategory['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'subcategories')) {
      issueCategory['subcategories'] = store.subcategories.map<dynamic>(createEdemokraciaIssueCategoryFromIssueCategoryStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesIssueCategory(IssueCategoryStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssueCategory = {};
    optionalIssueCategory['__identifier'] = store.internal__identifier;
    optionalIssueCategory['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssueCategory['__entityType'] = store.internal__entityType;
    optionalIssueCategory['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalIssueCategory['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalIssueCategory['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'subcategories')) {
      optionalIssueCategory['subcategories'] = store.subcategories.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesIssueCategory).toList();
    }
    return optionalIssueCategory;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Pro
  static ProStore createProStoreFromEdemokraciaPro(dynamic pro) {
    if (pro == null) {
      return null;
    }
    var store = ProStore();
    mapEdemokraciaProToProStore(pro, store);
    return store;
  }

  static void mapEdemokraciaProToProStore(dynamic pro, ProStore store) {
    // Identifier
    store.internal__identifier = pro['__identifier'];
    store.internal__signedIdentifier = pro['__signedIdentifier'];
    store.internal__referenceIdentifier = pro['__referenceId'];
    store.internal__entityType = pro['__entityType'];
    store.internal__updatable = pro['__updateable'];
    store.internal__deletable = pro['__deleteable'];

    if (pro != null && pro.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = pro['created'] != null ? DateTime.tryParse(pro['created']).toLocal() : null;
    store.description = pro['description'];
    store.title = pro['title'];
    // Relations
    if (pro['comments'] != null) {
      store.comments.addAll(pro['comments'].map<CommentStore>((comment) {
        var store = CommentStore();
        mapEdemokraciaCommentToCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (pro['pros'] != null) {
      store.pros.addAll(pro['pros'].map<ProStore>((pro) {
        var store = ProStore();
        mapEdemokraciaProToProStore(pro, store);
        return store;
      }).toList());
    }
    if (pro['votes'] != null) {
      store.votes.addAll(pro['votes'].map<SimpleVoteStore>((simpleVote) {
        var store = SimpleVoteStore();
        mapEdemokraciaSimpleVoteToSimpleVoteStore(simpleVote, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaProFromProStore(ProStore store) {
    if (store == null) {
      return null;
    }
    var pro = {};
    mapProStoreToEdemokraciaPro(store, pro);
    return pro;
  }

  static void mapProStoreToEdemokraciaPro(ProStore store, dynamic pro) {
    pro['__identifier'] = store.internal__identifier;
    pro['__signedIdentifier'] = store.internal__signedIdentifier;
    pro['__entityType'] = store.internal__entityType;
    pro['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      pro['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      pro['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      pro['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'comments')) {
      pro['comments'] = store.comments.map<dynamic>(createEdemokraciaCommentFromCommentStore).toList();
    }
    if (store.changedFields.contains(r'pros')) {
      pro['pros'] = store.pros.map<dynamic>(createEdemokraciaProFromProStore).toList();
    }
    if (store.changedFields.contains(r'votes')) {
      pro['votes'] = store.votes.map<dynamic>(createEdemokraciaSimpleVoteFromSimpleVoteStore).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesPro(ProStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalPro = {};
    optionalPro['__identifier'] = store.internal__identifier;
    optionalPro['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalPro['__entityType'] = store.internal__entityType;
    optionalPro['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalPro['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalPro['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalPro['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'comments')) {
      optionalPro['comments'] = store.comments.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesComment).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'pros')) {
      optionalPro['pros'] = store.pros.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesPro).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'votes')) {
      optionalPro['votes'] = store.votes.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesSimpleVote).toList();
    }
    return optionalPro;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR RatingVoteInput
  static RatingVoteInputStore createRatingVoteInputStoreFromEdemokraciaRatingVoteInput(dynamic ratingVoteInput) {
    if (ratingVoteInput == null) {
      return null;
    }
    var store = RatingVoteInputStore();
    mapEdemokraciaRatingVoteInputToRatingVoteInputStore(ratingVoteInput, store);
    return store;
  }

  static void mapEdemokraciaRatingVoteInputToRatingVoteInputStore(dynamic ratingVoteInput, RatingVoteInputStore store) {
    // Identifier
    if (ratingVoteInput != null && ratingVoteInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.value = ratingVoteInput['value'];
    // Relations
  }

  static dynamic createEdemokraciaRatingVoteInputFromRatingVoteInputStore(RatingVoteInputStore store) {
    if (store == null) {
      return null;
    }
    var ratingVoteInput = {};
    mapRatingVoteInputStoreToEdemokraciaRatingVoteInput(store, ratingVoteInput);
    return ratingVoteInput;
  }

  static void mapRatingVoteInputStoreToEdemokraciaRatingVoteInput(RatingVoteInputStore store, dynamic ratingVoteInput) {
    /// Attributes
    if (store.changedFields.contains(r'value')) {
      ratingVoteInput['value'] = store.value;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesRatingVoteInput(RatingVoteInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalRatingVoteInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'value')) {
      optionalRatingVoteInput['value'] = store.value;
    }

    // Relations
    return optionalRatingVoteInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR SelectAnswerVoteSelection
  static SelectAnswerVoteSelectionStore createSelectAnswerVoteSelectionStoreFromEdemokraciaSelectAnswerVoteSelection(dynamic selectAnswerVoteSelection) {
    if (selectAnswerVoteSelection == null) {
      return null;
    }
    var store = SelectAnswerVoteSelectionStore();
    mapEdemokraciaSelectAnswerVoteSelectionToSelectAnswerVoteSelectionStore(selectAnswerVoteSelection, store);
    return store;
  }

  static void mapEdemokraciaSelectAnswerVoteSelectionToSelectAnswerVoteSelectionStore(dynamic selectAnswerVoteSelection, SelectAnswerVoteSelectionStore store) {
    // Identifier
    store.internal__identifier = selectAnswerVoteSelection['__identifier'];
    store.internal__signedIdentifier = selectAnswerVoteSelection['__signedIdentifier'];
    store.internal__referenceIdentifier = selectAnswerVoteSelection['__referenceId'];
    store.internal__entityType = selectAnswerVoteSelection['__entityType'];
    store.internal__updatable = selectAnswerVoteSelection['__updateable'];
    store.internal__deletable = selectAnswerVoteSelection['__deleteable'];

    if (selectAnswerVoteSelection != null && selectAnswerVoteSelection.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.description = selectAnswerVoteSelection['description'];
    store.title = selectAnswerVoteSelection['title'];
    // Relations
  }

  static dynamic createEdemokraciaSelectAnswerVoteSelectionFromSelectAnswerVoteSelectionStore(SelectAnswerVoteSelectionStore store) {
    if (store == null) {
      return null;
    }
    var selectAnswerVoteSelection = {};
    mapSelectAnswerVoteSelectionStoreToEdemokraciaSelectAnswerVoteSelection(store, selectAnswerVoteSelection);
    return selectAnswerVoteSelection;
  }

  static void mapSelectAnswerVoteSelectionStoreToEdemokraciaSelectAnswerVoteSelection(SelectAnswerVoteSelectionStore store, dynamic selectAnswerVoteSelection) {
    selectAnswerVoteSelection['__identifier'] = store.internal__identifier;
    selectAnswerVoteSelection['__signedIdentifier'] = store.internal__signedIdentifier;
    selectAnswerVoteSelection['__entityType'] = store.internal__entityType;
    selectAnswerVoteSelection['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'description')) {
      selectAnswerVoteSelection['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      selectAnswerVoteSelection['title'] = store.title;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesSelectAnswerVoteSelection(SelectAnswerVoteSelectionStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalSelectAnswerVoteSelection = {};
    optionalSelectAnswerVoteSelection['__identifier'] = store.internal__identifier;
    optionalSelectAnswerVoteSelection['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalSelectAnswerVoteSelection['__entityType'] = store.internal__entityType;
    optionalSelectAnswerVoteSelection['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalSelectAnswerVoteSelection['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalSelectAnswerVoteSelection['title'] = store.title;
    }

    // Relations
    return optionalSelectAnswerVoteSelection;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR SimpleVote
  static SimpleVoteStore createSimpleVoteStoreFromEdemokraciaSimpleVote(dynamic simpleVote) {
    if (simpleVote == null) {
      return null;
    }
    var store = SimpleVoteStore();
    mapEdemokraciaSimpleVoteToSimpleVoteStore(simpleVote, store);
    return store;
  }

  static void mapEdemokraciaSimpleVoteToSimpleVoteStore(dynamic simpleVote, SimpleVoteStore store) {
    // Identifier
    store.internal__identifier = simpleVote['__identifier'];
    store.internal__signedIdentifier = simpleVote['__signedIdentifier'];
    store.internal__referenceIdentifier = simpleVote['__referenceId'];
    store.internal__entityType = simpleVote['__entityType'];
    store.internal__updatable = simpleVote['__updateable'];
    store.internal__deletable = simpleVote['__deleteable'];

    if (simpleVote != null && simpleVote.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = simpleVote['created'] != null ? DateTime.tryParse(simpleVote['created']).toLocal() : null;
    if (simpleVote['type'] != null) {
      store.type = enumFromString<EdemokraciaSimpleVoteType>(EdemokraciaSimpleVoteType.values, simpleVote['type']);
    }
    // Relations
  }

  static dynamic createEdemokraciaSimpleVoteFromSimpleVoteStore(SimpleVoteStore store) {
    if (store == null) {
      return null;
    }
    var simpleVote = {};
    mapSimpleVoteStoreToEdemokraciaSimpleVote(store, simpleVote);
    return simpleVote;
  }

  static void mapSimpleVoteStoreToEdemokraciaSimpleVote(SimpleVoteStore store, dynamic simpleVote) {
    simpleVote['__identifier'] = store.internal__identifier;
    simpleVote['__signedIdentifier'] = store.internal__signedIdentifier;
    simpleVote['__entityType'] = store.internal__entityType;
    simpleVote['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      simpleVote['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'type')) {
      simpleVote['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesSimpleVote(SimpleVoteStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalSimpleVote = {};
    optionalSimpleVote['__identifier'] = store.internal__identifier;
    optionalSimpleVote['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalSimpleVote['__entityType'] = store.internal__entityType;
    optionalSimpleVote['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalSimpleVote['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'type')) {
      optionalSimpleVote['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    // Relations
    return optionalSimpleVote;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR User
  static UserStore createUserStoreFromEdemokraciaUser(dynamic user) {
    if (user == null) {
      return null;
    }
    var store = UserStore();
    mapEdemokraciaUserToUserStore(user, store);
    return store;
  }

  static void mapEdemokraciaUserToUserStore(dynamic user, UserStore store) {
    // Identifier
    store.internal__identifier = user['__identifier'];
    store.internal__signedIdentifier = user['__signedIdentifier'];
    store.internal__referenceIdentifier = user['__referenceId'];
    store.internal__entityType = user['__entityType'];
    store.internal__updatable = user['__updateable'];
    store.internal__deletable = user['__deleteable'];

    if (user != null && user.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = user['created'] != null ? DateTime.tryParse(user['created']).toLocal() : null;
    store.email = user['email'];
    store.firstName = user['firstName'];
    store.isAdmin = user['isAdmin'];
    store.lastName = user['lastName'];
    store.phone = user['phone'];
    store.userName = user['userName'];
    // Relations
  }

  static dynamic createEdemokraciaUserFromUserStore(UserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapUserStoreToEdemokraciaUser(store, user);
    return user;
  }

  static void mapUserStoreToEdemokraciaUser(UserStore store, dynamic user) {
    user['__identifier'] = store.internal__identifier;
    user['__signedIdentifier'] = store.internal__signedIdentifier;
    user['__entityType'] = store.internal__entityType;
    user['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      user['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'email')) {
      user['email'] = store.email;
    }
    if (store.changedFields.contains(r'firstName')) {
      user['firstName'] = store.firstName;
    }
    if (store.changedFields.contains(r'isAdmin')) {
      user['isAdmin'] = store.isAdmin;
    }
    if (store.changedFields.contains(r'lastName')) {
      user['lastName'] = store.lastName;
    }
    if (store.changedFields.contains(r'phone')) {
      user['phone'] = store.phone;
    }
    if (store.changedFields.contains(r'userName')) {
      user['userName'] = store.userName;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesUser(UserStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalUser = {};
    optionalUser['__identifier'] = store.internal__identifier;
    optionalUser['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalUser['__entityType'] = store.internal__entityType;
    optionalUser['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalUser['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'email')) {
      optionalUser['email'] = store.email;
    }
    if (keepAllFields || store.changedFields.contains(r'firstName')) {
      optionalUser['firstName'] = store.firstName;
    }
    if (keepAllFields || store.changedFields.contains(r'isAdmin')) {
      optionalUser['isAdmin'] = store.isAdmin;
    }
    if (keepAllFields || store.changedFields.contains(r'lastName')) {
      optionalUser['lastName'] = store.lastName;
    }
    if (keepAllFields || store.changedFields.contains(r'phone')) {
      optionalUser['phone'] = store.phone;
    }
    if (keepAllFields || store.changedFields.contains(r'userName')) {
      optionalUser['userName'] = store.userName;
    }

    // Relations
    return optionalUser;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR VoteDefinition
  static VoteDefinitionStore createVoteDefinitionStoreFromEdemokraciaVoteDefinition(dynamic voteDefinition) {
    if (voteDefinition == null) {
      return null;
    }
    var store = VoteDefinitionStore();
    mapEdemokraciaVoteDefinitionToVoteDefinitionStore(voteDefinition, store);
    return store;
  }

  static void mapEdemokraciaVoteDefinitionToVoteDefinitionStore(dynamic voteDefinition, VoteDefinitionStore store) {
    // Identifier
    store.internal__identifier = voteDefinition['__identifier'];
    store.internal__signedIdentifier = voteDefinition['__signedIdentifier'];
    store.internal__referenceIdentifier = voteDefinition['__referenceId'];
    store.internal__entityType = voteDefinition['__entityType'];
    store.internal__updatable = voteDefinition['__updateable'];
    store.internal__deletable = voteDefinition['__deleteable'];

    if (voteDefinition != null && voteDefinition.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = voteDefinition['closeAt'] != null ? DateTime.tryParse(voteDefinition['closeAt']).toLocal() : null;
    store.created = voteDefinition['created'] != null ? DateTime.tryParse(voteDefinition['created']).toLocal() : null;
    store.description = voteDefinition['description'];
    store.isRatingType = voteDefinition['isRatingType'];
    store.isSelectAnswerType = voteDefinition['isSelectAnswerType'];
    store.isYesNoAbstainType = voteDefinition['isYesNoAbstainType'];
    store.isYesNoType = voteDefinition['isYesNoType'];
    if (voteDefinition['status'] != null) {
      store.status = enumFromString<EdemokraciaVoteStatus>(EdemokraciaVoteStatus.values, voteDefinition['status']);
    }
    store.title = voteDefinition['title'];
    // Relations
  }

  static dynamic createEdemokraciaVoteDefinitionFromVoteDefinitionStore(VoteDefinitionStore store) {
    if (store == null) {
      return null;
    }
    var voteDefinition = {};
    mapVoteDefinitionStoreToEdemokraciaVoteDefinition(store, voteDefinition);
    return voteDefinition;
  }

  static void mapVoteDefinitionStoreToEdemokraciaVoteDefinition(VoteDefinitionStore store, dynamic voteDefinition) {
    voteDefinition['__identifier'] = store.internal__identifier;
    voteDefinition['__signedIdentifier'] = store.internal__signedIdentifier;
    voteDefinition['__entityType'] = store.internal__entityType;
    voteDefinition['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      voteDefinition['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'created')) {
      voteDefinition['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      voteDefinition['description'] = store.description;
    }
    if (store.changedFields.contains(r'isRatingType')) {
      voteDefinition['isRatingType'] = store.isRatingType;
    }
    if (store.changedFields.contains(r'isSelectAnswerType')) {
      voteDefinition['isSelectAnswerType'] = store.isSelectAnswerType;
    }
    if (store.changedFields.contains(r'isYesNoAbstainType')) {
      voteDefinition['isYesNoAbstainType'] = store.isYesNoAbstainType;
    }
    if (store.changedFields.contains(r'isYesNoType')) {
      voteDefinition['isYesNoType'] = store.isYesNoType;
    }
    if (store.changedFields.contains(r'status')) {
      voteDefinition['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      voteDefinition['title'] = store.title;
    }

    /// Relations
  }

  static dynamic createEdemokraciaVoteDefinitionForCreateAndUpdateFromVoteDefinitionStore(VoteDefinitionStore store) {
    var voteDefinition = {};
    mapVoteDefinitionStoreToEdemokraciaVoteDefinitionForCreateAndUpdate(store, voteDefinition);
    return voteDefinition;
  }

  static void mapVoteDefinitionStoreToEdemokraciaVoteDefinitionForCreateAndUpdate(VoteDefinitionStore store, dynamic voteDefinition) {
    // Identifier
    voteDefinition['__referenceId'] = store.internal__referenceIdentifier;
    voteDefinition['__signedIdentifier'] = store.internal__signedIdentifier;
    voteDefinition['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'closeAt')) {
      voteDefinition['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'created')) {
      voteDefinition['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      voteDefinition['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      voteDefinition['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      voteDefinition['title'] = store.title;
    }
    // Relations
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionGetRangeInputVoteDefinitionVoteEntriesFromVoteDefinitionStore(VoteDefinitionStore store) {
    if (store == null) {
      return null;
    }
    var voteDefinition = {};
    mapVoteDefinitionStoreToEdemokraciaExtensionGetRangeInputVoteDefinitionVoteEntries(voteDefinition, store);
    return voteDefinition;
  }

  static void mapVoteDefinitionStoreToEdemokraciaExtensionGetRangeInputVoteDefinitionVoteEntries(dynamic voteDefinition, VoteDefinitionStore store) {
    var optionalVoteDefinition = createEdemokraciaOptionalTransferobjecttypesVoteDefinition(store);

    voteDefinition['owner'] = optionalVoteDefinition;
  }

  static dynamic createEdemokraciaExtensionGetRangeInputVoteDefinitionVoteSelectAnswerFromVoteDefinitionStore(VoteDefinitionStore store) {
    if (store == null) {
      return null;
    }
    var voteDefinition = {};
    mapVoteDefinitionStoreToEdemokraciaExtensionGetRangeInputVoteDefinitionVoteSelectAnswer(voteDefinition, store);
    return voteDefinition;
  }

  static void mapVoteDefinitionStoreToEdemokraciaExtensionGetRangeInputVoteDefinitionVoteSelectAnswer(dynamic voteDefinition, VoteDefinitionStore store) {
    var optionalVoteDefinition = createEdemokraciaOptionalTransferobjecttypesVoteDefinition(store);

    voteDefinition['owner'] = optionalVoteDefinition;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesVoteDefinition(VoteDefinitionStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalVoteDefinition = {};
    optionalVoteDefinition['__identifier'] = store.internal__identifier;
    optionalVoteDefinition['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalVoteDefinition['__entityType'] = store.internal__entityType;
    optionalVoteDefinition['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalVoteDefinition['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalVoteDefinition['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalVoteDefinition['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'isRatingType')) {
      optionalVoteDefinition['isRatingType'] = store.isRatingType;
    }
    if (keepAllFields || store.changedFields.contains(r'isSelectAnswerType')) {
      optionalVoteDefinition['isSelectAnswerType'] = store.isSelectAnswerType;
    }
    if (keepAllFields || store.changedFields.contains(r'isYesNoAbstainType')) {
      optionalVoteDefinition['isYesNoAbstainType'] = store.isYesNoAbstainType;
    }
    if (keepAllFields || store.changedFields.contains(r'isYesNoType')) {
      optionalVoteDefinition['isYesNoType'] = store.isYesNoType;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalVoteDefinition['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalVoteDefinition['title'] = store.title;
    }

    // Relations
    return optionalVoteDefinition;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR VoteEntry
  static VoteEntryStore createVoteEntryStoreFromEdemokraciaVoteEntry(dynamic voteEntry) {
    if (voteEntry == null) {
      return null;
    }
    var store = VoteEntryStore();
    mapEdemokraciaVoteEntryToVoteEntryStore(voteEntry, store);
    return store;
  }

  static void mapEdemokraciaVoteEntryToVoteEntryStore(dynamic voteEntry, VoteEntryStore store) {
    // Identifier
    store.internal__identifier = voteEntry['__identifier'];
    store.internal__signedIdentifier = voteEntry['__signedIdentifier'];
    store.internal__referenceIdentifier = voteEntry['__referenceId'];
    store.internal__entityType = voteEntry['__entityType'];
    store.internal__updatable = voteEntry['__updateable'];
    store.internal__deletable = voteEntry['__deleteable'];

    if (voteEntry != null && voteEntry.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = voteEntry['created'] != null ? DateTime.tryParse(voteEntry['created']).toLocal() : null;
    // Relations
  }

  static dynamic createEdemokraciaVoteEntryFromVoteEntryStore(VoteEntryStore store) {
    if (store == null) {
      return null;
    }
    var voteEntry = {};
    mapVoteEntryStoreToEdemokraciaVoteEntry(store, voteEntry);
    return voteEntry;
  }

  static void mapVoteEntryStoreToEdemokraciaVoteEntry(VoteEntryStore store, dynamic voteEntry) {
    voteEntry['__identifier'] = store.internal__identifier;
    voteEntry['__signedIdentifier'] = store.internal__signedIdentifier;
    voteEntry['__entityType'] = store.internal__entityType;
    voteEntry['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      voteEntry['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }

    /// Relations
  }

  static dynamic createEdemokraciaVoteEntryForCreateAndUpdateFromVoteEntryStore(VoteEntryStore store) {
    var voteEntry = {};
    mapVoteEntryStoreToEdemokraciaVoteEntryForCreateAndUpdate(store, voteEntry);
    return voteEntry;
  }

  static void mapVoteEntryStoreToEdemokraciaVoteEntryForCreateAndUpdate(VoteEntryStore store, dynamic voteEntry) {
    // Identifier
    voteEntry['__referenceId'] = store.internal__referenceIdentifier;
    voteEntry['__signedIdentifier'] = store.internal__signedIdentifier;
    voteEntry['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'created')) {
      voteEntry['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    // Relations
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionGetRangeInputVoteEntryUserFromVoteEntryStore(VoteEntryStore store) {
    if (store == null) {
      return null;
    }
    var voteEntry = {};
    mapVoteEntryStoreToEdemokraciaExtensionGetRangeInputVoteEntryUser(voteEntry, store);
    return voteEntry;
  }

  static void mapVoteEntryStoreToEdemokraciaExtensionGetRangeInputVoteEntryUser(dynamic voteEntry, VoteEntryStore store) {
    var optionalVoteEntry = createEdemokraciaOptionalTransferobjecttypesVoteEntry(store);

    voteEntry['owner'] = optionalVoteEntry;
  }

  static dynamic createEdemokraciaExtensionGetRangeInputVoteEntryVoteDefinitionFromVoteEntryStore(VoteEntryStore store) {
    if (store == null) {
      return null;
    }
    var voteEntry = {};
    mapVoteEntryStoreToEdemokraciaExtensionGetRangeInputVoteEntryVoteDefinition(voteEntry, store);
    return voteEntry;
  }

  static void mapVoteEntryStoreToEdemokraciaExtensionGetRangeInputVoteEntryVoteDefinition(dynamic voteEntry, VoteEntryStore store) {
    var optionalVoteEntry = createEdemokraciaOptionalTransferobjecttypesVoteEntry(store);

    voteEntry['owner'] = optionalVoteEntry;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesVoteEntry(VoteEntryStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalVoteEntry = {};
    optionalVoteEntry['__identifier'] = store.internal__identifier;
    optionalVoteEntry['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalVoteEntry['__entityType'] = store.internal__entityType;
    optionalVoteEntry['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalVoteEntry['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }

    // Relations
    return optionalVoteEntry;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR YesNoAbstainVoteInput
  static YesNoAbstainVoteInputStore createYesNoAbstainVoteInputStoreFromEdemokraciaYesNoAbstainVoteInput(dynamic yesNoAbstainVoteInput) {
    if (yesNoAbstainVoteInput == null) {
      return null;
    }
    var store = YesNoAbstainVoteInputStore();
    mapEdemokraciaYesNoAbstainVoteInputToYesNoAbstainVoteInputStore(yesNoAbstainVoteInput, store);
    return store;
  }

  static void mapEdemokraciaYesNoAbstainVoteInputToYesNoAbstainVoteInputStore(dynamic yesNoAbstainVoteInput, YesNoAbstainVoteInputStore store) {
    // Identifier
    if (yesNoAbstainVoteInput != null && yesNoAbstainVoteInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    if (yesNoAbstainVoteInput['value'] != null) {
      store.value = enumFromString<EdemokraciaYesNoAbstainVoteValue>(EdemokraciaYesNoAbstainVoteValue.values, yesNoAbstainVoteInput['value']);
    }
    // Relations
  }

  static dynamic createEdemokraciaYesNoAbstainVoteInputFromYesNoAbstainVoteInputStore(YesNoAbstainVoteInputStore store) {
    if (store == null) {
      return null;
    }
    var yesNoAbstainVoteInput = {};
    mapYesNoAbstainVoteInputStoreToEdemokraciaYesNoAbstainVoteInput(store, yesNoAbstainVoteInput);
    return yesNoAbstainVoteInput;
  }

  static void mapYesNoAbstainVoteInputStoreToEdemokraciaYesNoAbstainVoteInput(YesNoAbstainVoteInputStore store, dynamic yesNoAbstainVoteInput) {
    /// Attributes
    if (store.changedFields.contains(r'value')) {
      yesNoAbstainVoteInput['value'] = store.value != null ? store.value.toString().split('.').last : null;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesYesNoAbstainVoteInput(YesNoAbstainVoteInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalYesNoAbstainVoteInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'value')) {
      optionalYesNoAbstainVoteInput['value'] = store.value != null ? store.value.toString().split('.').last : null;
    }

    // Relations
    return optionalYesNoAbstainVoteInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR YesNoVoteInput
  static YesNoVoteInputStore createYesNoVoteInputStoreFromEdemokraciaYesNoVoteInput(dynamic yesNoVoteInput) {
    if (yesNoVoteInput == null) {
      return null;
    }
    var store = YesNoVoteInputStore();
    mapEdemokraciaYesNoVoteInputToYesNoVoteInputStore(yesNoVoteInput, store);
    return store;
  }

  static void mapEdemokraciaYesNoVoteInputToYesNoVoteInputStore(dynamic yesNoVoteInput, YesNoVoteInputStore store) {
    // Identifier
    if (yesNoVoteInput != null && yesNoVoteInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    if (yesNoVoteInput['value'] != null) {
      store.value = enumFromString<EdemokraciaYesNoVoteValue>(EdemokraciaYesNoVoteValue.values, yesNoVoteInput['value']);
    }
    // Relations
  }

  static dynamic createEdemokraciaYesNoVoteInputFromYesNoVoteInputStore(YesNoVoteInputStore store) {
    if (store == null) {
      return null;
    }
    var yesNoVoteInput = {};
    mapYesNoVoteInputStoreToEdemokraciaYesNoVoteInput(store, yesNoVoteInput);
    return yesNoVoteInput;
  }

  static void mapYesNoVoteInputStoreToEdemokraciaYesNoVoteInput(YesNoVoteInputStore store, dynamic yesNoVoteInput) {
    /// Attributes
    if (store.changedFields.contains(r'value')) {
      yesNoVoteInput['value'] = store.value != null ? store.value.toString().split('.').last : null;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesYesNoVoteInput(YesNoVoteInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalYesNoVoteInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'value')) {
      optionalYesNoVoteInput['value'] = store.value != null ? store.value.toString().split('.').last : null;
    }

    // Relations
    return optionalYesNoVoteInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR AdminPrincipalUser
  static AdminAdminPrincipalUserStore createAdminAdminPrincipalUserStoreFromEdemokraciaAdminAdminPrincipalUser(dynamic adminPrincipalUser) {
    if (adminPrincipalUser == null) {
      return null;
    }
    var store = AdminAdminPrincipalUserStore();
    mapEdemokraciaAdminAdminPrincipalUserToAdminAdminPrincipalUserStore(adminPrincipalUser, store);
    return store;
  }

  static void mapEdemokraciaAdminAdminPrincipalUserToAdminAdminPrincipalUserStore(dynamic adminPrincipalUser, AdminAdminPrincipalUserStore store) {
    // Identifier
    store.internal__identifier = adminPrincipalUser['__identifier'];
    store.internal__signedIdentifier = adminPrincipalUser['__signedIdentifier'];
    store.internal__referenceIdentifier = adminPrincipalUser['__referenceId'];
    store.internal__entityType = adminPrincipalUser['__entityType'];
    store.internal__updatable = adminPrincipalUser['__updateable'];
    store.internal__deletable = adminPrincipalUser['__deleteable'];

    if (adminPrincipalUser != null && adminPrincipalUser.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = adminPrincipalUser['created'] != null ? DateTime.tryParse(adminPrincipalUser['created']).toLocal() : null;
    store.email = adminPrincipalUser['email'];
    store.firstName = adminPrincipalUser['firstName'];
    store.isAdmin = adminPrincipalUser['isAdmin'];
    store.lastName = adminPrincipalUser['lastName'];
    store.phone = adminPrincipalUser['phone'];
    store.userName = adminPrincipalUser['userName'];
    // Relations
  }

  static dynamic createEdemokraciaAdminAdminPrincipalUserFromAdminAdminPrincipalUserStore(AdminAdminPrincipalUserStore store) {
    if (store == null) {
      return null;
    }
    var adminPrincipalUser = {};
    mapAdminAdminPrincipalUserStoreToEdemokraciaAdminAdminPrincipalUser(store, adminPrincipalUser);
    return adminPrincipalUser;
  }

  static void mapAdminAdminPrincipalUserStoreToEdemokraciaAdminAdminPrincipalUser(AdminAdminPrincipalUserStore store, dynamic adminPrincipalUser) {
    adminPrincipalUser['__identifier'] = store.internal__identifier;
    adminPrincipalUser['__signedIdentifier'] = store.internal__signedIdentifier;
    adminPrincipalUser['__entityType'] = store.internal__entityType;
    adminPrincipalUser['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      adminPrincipalUser['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'email')) {
      adminPrincipalUser['email'] = store.email;
    }
    if (store.changedFields.contains(r'firstName')) {
      adminPrincipalUser['firstName'] = store.firstName;
    }
    if (store.changedFields.contains(r'isAdmin')) {
      adminPrincipalUser['isAdmin'] = store.isAdmin;
    }
    if (store.changedFields.contains(r'lastName')) {
      adminPrincipalUser['lastName'] = store.lastName;
    }
    if (store.changedFields.contains(r'phone')) {
      adminPrincipalUser['phone'] = store.phone;
    }
    if (store.changedFields.contains(r'userName')) {
      adminPrincipalUser['userName'] = store.userName;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminAdminPrincipalUser(AdminAdminPrincipalUserStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalAdminPrincipalUser = {};
    optionalAdminPrincipalUser['__identifier'] = store.internal__identifier;
    optionalAdminPrincipalUser['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalAdminPrincipalUser['__entityType'] = store.internal__entityType;
    optionalAdminPrincipalUser['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalAdminPrincipalUser['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'email')) {
      optionalAdminPrincipalUser['email'] = store.email;
    }
    if (keepAllFields || store.changedFields.contains(r'firstName')) {
      optionalAdminPrincipalUser['firstName'] = store.firstName;
    }
    if (keepAllFields || store.changedFields.contains(r'isAdmin')) {
      optionalAdminPrincipalUser['isAdmin'] = store.isAdmin;
    }
    if (keepAllFields || store.changedFields.contains(r'lastName')) {
      optionalAdminPrincipalUser['lastName'] = store.lastName;
    }
    if (keepAllFields || store.changedFields.contains(r'phone')) {
      optionalAdminPrincipalUser['phone'] = store.phone;
    }
    if (keepAllFields || store.changedFields.contains(r'userName')) {
      optionalAdminPrincipalUser['userName'] = store.userName;
    }

    // Relations
    return optionalAdminPrincipalUser;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR City
  static AdminCityStore createAdminCityStoreFromEdemokraciaAdminCity(dynamic city) {
    if (city == null) {
      return null;
    }
    var store = AdminCityStore();
    mapEdemokraciaAdminCityToAdminCityStore(city, store);
    return store;
  }

  static void mapEdemokraciaAdminCityToAdminCityStore(dynamic city, AdminCityStore store) {
    // Identifier
    store.internal__identifier = city['__identifier'];
    store.internal__signedIdentifier = city['__signedIdentifier'];
    store.internal__referenceIdentifier = city['__referenceId'];
    store.internal__entityType = city['__entityType'];
    store.internal__updatable = city['__updateable'];
    store.internal__deletable = city['__deleteable'];

    if (city != null && city.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.county = city['county'];
    store.name = city['name'];
    store.representation = city['representation'];
    // Relations
    if (city['districts'] != null) {
      store.districts.addAll(city['districts'].map<AdminDistrictStore>((district) {
        var store = AdminDistrictStore();
        mapEdemokraciaAdminDistrictToAdminDistrictStore(district, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaAdminCityFromAdminCityStore(AdminCityStore store) {
    if (store == null) {
      return null;
    }
    var city = {};
    mapAdminCityStoreToEdemokraciaAdminCity(store, city);
    return city;
  }

  static void mapAdminCityStoreToEdemokraciaAdminCity(AdminCityStore store, dynamic city) {
    city['__identifier'] = store.internal__identifier;
    city['__signedIdentifier'] = store.internal__signedIdentifier;
    city['__entityType'] = store.internal__entityType;
    city['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'county')) {
      city['county'] = store.county;
    }
    if (store.changedFields.contains(r'name')) {
      city['name'] = store.name;
    }
    if (store.changedFields.contains(r'representation')) {
      city['representation'] = store.representation;
    }

    /// Relations
    if (store.changedFields.contains(r'districts')) {
      city['districts'] = store.districts.map<dynamic>(createEdemokraciaAdminDistrictFromAdminDistrictStore).toList();
    }
  }

  static dynamic createEdemokraciaAdminCityForCreateAndUpdateFromAdminCityStore(AdminCityStore store) {
    var city = {};
    mapAdminCityStoreToEdemokraciaAdminCityForCreateAndUpdate(store, city);
    return city;
  }

  static void mapAdminCityStoreToEdemokraciaAdminCityForCreateAndUpdate(AdminCityStore store, dynamic city) {
    // Identifier
    city['__referenceId'] = store.internal__referenceIdentifier;
    city['__signedIdentifier'] = store.internal__signedIdentifier;
    city['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'name')) {
      city['name'] = store.name;
    }
    // Relations
    if (store.changedFields.contains(r'districts')) {
      city['districts'] = store.districts.map<dynamic>((store) {
        return createEdemokraciaAdminDistrictForCreateAndUpdateFromAdminDistrictStore(store);
      }).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminCity(AdminCityStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCity = {};
    optionalCity['__identifier'] = store.internal__identifier;
    optionalCity['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalCity['__entityType'] = store.internal__entityType;
    optionalCity['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'county')) {
      optionalCity['county'] = store.county;
    }
    if (keepAllFields || store.changedFields.contains(r'name')) {
      optionalCity['name'] = store.name;
    }
    if (keepAllFields || store.changedFields.contains(r'representation')) {
      optionalCity['representation'] = store.representation;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'districts')) {
      optionalCity['districts'] = store.districts.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminDistrict).toList();
    }
    return optionalCity;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Comment
  static AdminCommentStore createAdminCommentStoreFromEdemokraciaAdminComment(dynamic comment) {
    if (comment == null) {
      return null;
    }
    var store = AdminCommentStore();
    mapEdemokraciaAdminCommentToAdminCommentStore(comment, store);
    return store;
  }

  static void mapEdemokraciaAdminCommentToAdminCommentStore(dynamic comment, AdminCommentStore store) {
    // Identifier
    store.internal__identifier = comment['__identifier'];
    store.internal__signedIdentifier = comment['__signedIdentifier'];
    store.internal__referenceIdentifier = comment['__referenceId'];
    store.internal__entityType = comment['__entityType'];
    store.internal__updatable = comment['__updateable'];
    store.internal__deletable = comment['__deleteable'];

    if (comment != null && comment.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.comment = comment['comment'];
    store.created = comment['created'] != null ? DateTime.tryParse(comment['created']).toLocal() : null;
    store.createdByName = comment['createdByName'];
    store.downVotes = comment['downVotes'];
    store.upVotes = comment['upVotes'];
    // Relations
    if (comment['createdBy'] != null) {
      var createdBy = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(comment['createdBy'], createdBy);
      store.setCreatedBy(createdBy);
    }
  }

  static dynamic createEdemokraciaAdminCommentFromAdminCommentStore(AdminCommentStore store) {
    if (store == null) {
      return null;
    }
    var comment = {};
    mapAdminCommentStoreToEdemokraciaAdminComment(store, comment);
    return comment;
  }

  static void mapAdminCommentStoreToEdemokraciaAdminComment(AdminCommentStore store, dynamic comment) {
    comment['__identifier'] = store.internal__identifier;
    comment['__signedIdentifier'] = store.internal__signedIdentifier;
    comment['__entityType'] = store.internal__entityType;
    comment['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'comment')) {
      comment['comment'] = store.comment;
    }
    if (store.changedFields.contains(r'created')) {
      comment['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'createdByName')) {
      comment['createdByName'] = store.createdByName;
    }
    if (store.changedFields.contains(r'downVotes')) {
      comment['downVotes'] = store.downVotes;
    }
    if (store.changedFields.contains(r'upVotes')) {
      comment['upVotes'] = store.upVotes;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminCommentForCreateAndUpdateFromAdminCommentStore(AdminCommentStore store) {
    var comment = {};
    mapAdminCommentStoreToEdemokraciaAdminCommentForCreateAndUpdate(store, comment);
    return comment;
  }

  static void mapAdminCommentStoreToEdemokraciaAdminCommentForCreateAndUpdate(AdminCommentStore store, dynamic comment) {
    // Identifier
    comment['__referenceId'] = store.internal__referenceIdentifier;
    comment['__signedIdentifier'] = store.internal__signedIdentifier;
    comment['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'comment')) {
      comment['comment'] = store.comment;
    }
    // Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminComment(AdminCommentStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalComment = {};
    optionalComment['__identifier'] = store.internal__identifier;
    optionalComment['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalComment['__entityType'] = store.internal__entityType;
    optionalComment['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'comment')) {
      optionalComment['comment'] = store.comment;
    }
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalComment['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'createdByName')) {
      optionalComment['createdByName'] = store.createdByName;
    }
    if (keepAllFields || store.changedFields.contains(r'downVotes')) {
      optionalComment['downVotes'] = store.downVotes;
    }
    if (keepAllFields || store.changedFields.contains(r'upVotes')) {
      optionalComment['upVotes'] = store.upVotes;
    }

    // Relations
    return optionalComment;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Con
  static AdminConStore createAdminConStoreFromEdemokraciaAdminCon(dynamic con) {
    if (con == null) {
      return null;
    }
    var store = AdminConStore();
    mapEdemokraciaAdminConToAdminConStore(con, store);
    return store;
  }

  static void mapEdemokraciaAdminConToAdminConStore(dynamic con, AdminConStore store) {
    // Identifier
    store.internal__identifier = con['__identifier'];
    store.internal__signedIdentifier = con['__signedIdentifier'];
    store.internal__referenceIdentifier = con['__referenceId'];
    store.internal__entityType = con['__entityType'];
    store.internal__updatable = con['__updateable'];
    store.internal__deletable = con['__deleteable'];

    if (con != null && con.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = con['created'] != null ? DateTime.tryParse(con['created']).toLocal() : null;
    store.createdByName = con['createdByName'];
    store.description = con['description'];
    store.downVotes = con['downVotes'];
    store.title = con['title'];
    store.upVotes = con['upVotes'];
    // Relations
    if (con['comments'] != null) {
      store.comments.addAll(con['comments'].map<AdminCommentStore>((comment) {
        var store = AdminCommentStore();
        mapEdemokraciaAdminCommentToAdminCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (con['cons'] != null) {
      store.cons.addAll(con['cons'].map<AdminConStore>((con) {
        var store = AdminConStore();
        mapEdemokraciaAdminConToAdminConStore(con, store);
        return store;
      }).toList());
    }
    if (con['createdBy'] != null) {
      var createdBy = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(con['createdBy'], createdBy);
      store.setCreatedBy(createdBy);
    }
    if (con['pros'] != null) {
      store.pros.addAll(con['pros'].map<AdminProStore>((pro) {
        var store = AdminProStore();
        mapEdemokraciaAdminProToAdminProStore(pro, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaAdminConFromAdminConStore(AdminConStore store) {
    if (store == null) {
      return null;
    }
    var con = {};
    mapAdminConStoreToEdemokraciaAdminCon(store, con);
    return con;
  }

  static void mapAdminConStoreToEdemokraciaAdminCon(AdminConStore store, dynamic con) {
    con['__identifier'] = store.internal__identifier;
    con['__signedIdentifier'] = store.internal__signedIdentifier;
    con['__entityType'] = store.internal__entityType;
    con['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      con['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'createdByName')) {
      con['createdByName'] = store.createdByName;
    }
    if (store.changedFields.contains(r'description')) {
      con['description'] = store.description;
    }
    if (store.changedFields.contains(r'downVotes')) {
      con['downVotes'] = store.downVotes;
    }
    if (store.changedFields.contains(r'title')) {
      con['title'] = store.title;
    }
    if (store.changedFields.contains(r'upVotes')) {
      con['upVotes'] = store.upVotes;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminConForCreateAndUpdateFromAdminConStore(AdminConStore store) {
    var con = {};
    mapAdminConStoreToEdemokraciaAdminConForCreateAndUpdate(store, con);
    return con;
  }

  static void mapAdminConStoreToEdemokraciaAdminConForCreateAndUpdate(AdminConStore store, dynamic con) {
    // Identifier
    con['__referenceId'] = store.internal__referenceIdentifier;
    con['__signedIdentifier'] = store.internal__signedIdentifier;
    con['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'created')) {
      con['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      con['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      con['title'] = store.title;
    }
    // Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminCon(AdminConStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCon = {};
    optionalCon['__identifier'] = store.internal__identifier;
    optionalCon['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalCon['__entityType'] = store.internal__entityType;
    optionalCon['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalCon['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'createdByName')) {
      optionalCon['createdByName'] = store.createdByName;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalCon['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'downVotes')) {
      optionalCon['downVotes'] = store.downVotes;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalCon['title'] = store.title;
    }
    if (keepAllFields || store.changedFields.contains(r'upVotes')) {
      optionalCon['upVotes'] = store.upVotes;
    }

    // Relations
    return optionalCon;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR County
  static AdminCountyStore createAdminCountyStoreFromEdemokraciaAdminCounty(dynamic county) {
    if (county == null) {
      return null;
    }
    var store = AdminCountyStore();
    mapEdemokraciaAdminCountyToAdminCountyStore(county, store);
    return store;
  }

  static void mapEdemokraciaAdminCountyToAdminCountyStore(dynamic county, AdminCountyStore store) {
    // Identifier
    store.internal__identifier = county['__identifier'];
    store.internal__signedIdentifier = county['__signedIdentifier'];
    store.internal__referenceIdentifier = county['__referenceId'];
    store.internal__entityType = county['__entityType'];
    store.internal__updatable = county['__updateable'];
    store.internal__deletable = county['__deleteable'];

    if (county != null && county.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.name = county['name'];
    store.representation = county['representation'];
    // Relations
    if (county['cities'] != null) {
      store.cities.addAll(county['cities'].map<AdminCityStore>((city) {
        var store = AdminCityStore();
        mapEdemokraciaAdminCityToAdminCityStore(city, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaAdminCountyFromAdminCountyStore(AdminCountyStore store) {
    if (store == null) {
      return null;
    }
    var county = {};
    mapAdminCountyStoreToEdemokraciaAdminCounty(store, county);
    return county;
  }

  static void mapAdminCountyStoreToEdemokraciaAdminCounty(AdminCountyStore store, dynamic county) {
    county['__identifier'] = store.internal__identifier;
    county['__signedIdentifier'] = store.internal__signedIdentifier;
    county['__entityType'] = store.internal__entityType;
    county['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'name')) {
      county['name'] = store.name;
    }
    if (store.changedFields.contains(r'representation')) {
      county['representation'] = store.representation;
    }

    /// Relations
    if (store.changedFields.contains(r'cities')) {
      county['cities'] = store.cities.map<dynamic>(createEdemokraciaAdminCityFromAdminCityStore).toList();
    }
  }

  static dynamic createEdemokraciaAdminCountyForCreateAndUpdateFromAdminCountyStore(AdminCountyStore store) {
    var county = {};
    mapAdminCountyStoreToEdemokraciaAdminCountyForCreateAndUpdate(store, county);
    return county;
  }

  static void mapAdminCountyStoreToEdemokraciaAdminCountyForCreateAndUpdate(AdminCountyStore store, dynamic county) {
    // Identifier
    county['__referenceId'] = store.internal__referenceIdentifier;
    county['__signedIdentifier'] = store.internal__signedIdentifier;
    county['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'name')) {
      county['name'] = store.name;
    }
    // Relations
    if (store.changedFields.contains(r'cities')) {
      county['cities'] = store.cities.map<dynamic>((store) {
        return createEdemokraciaAdminCityForCreateAndUpdateFromAdminCityStore(store);
      }).toList();
    }
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminCounty(AdminCountyStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCounty = {};
    optionalCounty['__identifier'] = store.internal__identifier;
    optionalCounty['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalCounty['__entityType'] = store.internal__entityType;
    optionalCounty['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'name')) {
      optionalCounty['name'] = store.name;
    }
    if (keepAllFields || store.changedFields.contains(r'representation')) {
      optionalCounty['representation'] = store.representation;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'cities')) {
      optionalCounty['cities'] = store.cities.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminCity).toList();
    }
    return optionalCounty;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR CreateIssueInput
  static AdminCreateIssueInputStore createAdminCreateIssueInputStoreFromEdemokraciaAdminCreateIssueInput(dynamic createIssueInput) {
    if (createIssueInput == null) {
      return null;
    }
    var store = AdminCreateIssueInputStore();
    mapEdemokraciaAdminCreateIssueInputToAdminCreateIssueInputStore(createIssueInput, store);
    return store;
  }

  static void mapEdemokraciaAdminCreateIssueInputToAdminCreateIssueInputStore(dynamic createIssueInput, AdminCreateIssueInputStore store) {
    // Identifier
    if (createIssueInput != null && createIssueInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.description = createIssueInput['description'];
    store.title = createIssueInput['title'];
    // Relations
  }

  static dynamic createEdemokraciaAdminCreateIssueInputFromAdminCreateIssueInputStore(AdminCreateIssueInputStore store) {
    if (store == null) {
      return null;
    }
    var createIssueInput = {};
    mapAdminCreateIssueInputStoreToEdemokraciaAdminCreateIssueInput(store, createIssueInput);
    return createIssueInput;
  }

  static void mapAdminCreateIssueInputStoreToEdemokraciaAdminCreateIssueInput(AdminCreateIssueInputStore store, dynamic createIssueInput) {
    /// Attributes
    if (store.changedFields.contains(r'description')) {
      createIssueInput['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      createIssueInput['title'] = store.title;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminCreateIssueInput(AdminCreateIssueInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCreateIssueInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalCreateIssueInput['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalCreateIssueInput['title'] = store.title;
    }

    // Relations
    return optionalCreateIssueInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR CreateUserInput
  static AdminCreateUserInputStore createAdminCreateUserInputStoreFromEdemokraciaAdminCreateUserInput(dynamic createUserInput) {
    if (createUserInput == null) {
      return null;
    }
    var store = AdminCreateUserInputStore();
    mapEdemokraciaAdminCreateUserInputToAdminCreateUserInputStore(createUserInput, store);
    return store;
  }

  static void mapEdemokraciaAdminCreateUserInputToAdminCreateUserInputStore(dynamic createUserInput, AdminCreateUserInputStore store) {
    // Identifier
    if (createUserInput != null && createUserInput.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.email = createUserInput['email'];
    store.firstName = createUserInput['firstName'];
    store.hasAdminAccess = createUserInput['hasAdminAccess'];
    store.lastName = createUserInput['lastName'];
    store.phone = createUserInput['phone'];
    store.userName = createUserInput['userName'];
    // Relations
  }

  static dynamic createEdemokraciaAdminCreateUserInputFromAdminCreateUserInputStore(AdminCreateUserInputStore store) {
    if (store == null) {
      return null;
    }
    var createUserInput = {};
    mapAdminCreateUserInputStoreToEdemokraciaAdminCreateUserInput(store, createUserInput);
    return createUserInput;
  }

  static void mapAdminCreateUserInputStoreToEdemokraciaAdminCreateUserInput(AdminCreateUserInputStore store, dynamic createUserInput) {
    /// Attributes
    if (store.changedFields.contains(r'email')) {
      createUserInput['email'] = store.email;
    }
    if (store.changedFields.contains(r'firstName')) {
      createUserInput['firstName'] = store.firstName;
    }
    if (store.changedFields.contains(r'hasAdminAccess')) {
      createUserInput['hasAdminAccess'] = store.hasAdminAccess;
    }
    if (store.changedFields.contains(r'lastName')) {
      createUserInput['lastName'] = store.lastName;
    }
    if (store.changedFields.contains(r'phone')) {
      createUserInput['phone'] = store.phone;
    }
    if (store.changedFields.contains(r'userName')) {
      createUserInput['userName'] = store.userName;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminCreateUserInput(AdminCreateUserInputStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalCreateUserInput = {};
    // Attributes
    if (keepAllFields || store.changedFields.contains(r'email')) {
      optionalCreateUserInput['email'] = store.email;
    }
    if (keepAllFields || store.changedFields.contains(r'firstName')) {
      optionalCreateUserInput['firstName'] = store.firstName;
    }
    if (keepAllFields || store.changedFields.contains(r'hasAdminAccess')) {
      optionalCreateUserInput['hasAdminAccess'] = store.hasAdminAccess;
    }
    if (keepAllFields || store.changedFields.contains(r'lastName')) {
      optionalCreateUserInput['lastName'] = store.lastName;
    }
    if (keepAllFields || store.changedFields.contains(r'phone')) {
      optionalCreateUserInput['phone'] = store.phone;
    }
    if (keepAllFields || store.changedFields.contains(r'userName')) {
      optionalCreateUserInput['userName'] = store.userName;
    }

    // Relations
    return optionalCreateUserInput;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Dashboard
  static AdminDashboardStore createAdminDashboardStoreFromEdemokraciaAdminDashboard(dynamic dashboard) {
    if (dashboard == null) {
      return null;
    }
    var store = AdminDashboardStore();
    mapEdemokraciaAdminDashboardToAdminDashboardStore(dashboard, store);
    return store;
  }

  static void mapEdemokraciaAdminDashboardToAdminDashboardStore(dynamic dashboard, AdminDashboardStore store) {
    // Identifier
    store.internal__identifier = dashboard['__identifier'];
    store.internal__signedIdentifier = dashboard['__signedIdentifier'];
    store.internal__referenceIdentifier = dashboard['__referenceId'];
    store.internal__entityType = dashboard['__entityType'];
    store.internal__updatable = dashboard['__updateable'];
    store.internal__deletable = dashboard['__deleteable'];

    if (dashboard != null && dashboard.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.welcome = dashboard['welcome'];
    // Relations
    if (dashboard['debates'] != null) {
      store.debates.addAll(dashboard['debates'].map<AdminDebateStore>((debate) {
        var store = AdminDebateStore();
        mapEdemokraciaAdminDebateToAdminDebateStore(debate, store);
        return store;
      }).toList());
    }
    if (dashboard['issues'] != null) {
      store.issues.addAll(dashboard['issues'].map<AdminIssueStore>((issue) {
        var store = AdminIssueStore();
        mapEdemokraciaAdminIssueToAdminIssueStore(issue, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaAdminDashboardFromAdminDashboardStore(AdminDashboardStore store) {
    if (store == null) {
      return null;
    }
    var dashboard = {};
    mapAdminDashboardStoreToEdemokraciaAdminDashboard(store, dashboard);
    return dashboard;
  }

  static void mapAdminDashboardStoreToEdemokraciaAdminDashboard(AdminDashboardStore store, dynamic dashboard) {
    dashboard['__identifier'] = store.internal__identifier;
    dashboard['__signedIdentifier'] = store.internal__signedIdentifier;
    dashboard['__entityType'] = store.internal__entityType;
    dashboard['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'welcome')) {
      dashboard['welcome'] = store.welcome;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminDashboard(AdminDashboardStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalDashboard = {};
    optionalDashboard['__identifier'] = store.internal__identifier;
    optionalDashboard['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalDashboard['__entityType'] = store.internal__entityType;
    optionalDashboard['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'welcome')) {
      optionalDashboard['welcome'] = store.welcome;
    }

    // Relations
    return optionalDashboard;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Debate
  static AdminDebateStore createAdminDebateStoreFromEdemokraciaAdminDebate(dynamic debate) {
    if (debate == null) {
      return null;
    }
    var store = AdminDebateStore();
    mapEdemokraciaAdminDebateToAdminDebateStore(debate, store);
    return store;
  }

  static void mapEdemokraciaAdminDebateToAdminDebateStore(dynamic debate, AdminDebateStore store) {
    // Identifier
    store.internal__identifier = debate['__identifier'];
    store.internal__signedIdentifier = debate['__signedIdentifier'];
    store.internal__referenceIdentifier = debate['__referenceId'];
    store.internal__entityType = debate['__entityType'];
    store.internal__updatable = debate['__updateable'];
    store.internal__deletable = debate['__deleteable'];

    if (debate != null && debate.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = debate['closeAt'] != null ? DateTime.tryParse(debate['closeAt']).toLocal() : null;
    store.description = debate['description'];
    if (debate['status'] != null) {
      store.status = enumFromString<EdemokraciaDebateStatus>(EdemokraciaDebateStatus.values, debate['status']);
    }
    store.title = debate['title'];
    // Relations
    if (debate['comments'] != null) {
      store.comments.addAll(debate['comments'].map<AdminCommentStore>((comment) {
        var store = AdminCommentStore();
        mapEdemokraciaAdminCommentToAdminCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (debate['cons'] != null) {
      store.cons.addAll(debate['cons'].map<AdminConStore>((con) {
        var store = AdminConStore();
        mapEdemokraciaAdminConToAdminConStore(con, store);
        return store;
      }).toList());
    }
    if (debate['createdBy'] != null) {
      var createdBy = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(debate['createdBy'], createdBy);
      store.setCreatedBy(createdBy);
    }
    if (debate['issue'] != null) {
      var issue = AdminIssueStore();
      mapEdemokraciaAdminIssueToAdminIssueStore(debate['issue'], issue);
      store.setIssue(issue);
    }
    if (debate['pros'] != null) {
      store.pros.addAll(debate['pros'].map<AdminProStore>((pro) {
        var store = AdminProStore();
        mapEdemokraciaAdminProToAdminProStore(pro, store);
        return store;
      }).toList());
    }
    if (debate['voteDefinition'] != null) {
      var voteDefinition = AdminVoteDefinitionStore();
      mapEdemokraciaAdminVoteDefinitionToAdminVoteDefinitionStore(debate['voteDefinition'], voteDefinition);
      store.setVoteDefinition(voteDefinition);
    }
  }

  static dynamic createEdemokraciaAdminDebateFromAdminDebateStore(AdminDebateStore store) {
    if (store == null) {
      return null;
    }
    var debate = {};
    mapAdminDebateStoreToEdemokraciaAdminDebate(store, debate);
    return debate;
  }

  static void mapAdminDebateStoreToEdemokraciaAdminDebate(AdminDebateStore store, dynamic debate) {
    debate['__identifier'] = store.internal__identifier;
    debate['__signedIdentifier'] = store.internal__signedIdentifier;
    debate['__entityType'] = store.internal__entityType;
    debate['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      debate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      debate['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      debate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      debate['title'] = store.title;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminDebateForCreateAndUpdateFromAdminDebateStore(AdminDebateStore store) {
    var debate = {};
    mapAdminDebateStoreToEdemokraciaAdminDebateForCreateAndUpdate(store, debate);
    return debate;
  }

  static void mapAdminDebateStoreToEdemokraciaAdminDebateForCreateAndUpdate(AdminDebateStore store, dynamic debate) {
    // Identifier
    debate['__referenceId'] = store.internal__referenceIdentifier;
    debate['__signedIdentifier'] = store.internal__signedIdentifier;
    debate['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'closeAt')) {
      debate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      debate['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      debate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      debate['title'] = store.title;
    }
    // Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminDebate(AdminDebateStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalDebate = {};
    optionalDebate['__identifier'] = store.internal__identifier;
    optionalDebate['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalDebate['__entityType'] = store.internal__entityType;
    optionalDebate['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalDebate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalDebate['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalDebate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalDebate['title'] = store.title;
    }

    // Relations
    return optionalDebate;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR District
  static AdminDistrictStore createAdminDistrictStoreFromEdemokraciaAdminDistrict(dynamic district) {
    if (district == null) {
      return null;
    }
    var store = AdminDistrictStore();
    mapEdemokraciaAdminDistrictToAdminDistrictStore(district, store);
    return store;
  }

  static void mapEdemokraciaAdminDistrictToAdminDistrictStore(dynamic district, AdminDistrictStore store) {
    // Identifier
    store.internal__identifier = district['__identifier'];
    store.internal__signedIdentifier = district['__signedIdentifier'];
    store.internal__referenceIdentifier = district['__referenceId'];
    store.internal__entityType = district['__entityType'];
    store.internal__updatable = district['__updateable'];
    store.internal__deletable = district['__deleteable'];

    if (district != null && district.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.city = district['city'];
    store.county = district['county'];
    store.name = district['name'];
    store.representation = district['representation'];
    // Relations
  }

  static dynamic createEdemokraciaAdminDistrictFromAdminDistrictStore(AdminDistrictStore store) {
    if (store == null) {
      return null;
    }
    var district = {};
    mapAdminDistrictStoreToEdemokraciaAdminDistrict(store, district);
    return district;
  }

  static void mapAdminDistrictStoreToEdemokraciaAdminDistrict(AdminDistrictStore store, dynamic district) {
    district['__identifier'] = store.internal__identifier;
    district['__signedIdentifier'] = store.internal__signedIdentifier;
    district['__entityType'] = store.internal__entityType;
    district['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'city')) {
      district['city'] = store.city;
    }
    if (store.changedFields.contains(r'county')) {
      district['county'] = store.county;
    }
    if (store.changedFields.contains(r'name')) {
      district['name'] = store.name;
    }
    if (store.changedFields.contains(r'representation')) {
      district['representation'] = store.representation;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminDistrictForCreateAndUpdateFromAdminDistrictStore(AdminDistrictStore store) {
    var district = {};
    mapAdminDistrictStoreToEdemokraciaAdminDistrictForCreateAndUpdate(store, district);
    return district;
  }

  static void mapAdminDistrictStoreToEdemokraciaAdminDistrictForCreateAndUpdate(AdminDistrictStore store, dynamic district) {
    // Identifier
    district['__referenceId'] = store.internal__referenceIdentifier;
    district['__signedIdentifier'] = store.internal__signedIdentifier;
    district['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'name')) {
      district['name'] = store.name;
    }
    // Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminDistrict(AdminDistrictStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalDistrict = {};
    optionalDistrict['__identifier'] = store.internal__identifier;
    optionalDistrict['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalDistrict['__entityType'] = store.internal__entityType;
    optionalDistrict['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'city')) {
      optionalDistrict['city'] = store.city;
    }
    if (keepAllFields || store.changedFields.contains(r'county')) {
      optionalDistrict['county'] = store.county;
    }
    if (keepAllFields || store.changedFields.contains(r'name')) {
      optionalDistrict['name'] = store.name;
    }
    if (keepAllFields || store.changedFields.contains(r'representation')) {
      optionalDistrict['representation'] = store.representation;
    }

    // Relations
    return optionalDistrict;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Issue
  static AdminIssueStore createAdminIssueStoreFromEdemokraciaAdminIssue(dynamic issue) {
    if (issue == null) {
      return null;
    }
    var store = AdminIssueStore();
    mapEdemokraciaAdminIssueToAdminIssueStore(issue, store);
    return store;
  }

  static void mapEdemokraciaAdminIssueToAdminIssueStore(dynamic issue, AdminIssueStore store) {
    // Identifier
    store.internal__identifier = issue['__identifier'];
    store.internal__signedIdentifier = issue['__signedIdentifier'];
    store.internal__referenceIdentifier = issue['__referenceId'];
    store.internal__entityType = issue['__entityType'];
    store.internal__updatable = issue['__updateable'];
    store.internal__deletable = issue['__deleteable'];

    if (issue != null && issue.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = issue['created'] != null ? DateTime.tryParse(issue['created']).toLocal() : null;
    store.description = issue['description'];
    store.representation = issue['representation'];
    if (issue['status'] != null) {
      store.status = enumFromString<EdemokraciaIssueStatus>(EdemokraciaIssueStatus.values, issue['status']);
    }
    store.title = issue['title'];
    // Relations
    if (issue['attachments'] != null) {
      store.attachments.addAll(issue['attachments'].map<AdminIssueAttachmentStore>((issueAttachment) {
        var store = AdminIssueAttachmentStore();
        mapEdemokraciaAdminIssueAttachmentToAdminIssueAttachmentStore(issueAttachment, store);
        return store;
      }).toList());
    }
    if (issue['categories'] != null) {
      store.categories.addAll(issue['categories'].map<AdminIssueCategoryStore>((issueCategory) {
        var store = AdminIssueCategoryStore();
        mapEdemokraciaAdminIssueCategoryToAdminIssueCategoryStore(issueCategory, store);
        return store;
      }).toList());
    }
    if (issue['comments'] != null) {
      store.comments.addAll(issue['comments'].map<AdminCommentStore>((comment) {
        var store = AdminCommentStore();
        mapEdemokraciaAdminCommentToAdminCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (issue['createdBy'] != null) {
      var createdBy = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(issue['createdBy'], createdBy);
      store.setCreatedBy(createdBy);
    }
    if (issue['debates'] != null) {
      store.debates.addAll(issue['debates'].map<AdminIssueDebateStore>((issueDebate) {
        var store = AdminIssueDebateStore();
        mapEdemokraciaAdminIssueDebateToAdminIssueDebateStore(issueDebate, store);
        return store;
      }).toList());
    }
    if (issue['owner'] != null) {
      var owner = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(issue['owner'], owner);
      store.setOwner(owner);
    }
  }

  static dynamic createEdemokraciaAdminIssueFromAdminIssueStore(AdminIssueStore store) {
    if (store == null) {
      return null;
    }
    var issue = {};
    mapAdminIssueStoreToEdemokraciaAdminIssue(store, issue);
    return issue;
  }

  static void mapAdminIssueStoreToEdemokraciaAdminIssue(AdminIssueStore store, dynamic issue) {
    issue['__identifier'] = store.internal__identifier;
    issue['__signedIdentifier'] = store.internal__signedIdentifier;
    issue['__entityType'] = store.internal__entityType;
    issue['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      issue['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      issue['description'] = store.description;
    }
    if (store.changedFields.contains(r'representation')) {
      issue['representation'] = store.representation;
    }
    if (store.changedFields.contains(r'status')) {
      issue['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      issue['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'attachments')) {
      issue['attachments'] = store.attachments.map<dynamic>(createEdemokraciaAdminIssueAttachmentFromAdminIssueAttachmentStore).toList();
    }
    if (store.changedFields.contains(r'categories')) {
      issue['categories'] = store.categories.map<dynamic>(createEdemokraciaAdminIssueCategoryFromAdminIssueCategoryStore).toList();
    }
    if (store.changedFields.contains(r'owner')) {
      issue['owner'] = createEdemokraciaAdminUserFromAdminUserStore(store.owner);
    }
  }

  static dynamic createEdemokraciaAdminIssueForCreateAndUpdateFromAdminIssueStore(AdminIssueStore store) {
    var issue = {};
    mapAdminIssueStoreToEdemokraciaAdminIssueForCreateAndUpdate(store, issue);
    return issue;
  }

  static void mapAdminIssueStoreToEdemokraciaAdminIssueForCreateAndUpdate(AdminIssueStore store, dynamic issue) {
    // Identifier
    issue['__referenceId'] = store.internal__referenceIdentifier;
    issue['__signedIdentifier'] = store.internal__signedIdentifier;
    issue['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'description')) {
      issue['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      issue['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      issue['title'] = store.title;
    }
    // Relations
    if (store.changedFields.contains(r'attachments')) {
      issue['attachments'] = store.attachments.map<dynamic>((store) {
        return createEdemokraciaAdminIssueAttachmentForCreateAndUpdateFromAdminIssueAttachmentStore(store);
      }).toList();
    }
    if (store.changedFields.contains(r'categories')) {
      issue['categories'] = store.categories.map<dynamic>((store) {
        return createEdemokraciaOptionalTransferobjecttypesAdminIssueCategory(store);
      }).toList();
    }
    if (store.changedFields.contains(r'owner')) {
      issue['owner'] = createEdemokraciaOptionalTransferobjecttypesAdminUser(store.owner);
    }
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionAdminGetRangeInputIssueCategoriesFromAdminIssueStore(AdminIssueStore store) {
    if (store == null) {
      return null;
    }
    var issue = {};
    mapAdminIssueStoreToEdemokraciaExtensionAdminGetRangeInputIssueCategories(issue, store);
    return issue;
  }

  static void mapAdminIssueStoreToEdemokraciaExtensionAdminGetRangeInputIssueCategories(dynamic issue, AdminIssueStore store) {
    var optionalIssue = createEdemokraciaOptionalTransferobjecttypesAdminIssue(store);

    issue['owner'] = optionalIssue;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputIssueOwnerFromAdminIssueStore(AdminIssueStore store) {
    if (store == null) {
      return null;
    }
    var issue = {};
    mapAdminIssueStoreToEdemokraciaExtensionAdminGetRangeInputIssueOwner(issue, store);
    return issue;
  }

  static void mapAdminIssueStoreToEdemokraciaExtensionAdminGetRangeInputIssueOwner(dynamic issue, AdminIssueStore store) {
    var optionalIssue = createEdemokraciaOptionalTransferobjecttypesAdminIssue(store);

    issue['owner'] = optionalIssue;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminIssue(AdminIssueStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssue = {};
    optionalIssue['__identifier'] = store.internal__identifier;
    optionalIssue['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssue['__entityType'] = store.internal__entityType;
    optionalIssue['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalIssue['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalIssue['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'representation')) {
      optionalIssue['representation'] = store.representation;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalIssue['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalIssue['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'attachments')) {
      optionalIssue['attachments'] = store.attachments.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminIssueAttachment).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'categories')) {
      optionalIssue['categories'] = store.categories.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminIssueCategory).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'owner')) {
      optionalIssue['owner'] = createEdemokraciaOptionalTransferobjecttypesAdminUser(store.owner);
    }
    return optionalIssue;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR IssueAttachment
  static AdminIssueAttachmentStore createAdminIssueAttachmentStoreFromEdemokraciaAdminIssueAttachment(dynamic issueAttachment) {
    if (issueAttachment == null) {
      return null;
    }
    var store = AdminIssueAttachmentStore();
    mapEdemokraciaAdminIssueAttachmentToAdminIssueAttachmentStore(issueAttachment, store);
    return store;
  }

  static void mapEdemokraciaAdminIssueAttachmentToAdminIssueAttachmentStore(dynamic issueAttachment, AdminIssueAttachmentStore store) {
    // Identifier
    store.internal__identifier = issueAttachment['__identifier'];
    store.internal__signedIdentifier = issueAttachment['__signedIdentifier'];
    store.internal__referenceIdentifier = issueAttachment['__referenceId'];
    store.internal__entityType = issueAttachment['__entityType'];
    store.internal__updatable = issueAttachment['__updateable'];
    store.internal__deletable = issueAttachment['__deleteable'];

    if (issueAttachment != null && issueAttachment.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.file = issueAttachment['file'];
    store.link = issueAttachment['link'];
    if (issueAttachment['type'] != null) {
      store.type = enumFromString<EdemokraciaAttachmentType>(EdemokraciaAttachmentType.values, issueAttachment['type']);
    }
    // Relations
  }

  static dynamic createEdemokraciaAdminIssueAttachmentFromAdminIssueAttachmentStore(AdminIssueAttachmentStore store) {
    if (store == null) {
      return null;
    }
    var issueAttachment = {};
    mapAdminIssueAttachmentStoreToEdemokraciaAdminIssueAttachment(store, issueAttachment);
    return issueAttachment;
  }

  static void mapAdminIssueAttachmentStoreToEdemokraciaAdminIssueAttachment(AdminIssueAttachmentStore store, dynamic issueAttachment) {
    issueAttachment['__identifier'] = store.internal__identifier;
    issueAttachment['__signedIdentifier'] = store.internal__signedIdentifier;
    issueAttachment['__entityType'] = store.internal__entityType;
    issueAttachment['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'file')) {
      issueAttachment['file'] = store.file;
    }
    if (store.changedFields.contains(r'link')) {
      issueAttachment['link'] = store.link;
    }
    if (store.changedFields.contains(r'type')) {
      issueAttachment['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminIssueAttachmentForCreateAndUpdateFromAdminIssueAttachmentStore(AdminIssueAttachmentStore store) {
    var issueAttachment = {};
    mapAdminIssueAttachmentStoreToEdemokraciaAdminIssueAttachmentForCreateAndUpdate(store, issueAttachment);
    return issueAttachment;
  }

  static void mapAdminIssueAttachmentStoreToEdemokraciaAdminIssueAttachmentForCreateAndUpdate(AdminIssueAttachmentStore store, dynamic issueAttachment) {
    // Identifier
    issueAttachment['__referenceId'] = store.internal__referenceIdentifier;
    issueAttachment['__signedIdentifier'] = store.internal__signedIdentifier;
    issueAttachment['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'file')) {
      issueAttachment['file'] = store.file;
    }
    if (store.changedFields.contains(r'link')) {
      issueAttachment['link'] = store.link;
    }
    if (store.changedFields.contains(r'type')) {
      issueAttachment['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }
    // Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminIssueAttachment(AdminIssueAttachmentStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssueAttachment = {};
    optionalIssueAttachment['__identifier'] = store.internal__identifier;
    optionalIssueAttachment['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssueAttachment['__entityType'] = store.internal__entityType;
    optionalIssueAttachment['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'file')) {
      optionalIssueAttachment['file'] = store.file;
    }
    if (keepAllFields || store.changedFields.contains(r'link')) {
      optionalIssueAttachment['link'] = store.link;
    }
    if (keepAllFields || store.changedFields.contains(r'type')) {
      optionalIssueAttachment['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    // Relations
    return optionalIssueAttachment;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR IssueCategory
  static AdminIssueCategoryStore createAdminIssueCategoryStoreFromEdemokraciaAdminIssueCategory(dynamic issueCategory) {
    if (issueCategory == null) {
      return null;
    }
    var store = AdminIssueCategoryStore();
    mapEdemokraciaAdminIssueCategoryToAdminIssueCategoryStore(issueCategory, store);
    return store;
  }

  static void mapEdemokraciaAdminIssueCategoryToAdminIssueCategoryStore(dynamic issueCategory, AdminIssueCategoryStore store) {
    // Identifier
    store.internal__identifier = issueCategory['__identifier'];
    store.internal__signedIdentifier = issueCategory['__signedIdentifier'];
    store.internal__referenceIdentifier = issueCategory['__referenceId'];
    store.internal__entityType = issueCategory['__entityType'];
    store.internal__updatable = issueCategory['__updateable'];
    store.internal__deletable = issueCategory['__deleteable'];

    if (issueCategory != null && issueCategory.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.description = issueCategory['description'];
    store.title = issueCategory['title'];
    // Relations
    if (issueCategory['owner'] != null) {
      var owner = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(issueCategory['owner'], owner);
      store.setOwner(owner);
    }
    if (issueCategory['subcategories'] != null) {
      store.subcategories.addAll(issueCategory['subcategories'].map<AdminIssueCategoryStore>((issueCategory) {
        var store = AdminIssueCategoryStore();
        mapEdemokraciaAdminIssueCategoryToAdminIssueCategoryStore(issueCategory, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaAdminIssueCategoryFromAdminIssueCategoryStore(AdminIssueCategoryStore store) {
    if (store == null) {
      return null;
    }
    var issueCategory = {};
    mapAdminIssueCategoryStoreToEdemokraciaAdminIssueCategory(store, issueCategory);
    return issueCategory;
  }

  static void mapAdminIssueCategoryStoreToEdemokraciaAdminIssueCategory(AdminIssueCategoryStore store, dynamic issueCategory) {
    issueCategory['__identifier'] = store.internal__identifier;
    issueCategory['__signedIdentifier'] = store.internal__signedIdentifier;
    issueCategory['__entityType'] = store.internal__entityType;
    issueCategory['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'description')) {
      issueCategory['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      issueCategory['title'] = store.title;
    }

    /// Relations
    if (store.changedFields.contains(r'owner')) {
      issueCategory['owner'] = createEdemokraciaAdminUserFromAdminUserStore(store.owner);
    }
    if (store.changedFields.contains(r'subcategories')) {
      issueCategory['subcategories'] = store.subcategories.map<dynamic>(createEdemokraciaAdminIssueCategoryFromAdminIssueCategoryStore).toList();
    }
  }

  static dynamic createEdemokraciaAdminIssueCategoryForCreateAndUpdateFromAdminIssueCategoryStore(AdminIssueCategoryStore store) {
    var issueCategory = {};
    mapAdminIssueCategoryStoreToEdemokraciaAdminIssueCategoryForCreateAndUpdate(store, issueCategory);
    return issueCategory;
  }

  static void mapAdminIssueCategoryStoreToEdemokraciaAdminIssueCategoryForCreateAndUpdate(AdminIssueCategoryStore store, dynamic issueCategory) {
    // Identifier
    issueCategory['__referenceId'] = store.internal__referenceIdentifier;
    issueCategory['__signedIdentifier'] = store.internal__signedIdentifier;
    issueCategory['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'description')) {
      issueCategory['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      issueCategory['title'] = store.title;
    }
    // Relations
    if (store.changedFields.contains(r'owner')) {
      issueCategory['owner'] = createEdemokraciaOptionalTransferobjecttypesAdminUser(store.owner);
    }
    if (store.changedFields.contains(r'subcategories')) {
      issueCategory['subcategories'] = store.subcategories.map<dynamic>((store) {
        return createEdemokraciaAdminIssueCategoryForCreateAndUpdateFromAdminIssueCategoryStore(store);
      }).toList();
    }
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionAdminGetRangeInputIssueCategoryOwnerFromAdminIssueCategoryStore(AdminIssueCategoryStore store) {
    if (store == null) {
      return null;
    }
    var issueCategory = {};
    mapAdminIssueCategoryStoreToEdemokraciaExtensionAdminGetRangeInputIssueCategoryOwner(issueCategory, store);
    return issueCategory;
  }

  static void mapAdminIssueCategoryStoreToEdemokraciaExtensionAdminGetRangeInputIssueCategoryOwner(dynamic issueCategory, AdminIssueCategoryStore store) {
    var optionalIssueCategory = createEdemokraciaOptionalTransferobjecttypesAdminIssueCategory(store);

    issueCategory['owner'] = optionalIssueCategory;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminIssueCategory(AdminIssueCategoryStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssueCategory = {};
    optionalIssueCategory['__identifier'] = store.internal__identifier;
    optionalIssueCategory['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssueCategory['__entityType'] = store.internal__entityType;
    optionalIssueCategory['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalIssueCategory['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalIssueCategory['title'] = store.title;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'owner')) {
      optionalIssueCategory['owner'] = createEdemokraciaOptionalTransferobjecttypesAdminUser(store.owner);
    }
    if (keepAllFields || store.changedFields.contains(r'subcategories')) {
      optionalIssueCategory['subcategories'] = store.subcategories.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminIssueCategory).toList();
    }
    return optionalIssueCategory;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR IssueDebate
  static AdminIssueDebateStore createAdminIssueDebateStoreFromEdemokraciaAdminIssueDebate(dynamic issueDebate) {
    if (issueDebate == null) {
      return null;
    }
    var store = AdminIssueDebateStore();
    mapEdemokraciaAdminIssueDebateToAdminIssueDebateStore(issueDebate, store);
    return store;
  }

  static void mapEdemokraciaAdminIssueDebateToAdminIssueDebateStore(dynamic issueDebate, AdminIssueDebateStore store) {
    // Identifier
    store.internal__identifier = issueDebate['__identifier'];
    store.internal__signedIdentifier = issueDebate['__signedIdentifier'];
    store.internal__referenceIdentifier = issueDebate['__referenceId'];
    store.internal__entityType = issueDebate['__entityType'];
    store.internal__updatable = issueDebate['__updateable'];
    store.internal__deletable = issueDebate['__deleteable'];

    if (issueDebate != null && issueDebate.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = issueDebate['closeAt'] != null ? DateTime.tryParse(issueDebate['closeAt']).toLocal() : null;
    store.description = issueDebate['description'];
    if (issueDebate['status'] != null) {
      store.status = enumFromString<EdemokraciaDebateStatus>(EdemokraciaDebateStatus.values, issueDebate['status']);
    }
    store.title = issueDebate['title'];
    // Relations
  }

  static dynamic createEdemokraciaAdminIssueDebateFromAdminIssueDebateStore(AdminIssueDebateStore store) {
    if (store == null) {
      return null;
    }
    var issueDebate = {};
    mapAdminIssueDebateStoreToEdemokraciaAdminIssueDebate(store, issueDebate);
    return issueDebate;
  }

  static void mapAdminIssueDebateStoreToEdemokraciaAdminIssueDebate(AdminIssueDebateStore store, dynamic issueDebate) {
    issueDebate['__identifier'] = store.internal__identifier;
    issueDebate['__signedIdentifier'] = store.internal__signedIdentifier;
    issueDebate['__entityType'] = store.internal__entityType;
    issueDebate['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      issueDebate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      issueDebate['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      issueDebate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      issueDebate['title'] = store.title;
    }

    /// Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminIssueDebate(AdminIssueDebateStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalIssueDebate = {};
    optionalIssueDebate['__identifier'] = store.internal__identifier;
    optionalIssueDebate['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalIssueDebate['__entityType'] = store.internal__entityType;
    optionalIssueDebate['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalIssueDebate['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalIssueDebate['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalIssueDebate['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalIssueDebate['title'] = store.title;
    }

    // Relations
    return optionalIssueDebate;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR Pro
  static AdminProStore createAdminProStoreFromEdemokraciaAdminPro(dynamic pro) {
    if (pro == null) {
      return null;
    }
    var store = AdminProStore();
    mapEdemokraciaAdminProToAdminProStore(pro, store);
    return store;
  }

  static void mapEdemokraciaAdminProToAdminProStore(dynamic pro, AdminProStore store) {
    // Identifier
    store.internal__identifier = pro['__identifier'];
    store.internal__signedIdentifier = pro['__signedIdentifier'];
    store.internal__referenceIdentifier = pro['__referenceId'];
    store.internal__entityType = pro['__entityType'];
    store.internal__updatable = pro['__updateable'];
    store.internal__deletable = pro['__deleteable'];

    if (pro != null && pro.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = pro['created'] != null ? DateTime.tryParse(pro['created']).toLocal() : null;
    store.createdByName = pro['createdByName'];
    store.description = pro['description'];
    store.downVotes = pro['downVotes'];
    store.title = pro['title'];
    store.upVotes = pro['upVotes'];
    // Relations
    if (pro['comments'] != null) {
      store.comments.addAll(pro['comments'].map<AdminCommentStore>((comment) {
        var store = AdminCommentStore();
        mapEdemokraciaAdminCommentToAdminCommentStore(comment, store);
        return store;
      }).toList());
    }
    if (pro['cons'] != null) {
      store.cons.addAll(pro['cons'].map<AdminConStore>((con) {
        var store = AdminConStore();
        mapEdemokraciaAdminConToAdminConStore(con, store);
        return store;
      }).toList());
    }
    if (pro['createdBy'] != null) {
      var createdBy = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(pro['createdBy'], createdBy);
      store.setCreatedBy(createdBy);
    }
    if (pro['pros'] != null) {
      store.pros.addAll(pro['pros'].map<AdminProStore>((pro) {
        var store = AdminProStore();
        mapEdemokraciaAdminProToAdminProStore(pro, store);
        return store;
      }).toList());
    }
  }

  static dynamic createEdemokraciaAdminProFromAdminProStore(AdminProStore store) {
    if (store == null) {
      return null;
    }
    var pro = {};
    mapAdminProStoreToEdemokraciaAdminPro(store, pro);
    return pro;
  }

  static void mapAdminProStoreToEdemokraciaAdminPro(AdminProStore store, dynamic pro) {
    pro['__identifier'] = store.internal__identifier;
    pro['__signedIdentifier'] = store.internal__signedIdentifier;
    pro['__entityType'] = store.internal__entityType;
    pro['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      pro['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'createdByName')) {
      pro['createdByName'] = store.createdByName;
    }
    if (store.changedFields.contains(r'description')) {
      pro['description'] = store.description;
    }
    if (store.changedFields.contains(r'downVotes')) {
      pro['downVotes'] = store.downVotes;
    }
    if (store.changedFields.contains(r'title')) {
      pro['title'] = store.title;
    }
    if (store.changedFields.contains(r'upVotes')) {
      pro['upVotes'] = store.upVotes;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminProForCreateAndUpdateFromAdminProStore(AdminProStore store) {
    var pro = {};
    mapAdminProStoreToEdemokraciaAdminProForCreateAndUpdate(store, pro);
    return pro;
  }

  static void mapAdminProStoreToEdemokraciaAdminProForCreateAndUpdate(AdminProStore store, dynamic pro) {
    // Identifier
    pro['__referenceId'] = store.internal__referenceIdentifier;
    pro['__signedIdentifier'] = store.internal__signedIdentifier;
    pro['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'created')) {
      pro['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      pro['description'] = store.description;
    }
    if (store.changedFields.contains(r'title')) {
      pro['title'] = store.title;
    }
    // Relations
  }

  // For rangeable handling

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminPro(AdminProStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalPro = {};
    optionalPro['__identifier'] = store.internal__identifier;
    optionalPro['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalPro['__entityType'] = store.internal__entityType;
    optionalPro['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalPro['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'createdByName')) {
      optionalPro['createdByName'] = store.createdByName;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalPro['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'downVotes')) {
      optionalPro['downVotes'] = store.downVotes;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalPro['title'] = store.title;
    }
    if (keepAllFields || store.changedFields.contains(r'upVotes')) {
      optionalPro['upVotes'] = store.upVotes;
    }

    // Relations
    return optionalPro;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR SimpleVote
  static AdminSimpleVoteStore createAdminSimpleVoteStoreFromEdemokraciaAdminSimpleVote(dynamic simpleVote) {
    if (simpleVote == null) {
      return null;
    }
    var store = AdminSimpleVoteStore();
    mapEdemokraciaAdminSimpleVoteToAdminSimpleVoteStore(simpleVote, store);
    return store;
  }

  static void mapEdemokraciaAdminSimpleVoteToAdminSimpleVoteStore(dynamic simpleVote, AdminSimpleVoteStore store) {
    // Identifier
    store.internal__identifier = simpleVote['__identifier'];
    store.internal__signedIdentifier = simpleVote['__signedIdentifier'];
    store.internal__referenceIdentifier = simpleVote['__referenceId'];
    store.internal__entityType = simpleVote['__entityType'];
    store.internal__updatable = simpleVote['__updateable'];
    store.internal__deletable = simpleVote['__deleteable'];

    if (simpleVote != null && simpleVote.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = simpleVote['created'] != null ? DateTime.tryParse(simpleVote['created']).toLocal() : null;
    if (simpleVote['type'] != null) {
      store.type = enumFromString<EdemokraciaSimpleVoteType>(EdemokraciaSimpleVoteType.values, simpleVote['type']);
    }
    // Relations
    if (simpleVote['user'] != null) {
      var user = AdminUserStore();
      mapEdemokraciaAdminUserToAdminUserStore(simpleVote['user'], user);
      store.setUser(user);
    }
  }

  static dynamic createEdemokraciaAdminSimpleVoteFromAdminSimpleVoteStore(AdminSimpleVoteStore store) {
    if (store == null) {
      return null;
    }
    var simpleVote = {};
    mapAdminSimpleVoteStoreToEdemokraciaAdminSimpleVote(store, simpleVote);
    return simpleVote;
  }

  static void mapAdminSimpleVoteStoreToEdemokraciaAdminSimpleVote(AdminSimpleVoteStore store, dynamic simpleVote) {
    simpleVote['__identifier'] = store.internal__identifier;
    simpleVote['__signedIdentifier'] = store.internal__signedIdentifier;
    simpleVote['__entityType'] = store.internal__entityType;
    simpleVote['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      simpleVote['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'type')) {
      simpleVote['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    /// Relations
    if (store.changedFields.contains(r'user')) {
      simpleVote['user'] = createEdemokraciaAdminUserFromAdminUserStore(store.user);
    }
  }

  static dynamic createEdemokraciaAdminSimpleVoteForCreateAndUpdateFromAdminSimpleVoteStore(AdminSimpleVoteStore store) {
    var simpleVote = {};
    mapAdminSimpleVoteStoreToEdemokraciaAdminSimpleVoteForCreateAndUpdate(store, simpleVote);
    return simpleVote;
  }

  static void mapAdminSimpleVoteStoreToEdemokraciaAdminSimpleVoteForCreateAndUpdate(AdminSimpleVoteStore store, dynamic simpleVote) {
    // Identifier
    simpleVote['__referenceId'] = store.internal__referenceIdentifier;
    simpleVote['__signedIdentifier'] = store.internal__signedIdentifier;
    simpleVote['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'created')) {
      simpleVote['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'type')) {
      simpleVote['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }
    // Relations
    if (store.changedFields.contains(r'user')) {
      simpleVote['user'] = createEdemokraciaOptionalTransferobjecttypesAdminUser(store.user);
    }
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionAdminGetRangeInputSimpleVoteUserFromAdminSimpleVoteStore(AdminSimpleVoteStore store) {
    if (store == null) {
      return null;
    }
    var simpleVote = {};
    mapAdminSimpleVoteStoreToEdemokraciaExtensionAdminGetRangeInputSimpleVoteUser(simpleVote, store);
    return simpleVote;
  }

  static void mapAdminSimpleVoteStoreToEdemokraciaExtensionAdminGetRangeInputSimpleVoteUser(dynamic simpleVote, AdminSimpleVoteStore store) {
    var optionalSimpleVote = createEdemokraciaOptionalTransferobjecttypesAdminSimpleVote(store);

    simpleVote['owner'] = optionalSimpleVote;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminSimpleVote(AdminSimpleVoteStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalSimpleVote = {};
    optionalSimpleVote['__identifier'] = store.internal__identifier;
    optionalSimpleVote['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalSimpleVote['__entityType'] = store.internal__entityType;
    optionalSimpleVote['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalSimpleVote['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'type')) {
      optionalSimpleVote['type'] = store.type != null ? store.type.toString().split('.').last : null;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'user')) {
      optionalSimpleVote['user'] = createEdemokraciaOptionalTransferobjecttypesAdminUser(store.user);
    }
    return optionalSimpleVote;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR User
  static AdminUserStore createAdminUserStoreFromEdemokraciaAdminUser(dynamic user) {
    if (user == null) {
      return null;
    }
    var store = AdminUserStore();
    mapEdemokraciaAdminUserToAdminUserStore(user, store);
    return store;
  }

  static void mapEdemokraciaAdminUserToAdminUserStore(dynamic user, AdminUserStore store) {
    // Identifier
    store.internal__identifier = user['__identifier'];
    store.internal__signedIdentifier = user['__signedIdentifier'];
    store.internal__referenceIdentifier = user['__referenceId'];
    store.internal__entityType = user['__entityType'];
    store.internal__updatable = user['__updateable'];
    store.internal__deletable = user['__deleteable'];

    if (user != null && user.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.created = user['created'] != null ? DateTime.tryParse(user['created']).toLocal() : null;
    store.email = user['email'];
    store.firstName = user['firstName'];
    store.isAdmin = user['isAdmin'];
    store.lastName = user['lastName'];
    store.phone = user['phone'];
    store.representation = user['representation'];
    store.userName = user['userName'];
    // Relations
    if (user['activityCities'] != null) {
      store.activityCities.addAll(user['activityCities'].map<AdminCityStore>((city) {
        var store = AdminCityStore();
        mapEdemokraciaAdminCityToAdminCityStore(city, store);
        return store;
      }).toList());
    }
    if (user['activityCounties'] != null) {
      store.activityCounties.addAll(user['activityCounties'].map<AdminCountyStore>((county) {
        var store = AdminCountyStore();
        mapEdemokraciaAdminCountyToAdminCountyStore(county, store);
        return store;
      }).toList());
    }
    if (user['activityDistricts'] != null) {
      store.activityDistricts.addAll(user['activityDistricts'].map<AdminDistrictStore>((district) {
        var store = AdminDistrictStore();
        mapEdemokraciaAdminDistrictToAdminDistrictStore(district, store);
        return store;
      }).toList());
    }
    if (user['residentCity'] != null) {
      var residentCity = AdminCityStore();
      mapEdemokraciaAdminCityToAdminCityStore(user['residentCity'], residentCity);
      store.setResidentCity(residentCity);
    }
    if (user['residentCounty'] != null) {
      var residentCounty = AdminCountyStore();
      mapEdemokraciaAdminCountyToAdminCountyStore(user['residentCounty'], residentCounty);
      store.setResidentCounty(residentCounty);
    }
    if (user['residentDistrict'] != null) {
      var residentDistrict = AdminDistrictStore();
      mapEdemokraciaAdminDistrictToAdminDistrictStore(user['residentDistrict'], residentDistrict);
      store.setResidentDistrict(residentDistrict);
    }
  }

  static dynamic createEdemokraciaAdminUserFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaAdminUser(store, user);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaAdminUser(AdminUserStore store, dynamic user) {
    user['__identifier'] = store.internal__identifier;
    user['__signedIdentifier'] = store.internal__signedIdentifier;
    user['__entityType'] = store.internal__entityType;
    user['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'created')) {
      user['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'email')) {
      user['email'] = store.email;
    }
    if (store.changedFields.contains(r'firstName')) {
      user['firstName'] = store.firstName;
    }
    if (store.changedFields.contains(r'isAdmin')) {
      user['isAdmin'] = store.isAdmin;
    }
    if (store.changedFields.contains(r'lastName')) {
      user['lastName'] = store.lastName;
    }
    if (store.changedFields.contains(r'phone')) {
      user['phone'] = store.phone;
    }
    if (store.changedFields.contains(r'representation')) {
      user['representation'] = store.representation;
    }
    if (store.changedFields.contains(r'userName')) {
      user['userName'] = store.userName;
    }

    /// Relations
    if (store.changedFields.contains(r'activityCities')) {
      user['activityCities'] = store.activityCities.map<dynamic>(createEdemokraciaAdminCityFromAdminCityStore).toList();
    }
    if (store.changedFields.contains(r'activityCounties')) {
      user['activityCounties'] = store.activityCounties.map<dynamic>(createEdemokraciaAdminCountyFromAdminCountyStore).toList();
    }
    if (store.changedFields.contains(r'activityDistricts')) {
      user['activityDistricts'] = store.activityDistricts.map<dynamic>(createEdemokraciaAdminDistrictFromAdminDistrictStore).toList();
    }
    if (store.changedFields.contains(r'residentCity')) {
      user['residentCity'] = createEdemokraciaAdminCityFromAdminCityStore(store.residentCity);
    }
    if (store.changedFields.contains(r'residentCounty')) {
      user['residentCounty'] = createEdemokraciaAdminCountyFromAdminCountyStore(store.residentCounty);
    }
    if (store.changedFields.contains(r'residentDistrict')) {
      user['residentDistrict'] = createEdemokraciaAdminDistrictFromAdminDistrictStore(store.residentDistrict);
    }
  }

  static dynamic createEdemokraciaAdminUserForCreateAndUpdateFromAdminUserStore(AdminUserStore store) {
    var user = {};
    mapAdminUserStoreToEdemokraciaAdminUserForCreateAndUpdate(store, user);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaAdminUserForCreateAndUpdate(AdminUserStore store, dynamic user) {
    // Identifier
    user['__referenceId'] = store.internal__referenceIdentifier;
    user['__signedIdentifier'] = store.internal__signedIdentifier;
    user['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'created')) {
      user['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'email')) {
      user['email'] = store.email;
    }
    if (store.changedFields.contains(r'firstName')) {
      user['firstName'] = store.firstName;
    }
    if (store.changedFields.contains(r'isAdmin')) {
      user['isAdmin'] = store.isAdmin;
    }
    if (store.changedFields.contains(r'lastName')) {
      user['lastName'] = store.lastName;
    }
    if (store.changedFields.contains(r'phone')) {
      user['phone'] = store.phone;
    }
    if (store.changedFields.contains(r'userName')) {
      user['userName'] = store.userName;
    }
    // Relations
    if (store.changedFields.contains(r'activityCities')) {
      user['activityCities'] = store.activityCities.map<dynamic>((store) {
        return createEdemokraciaOptionalTransferobjecttypesAdminCity(store);
      }).toList();
    }
    if (store.changedFields.contains(r'activityCounties')) {
      user['activityCounties'] = store.activityCounties.map<dynamic>((store) {
        return createEdemokraciaOptionalTransferobjecttypesAdminCounty(store);
      }).toList();
    }
    if (store.changedFields.contains(r'activityDistricts')) {
      user['activityDistricts'] = store.activityDistricts.map<dynamic>((store) {
        return createEdemokraciaOptionalTransferobjecttypesAdminDistrict(store);
      }).toList();
    }
    if (store.changedFields.contains(r'residentCity')) {
      user['residentCity'] = createEdemokraciaOptionalTransferobjecttypesAdminCity(store.residentCity);
    }
    if (store.changedFields.contains(r'residentCounty')) {
      user['residentCounty'] = createEdemokraciaOptionalTransferobjecttypesAdminCounty(store.residentCounty);
    }
    if (store.changedFields.contains(r'residentDistrict')) {
      user['residentDistrict'] = createEdemokraciaOptionalTransferobjecttypesAdminDistrict(store.residentDistrict);
    }
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserActivityCitiesFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserActivityCities(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserActivityCities(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserActivityCountiesFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserActivityCounties(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserActivityCounties(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserActivityDistrictsFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserActivityDistricts(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserActivityDistricts(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserResidentCityFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserResidentCity(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserResidentCity(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserResidentCountyFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserResidentCounty(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserResidentCounty(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserResidentDistrictFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserResidentDistrict(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserResidentDistrict(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaExtensionAdminGetRangeInputUserVotesFromAdminUserStore(AdminUserStore store) {
    if (store == null) {
      return null;
    }
    var user = {};
    mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserVotes(user, store);
    return user;
  }

  static void mapAdminUserStoreToEdemokraciaExtensionAdminGetRangeInputUserVotes(dynamic user, AdminUserStore store) {
    var optionalUser = createEdemokraciaOptionalTransferobjecttypesAdminUser(store);

    user['owner'] = optionalUser;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminUser(AdminUserStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalUser = {};
    optionalUser['__identifier'] = store.internal__identifier;
    optionalUser['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalUser['__entityType'] = store.internal__entityType;
    optionalUser['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalUser['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'email')) {
      optionalUser['email'] = store.email;
    }
    if (keepAllFields || store.changedFields.contains(r'firstName')) {
      optionalUser['firstName'] = store.firstName;
    }
    if (keepAllFields || store.changedFields.contains(r'isAdmin')) {
      optionalUser['isAdmin'] = store.isAdmin;
    }
    if (keepAllFields || store.changedFields.contains(r'lastName')) {
      optionalUser['lastName'] = store.lastName;
    }
    if (keepAllFields || store.changedFields.contains(r'phone')) {
      optionalUser['phone'] = store.phone;
    }
    if (keepAllFields || store.changedFields.contains(r'representation')) {
      optionalUser['representation'] = store.representation;
    }
    if (keepAllFields || store.changedFields.contains(r'userName')) {
      optionalUser['userName'] = store.userName;
    }

    // Relations
    if (keepAllFields || store.changedFields.contains(r'activityCities')) {
      optionalUser['activityCities'] = store.activityCities.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminCity).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'activityCounties')) {
      optionalUser['activityCounties'] = store.activityCounties.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminCounty).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'activityDistricts')) {
      optionalUser['activityDistricts'] = store.activityDistricts.map<dynamic>(createEdemokraciaOptionalTransferobjecttypesAdminDistrict).toList();
    }
    if (keepAllFields || store.changedFields.contains(r'residentCity')) {
      optionalUser['residentCity'] = createEdemokraciaOptionalTransferobjecttypesAdminCity(store.residentCity);
    }
    if (keepAllFields || store.changedFields.contains(r'residentCounty')) {
      optionalUser['residentCounty'] = createEdemokraciaOptionalTransferobjecttypesAdminCounty(store.residentCounty);
    }
    if (keepAllFields || store.changedFields.contains(r'residentDistrict')) {
      optionalUser['residentDistrict'] = createEdemokraciaOptionalTransferobjecttypesAdminDistrict(store.residentDistrict);
    }
    return optionalUser;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MAPPERS FOR VoteDefinition
  static AdminVoteDefinitionStore createAdminVoteDefinitionStoreFromEdemokraciaAdminVoteDefinition(dynamic voteDefinition) {
    if (voteDefinition == null) {
      return null;
    }
    var store = AdminVoteDefinitionStore();
    mapEdemokraciaAdminVoteDefinitionToAdminVoteDefinitionStore(voteDefinition, store);
    return store;
  }

  static void mapEdemokraciaAdminVoteDefinitionToAdminVoteDefinitionStore(dynamic voteDefinition, AdminVoteDefinitionStore store) {
    // Identifier
    store.internal__identifier = voteDefinition['__identifier'];
    store.internal__signedIdentifier = voteDefinition['__signedIdentifier'];
    store.internal__referenceIdentifier = voteDefinition['__referenceId'];
    store.internal__entityType = voteDefinition['__entityType'];
    store.internal__updatable = voteDefinition['__updateable'];
    store.internal__deletable = voteDefinition['__deleteable'];

    if (voteDefinition != null && voteDefinition.isEmpty) {
      store.internal__isOriginEmpty = true;
    }

    // Attributes
    store.closeAt = voteDefinition['closeAt'] != null ? DateTime.tryParse(voteDefinition['closeAt']).toLocal() : null;
    store.created = voteDefinition['created'] != null ? DateTime.tryParse(voteDefinition['created']).toLocal() : null;
    store.description = voteDefinition['description'];
    store.isNotRatingType = voteDefinition['isNotRatingType'];
    store.isNotSelectAnswerType = voteDefinition['isNotSelectAnswerType'];
    store.isNotYesNoAbstainType = voteDefinition['isNotYesNoAbstainType'];
    store.isNotYesNoType = voteDefinition['isNotYesNoType'];
    store.isRatingType = voteDefinition['isRatingType'];
    store.isSelectAnswerType = voteDefinition['isSelectAnswerType'];
    store.isYesNoAbstainType = voteDefinition['isYesNoAbstainType'];
    store.isYesNoType = voteDefinition['isYesNoType'];
    if (voteDefinition['status'] != null) {
      store.status = enumFromString<EdemokraciaVoteStatus>(EdemokraciaVoteStatus.values, voteDefinition['status']);
    }
    store.title = voteDefinition['title'];
    // Relations
  }

  static dynamic createEdemokraciaAdminVoteDefinitionFromAdminVoteDefinitionStore(AdminVoteDefinitionStore store) {
    if (store == null) {
      return null;
    }
    var voteDefinition = {};
    mapAdminVoteDefinitionStoreToEdemokraciaAdminVoteDefinition(store, voteDefinition);
    return voteDefinition;
  }

  static void mapAdminVoteDefinitionStoreToEdemokraciaAdminVoteDefinition(AdminVoteDefinitionStore store, dynamic voteDefinition) {
    voteDefinition['__identifier'] = store.internal__identifier;
    voteDefinition['__signedIdentifier'] = store.internal__signedIdentifier;
    voteDefinition['__entityType'] = store.internal__entityType;
    voteDefinition['__referenceId'] = store.internal__referenceIdentifier;

    /// Attributes
    if (store.changedFields.contains(r'closeAt')) {
      voteDefinition['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'created')) {
      voteDefinition['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      voteDefinition['description'] = store.description;
    }
    if (store.changedFields.contains(r'isNotRatingType')) {
      voteDefinition['isNotRatingType'] = store.isNotRatingType;
    }
    if (store.changedFields.contains(r'isNotSelectAnswerType')) {
      voteDefinition['isNotSelectAnswerType'] = store.isNotSelectAnswerType;
    }
    if (store.changedFields.contains(r'isNotYesNoAbstainType')) {
      voteDefinition['isNotYesNoAbstainType'] = store.isNotYesNoAbstainType;
    }
    if (store.changedFields.contains(r'isNotYesNoType')) {
      voteDefinition['isNotYesNoType'] = store.isNotYesNoType;
    }
    if (store.changedFields.contains(r'isRatingType')) {
      voteDefinition['isRatingType'] = store.isRatingType;
    }
    if (store.changedFields.contains(r'isSelectAnswerType')) {
      voteDefinition['isSelectAnswerType'] = store.isSelectAnswerType;
    }
    if (store.changedFields.contains(r'isYesNoAbstainType')) {
      voteDefinition['isYesNoAbstainType'] = store.isYesNoAbstainType;
    }
    if (store.changedFields.contains(r'isYesNoType')) {
      voteDefinition['isYesNoType'] = store.isYesNoType;
    }
    if (store.changedFields.contains(r'status')) {
      voteDefinition['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      voteDefinition['title'] = store.title;
    }

    /// Relations
  }

  static dynamic createEdemokraciaAdminVoteDefinitionForCreateAndUpdateFromAdminVoteDefinitionStore(AdminVoteDefinitionStore store) {
    var voteDefinition = {};
    mapAdminVoteDefinitionStoreToEdemokraciaAdminVoteDefinitionForCreateAndUpdate(store, voteDefinition);
    return voteDefinition;
  }

  static void mapAdminVoteDefinitionStoreToEdemokraciaAdminVoteDefinitionForCreateAndUpdate(AdminVoteDefinitionStore store, dynamic voteDefinition) {
    // Identifier
    voteDefinition['__referenceId'] = store.internal__referenceIdentifier;
    voteDefinition['__signedIdentifier'] = store.internal__signedIdentifier;
    voteDefinition['__entityType'] = store.internal__entityType;

    // Attributes
    if (store.changedFields.contains(r'closeAt')) {
      voteDefinition['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'created')) {
      voteDefinition['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (store.changedFields.contains(r'description')) {
      voteDefinition['description'] = store.description;
    }
    if (store.changedFields.contains(r'status')) {
      voteDefinition['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (store.changedFields.contains(r'title')) {
      voteDefinition['title'] = store.title;
    }
    // Relations
  }

  // For rangeable handling
  static dynamic createEdemokraciaExtensionAdminGetRangeInputVoteDefinitionVoteSelectAnswerFromAdminVoteDefinitionStore(AdminVoteDefinitionStore store) {
    if (store == null) {
      return null;
    }
    var voteDefinition = {};
    mapAdminVoteDefinitionStoreToEdemokraciaExtensionAdminGetRangeInputVoteDefinitionVoteSelectAnswer(voteDefinition, store);
    return voteDefinition;
  }

  static void mapAdminVoteDefinitionStoreToEdemokraciaExtensionAdminGetRangeInputVoteDefinitionVoteSelectAnswer(
      dynamic voteDefinition, AdminVoteDefinitionStore store) {
    var optionalVoteDefinition = createEdemokraciaOptionalTransferobjecttypesAdminVoteDefinition(store);

    voteDefinition['owner'] = optionalVoteDefinition;
  }

  static dynamic createEdemokraciaOptionalTransferobjecttypesAdminVoteDefinition(AdminVoteDefinitionStore store, {keepAllFields = false}) {
    if (store == null) {
      return null;
    }
    var optionalVoteDefinition = {};
    optionalVoteDefinition['__identifier'] = store.internal__identifier;
    optionalVoteDefinition['__signedIdentifier'] = store.internal__signedIdentifier;
    optionalVoteDefinition['__entityType'] = store.internal__entityType;
    optionalVoteDefinition['__referenceId'] = store.internal__referenceIdentifier;

    // Attributes
    if (keepAllFields || store.changedFields.contains(r'closeAt')) {
      optionalVoteDefinition['closeAt'] = store.closeAt != null ? store.closeAt.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'created')) {
      optionalVoteDefinition['created'] = store.created != null ? store.created.toUtc().toIso8601String() : null;
    }
    if (keepAllFields || store.changedFields.contains(r'description')) {
      optionalVoteDefinition['description'] = store.description;
    }
    if (keepAllFields || store.changedFields.contains(r'isNotRatingType')) {
      optionalVoteDefinition['isNotRatingType'] = store.isNotRatingType;
    }
    if (keepAllFields || store.changedFields.contains(r'isNotSelectAnswerType')) {
      optionalVoteDefinition['isNotSelectAnswerType'] = store.isNotSelectAnswerType;
    }
    if (keepAllFields || store.changedFields.contains(r'isNotYesNoAbstainType')) {
      optionalVoteDefinition['isNotYesNoAbstainType'] = store.isNotYesNoAbstainType;
    }
    if (keepAllFields || store.changedFields.contains(r'isNotYesNoType')) {
      optionalVoteDefinition['isNotYesNoType'] = store.isNotYesNoType;
    }
    if (keepAllFields || store.changedFields.contains(r'isRatingType')) {
      optionalVoteDefinition['isRatingType'] = store.isRatingType;
    }
    if (keepAllFields || store.changedFields.contains(r'isSelectAnswerType')) {
      optionalVoteDefinition['isSelectAnswerType'] = store.isSelectAnswerType;
    }
    if (keepAllFields || store.changedFields.contains(r'isYesNoAbstainType')) {
      optionalVoteDefinition['isYesNoAbstainType'] = store.isYesNoAbstainType;
    }
    if (keepAllFields || store.changedFields.contains(r'isYesNoType')) {
      optionalVoteDefinition['isYesNoType'] = store.isYesNoType;
    }
    if (keepAllFields || store.changedFields.contains(r'status')) {
      optionalVoteDefinition['status'] = store.status != null ? store.status.toString().split('.').last : null;
    }
    if (keepAllFields || store.changedFields.contains(r'title')) {
      optionalVoteDefinition['title'] = store.title;
    }

    // Relations
    return optionalVoteDefinition;
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Upload
  static String getDownloadTokenFromUploadResponse(dynamic response) {
    JudoUploadData uploadData = JudoUploadData.fromJson(response);
    if (uploadData == null) {
      return null;
    }
    if (uploadData.files != null && uploadData.files.isNotEmpty) {
      return uploadData.files[0].token;
    } else {
      return null;
    }
  }

// Download
  static JudoDownloadFile getDownloadedFileFromDownloadResponse(http.Response response) {
    final contentType = response.headers['content-type'];
    final extension = extensionFromMime(contentType);
    final contentDisposition = response.headers['content-disposition'];
    String filename = 'download';
    if (contentDisposition != null) {
      final disposition = HeaderValue.parse(contentDisposition, preserveBackslash: true);
      final String headerFilename = disposition.parameters['filename'];
      if (headerFilename != null) {
        filename = headerFilename;
      } else {
        filename = filename + '.' + extension;
      }
    } else {
      filename = filename + '.' + extension;
    }

    final blob = Blob([response.bodyBytes]);
    return JudoDownloadFile(blob, filename);
  }
}
