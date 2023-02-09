// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin.store;

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CityStore on _CityStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CityStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CityStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$nameAtom = Atom(name: '_CityStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$districtsAtom = Atom(name: '_CityStore.districts');

  @override
  ObservableList<DistrictStore> get districts {
    _$districtsAtom.reportRead();
    return super.districts;
  }

  @override
  set districts(ObservableList<DistrictStore> value) {
    _$districtsAtom.reportWrite(value, super.districts, () {
      super.districts = value;
    });
  }

  final _$_CityStoreActionController = ActionController(name: '_CityStore');

  @override
  void setName(String name) {
    final _$actionInfo = _$_CityStoreActionController.startAction(name: '_CityStore.setName');
    try {
      return super.setName(name);
    } finally {
      _$_CityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllDistricts(List<DistrictStore> districts) {
    final _$actionInfo = _$_CityStoreActionController.startAction(name: '_CityStore.addAllDistricts');
    try {
      return super.addAllDistricts(districts);
    } finally {
      _$_CityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDistricts(List<DistrictStore> districts) {
    final _$actionInfo = _$_CityStoreActionController.startAction(name: '_CityStore.setDistricts');
    try {
      return super.setDistricts(districts);
    } finally {
      _$_CityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDistricts(DistrictStore districts) {
    final _$actionInfo = _$_CityStoreActionController.startAction(name: '_CityStore.removeDistricts');
    try {
      return super.removeDistricts(districts);
    } finally {
      _$_CityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CityStore storeToClone) {
    final _$actionInfo = _$_CityStoreActionController.startAction(name: '_CityStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CityStore storeToClone) {
    final _$actionInfo = _$_CityStoreActionController.startAction(name: '_CityStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
name: ${name},
districts: ${districts}
    ''';
  }
}

mixin _$CloseDebateInputStore on _CloseDebateInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CloseDebateInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CloseDebateInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_CloseDebateInputStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_CloseDebateInputStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_CloseDebateInputStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$voteTypeAtom = Atom(name: '_CloseDebateInputStore.voteType');

  @override
  EdemokraciaVoteTypeOnCloseDebate get voteType {
    _$voteTypeAtom.reportRead();
    return super.voteType;
  }

  @override
  set voteType(EdemokraciaVoteTypeOnCloseDebate value) {
    _$voteTypeAtom.reportWrite(value, super.voteType, () {
      super.voteType = value;
    });
  }

  final _$_CloseDebateInputStoreActionController = ActionController(name: '_CloseDebateInputStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_CloseDebateInputStoreActionController.startAction(name: '_CloseDebateInputStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_CloseDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_CloseDebateInputStoreActionController.startAction(name: '_CloseDebateInputStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_CloseDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_CloseDebateInputStoreActionController.startAction(name: '_CloseDebateInputStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_CloseDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVoteType(EdemokraciaVoteTypeOnCloseDebate voteType) {
    final _$actionInfo = _$_CloseDebateInputStoreActionController.startAction(name: '_CloseDebateInputStore.setVoteType');
    try {
      return super.setVoteType(voteType);
    } finally {
      _$_CloseDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CloseDebateInputStore storeToClone) {
    final _$actionInfo = _$_CloseDebateInputStoreActionController.startAction(name: '_CloseDebateInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CloseDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CloseDebateInputStore storeToClone) {
    final _$actionInfo = _$_CloseDebateInputStoreActionController.startAction(name: '_CloseDebateInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CloseDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
description: ${description},
title: ${title},
voteType: ${voteType}
    ''';
  }
}

mixin _$CommentStore on _CommentStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CommentStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CommentStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$commentAtom = Atom(name: '_CommentStore.comment');

  @override
  String get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(String value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  final _$createdAtom = Atom(name: '_CommentStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$createdByAtom = Atom(name: '_CommentStore.createdBy');

  @override
  UserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(UserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$votesAtom = Atom(name: '_CommentStore.votes');

  @override
  ObservableList<SimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<SimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_CommentStoreActionController = ActionController(name: '_CommentStore');

  @override
  void setComment(String comment) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.setComment');
    try {
      return super.setComment(comment);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(UserStore createdBy) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(SimpleVoteStore votes) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CommentStore storeToClone) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CommentStore storeToClone) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(name: '_CommentStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
comment: ${comment},
created: ${created},
createdBy: ${createdBy},
votes: ${votes}
    ''';
  }
}

mixin _$ConStore on _ConStore, Store {
  final _$internal__updatableAtom = Atom(name: '_ConStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_ConStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_ConStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_ConStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_ConStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$commentsAtom = Atom(name: '_ConStore.comments');

  @override
  ObservableList<CommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<CommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$consAtom = Atom(name: '_ConStore.cons');

  @override
  ObservableList<ConStore> get cons {
    _$consAtom.reportRead();
    return super.cons;
  }

  @override
  set cons(ObservableList<ConStore> value) {
    _$consAtom.reportWrite(value, super.cons, () {
      super.cons = value;
    });
  }

  final _$createdByAtom = Atom(name: '_ConStore.createdBy');

  @override
  UserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(UserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$prosAtom = Atom(name: '_ConStore.pros');

  @override
  ObservableList<ProStore> get pros {
    _$prosAtom.reportRead();
    return super.pros;
  }

  @override
  set pros(ObservableList<ProStore> value) {
    _$prosAtom.reportWrite(value, super.pros, () {
      super.pros = value;
    });
  }

  final _$votesAtom = Atom(name: '_ConStore.votes');

  @override
  ObservableList<SimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<SimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_ConStoreActionController = ActionController(name: '_ConStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<CommentStore> comments) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<CommentStore> comments) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(CommentStore comments) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCons(List<ConStore> cons) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.addAllCons');
    try {
      return super.addAllCons(cons);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCons(List<ConStore> cons) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setCons');
    try {
      return super.setCons(cons);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCons(ConStore cons) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.removeCons');
    try {
      return super.removeCons(cons);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(UserStore createdBy) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllPros(List<ProStore> pros) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.addAllPros');
    try {
      return super.addAllPros(pros);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPros(List<ProStore> pros) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setPros');
    try {
      return super.setPros(pros);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePros(ProStore pros) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.removePros');
    try {
      return super.removePros(pros);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(SimpleVoteStore votes) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(ConStore storeToClone) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(ConStore storeToClone) {
    final _$actionInfo = _$_ConStoreActionController.startAction(name: '_ConStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_ConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
description: ${description},
title: ${title},
comments: ${comments},
cons: ${cons},
createdBy: ${createdBy},
pros: ${pros},
votes: ${votes}
    ''';
  }
}

mixin _$CountyStore on _CountyStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CountyStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CountyStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$nameAtom = Atom(name: '_CountyStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$citiesAtom = Atom(name: '_CountyStore.cities');

  @override
  ObservableList<CityStore> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(ObservableList<CityStore> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  final _$_CountyStoreActionController = ActionController(name: '_CountyStore');

  @override
  void setName(String name) {
    final _$actionInfo = _$_CountyStoreActionController.startAction(name: '_CountyStore.setName');
    try {
      return super.setName(name);
    } finally {
      _$_CountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCities(List<CityStore> cities) {
    final _$actionInfo = _$_CountyStoreActionController.startAction(name: '_CountyStore.addAllCities');
    try {
      return super.addAllCities(cities);
    } finally {
      _$_CountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCities(List<CityStore> cities) {
    final _$actionInfo = _$_CountyStoreActionController.startAction(name: '_CountyStore.setCities');
    try {
      return super.setCities(cities);
    } finally {
      _$_CountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCities(CityStore cities) {
    final _$actionInfo = _$_CountyStoreActionController.startAction(name: '_CountyStore.removeCities');
    try {
      return super.removeCities(cities);
    } finally {
      _$_CountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CountyStore storeToClone) {
    final _$actionInfo = _$_CountyStoreActionController.startAction(name: '_CountyStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CountyStore storeToClone) {
    final _$actionInfo = _$_CountyStoreActionController.startAction(name: '_CountyStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
name: ${name},
cities: ${cities}
    ''';
  }
}

mixin _$CreateArgumentInputStore on _CreateArgumentInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CreateArgumentInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CreateArgumentInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_CreateArgumentInputStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_CreateArgumentInputStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$typeAtom = Atom(name: '_CreateArgumentInputStore.type');

  @override
  EdemokraciaCreateArgumentInputType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(EdemokraciaCreateArgumentInputType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$_CreateArgumentInputStoreActionController = ActionController(name: '_CreateArgumentInputStore');

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_CreateArgumentInputStoreActionController.startAction(name: '_CreateArgumentInputStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_CreateArgumentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_CreateArgumentInputStoreActionController.startAction(name: '_CreateArgumentInputStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_CreateArgumentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setType(EdemokraciaCreateArgumentInputType type) {
    final _$actionInfo = _$_CreateArgumentInputStoreActionController.startAction(name: '_CreateArgumentInputStore.setType');
    try {
      return super.setType(type);
    } finally {
      _$_CreateArgumentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CreateArgumentInputStore storeToClone) {
    final _$actionInfo = _$_CreateArgumentInputStoreActionController.startAction(name: '_CreateArgumentInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CreateArgumentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CreateArgumentInputStore storeToClone) {
    final _$actionInfo = _$_CreateArgumentInputStoreActionController.startAction(name: '_CreateArgumentInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CreateArgumentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
description: ${description},
title: ${title},
type: ${type}
    ''';
  }
}

mixin _$CreateCommentInputStore on _CreateCommentInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CreateCommentInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CreateCommentInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$commentAtom = Atom(name: '_CreateCommentInputStore.comment');

  @override
  String get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(String value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  final _$_CreateCommentInputStoreActionController = ActionController(name: '_CreateCommentInputStore');

  @override
  void setComment(String comment) {
    final _$actionInfo = _$_CreateCommentInputStoreActionController.startAction(name: '_CreateCommentInputStore.setComment');
    try {
      return super.setComment(comment);
    } finally {
      _$_CreateCommentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CreateCommentInputStore storeToClone) {
    final _$actionInfo = _$_CreateCommentInputStoreActionController.startAction(name: '_CreateCommentInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CreateCommentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CreateCommentInputStore storeToClone) {
    final _$actionInfo = _$_CreateCommentInputStoreActionController.startAction(name: '_CreateCommentInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CreateCommentInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
comment: ${comment}
    ''';
  }
}

mixin _$CreateDebateInputStore on _CreateDebateInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_CreateDebateInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_CreateDebateInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_CreateDebateInputStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_CreateDebateInputStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_CreateDebateInputStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$_CreateDebateInputStoreActionController = ActionController(name: '_CreateDebateInputStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_CreateDebateInputStoreActionController.startAction(name: '_CreateDebateInputStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_CreateDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_CreateDebateInputStoreActionController.startAction(name: '_CreateDebateInputStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_CreateDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_CreateDebateInputStoreActionController.startAction(name: '_CreateDebateInputStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_CreateDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(CreateDebateInputStore storeToClone) {
    final _$actionInfo = _$_CreateDebateInputStoreActionController.startAction(name: '_CreateDebateInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_CreateDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(CreateDebateInputStore storeToClone) {
    final _$actionInfo = _$_CreateDebateInputStoreActionController.startAction(name: '_CreateDebateInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_CreateDebateInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
description: ${description},
title: ${title}
    ''';
  }
}

mixin _$DebateStore on _DebateStore, Store {
  final _$internal__updatableAtom = Atom(name: '_DebateStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_DebateStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_DebateStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_DebateStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$statusAtom = Atom(name: '_DebateStore.status');

  @override
  EdemokraciaDebateStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaDebateStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_DebateStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$commentsAtom = Atom(name: '_DebateStore.comments');

  @override
  ObservableList<CommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<CommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$consAtom = Atom(name: '_DebateStore.cons');

  @override
  ObservableList<ConStore> get cons {
    _$consAtom.reportRead();
    return super.cons;
  }

  @override
  set cons(ObservableList<ConStore> value) {
    _$consAtom.reportWrite(value, super.cons, () {
      super.cons = value;
    });
  }

  final _$createdByAtom = Atom(name: '_DebateStore.createdBy');

  @override
  UserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(UserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$debateVoteAtom = Atom(name: '_DebateStore.debateVote');

  @override
  VoteDefinitionStore get debateVote {
    _$debateVoteAtom.reportRead();
    return super.debateVote;
  }

  @override
  set debateVote(VoteDefinitionStore value) {
    _$debateVoteAtom.reportWrite(value, super.debateVote, () {
      super.debateVote = value;
    });
  }

  final _$issueAtom = Atom(name: '_DebateStore.issue');

  @override
  IssueStore get issue {
    _$issueAtom.reportRead();
    return super.issue;
  }

  @override
  set issue(IssueStore value) {
    _$issueAtom.reportWrite(value, super.issue, () {
      super.issue = value;
    });
  }

  final _$prosAtom = Atom(name: '_DebateStore.pros');

  @override
  ObservableList<ProStore> get pros {
    _$prosAtom.reportRead();
    return super.pros;
  }

  @override
  set pros(ObservableList<ProStore> value) {
    _$prosAtom.reportWrite(value, super.pros, () {
      super.pros = value;
    });
  }

  final _$_DebateStoreActionController = ActionController(name: '_DebateStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaDebateStatus status) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<CommentStore> comments) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<CommentStore> comments) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(CommentStore comments) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCons(List<ConStore> cons) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.addAllCons');
    try {
      return super.addAllCons(cons);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCons(List<ConStore> cons) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setCons');
    try {
      return super.setCons(cons);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCons(ConStore cons) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.removeCons');
    try {
      return super.removeCons(cons);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(UserStore createdBy) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDebateVote(VoteDefinitionStore debateVote) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setDebateVote');
    try {
      return super.setDebateVote(debateVote);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIssue(IssueStore issue) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setIssue');
    try {
      return super.setIssue(issue);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllPros(List<ProStore> pros) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.addAllPros');
    try {
      return super.addAllPros(pros);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPros(List<ProStore> pros) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.setPros');
    try {
      return super.setPros(pros);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePros(ProStore pros) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.removePros');
    try {
      return super.removePros(pros);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(DebateStore storeToClone) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(DebateStore storeToClone) {
    final _$actionInfo = _$_DebateStoreActionController.startAction(name: '_DebateStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_DebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
description: ${description},
status: ${status},
title: ${title},
comments: ${comments},
cons: ${cons},
createdBy: ${createdBy},
debateVote: ${debateVote},
issue: ${issue},
pros: ${pros}
    ''';
  }
}

mixin _$DistrictStore on _DistrictStore, Store {
  final _$internal__updatableAtom = Atom(name: '_DistrictStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_DistrictStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$nameAtom = Atom(name: '_DistrictStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$_DistrictStoreActionController = ActionController(name: '_DistrictStore');

  @override
  void setName(String name) {
    final _$actionInfo = _$_DistrictStoreActionController.startAction(name: '_DistrictStore.setName');
    try {
      return super.setName(name);
    } finally {
      _$_DistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(DistrictStore storeToClone) {
    final _$actionInfo = _$_DistrictStoreActionController.startAction(name: '_DistrictStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_DistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(DistrictStore storeToClone) {
    final _$actionInfo = _$_DistrictStoreActionController.startAction(name: '_DistrictStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_DistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
name: ${name}
    ''';
  }
}

mixin _$IssueStore on _IssueStore, Store {
  final _$internal__updatableAtom = Atom(name: '_IssueStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_IssueStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_IssueStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_IssueStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$statusAtom = Atom(name: '_IssueStore.status');

  @override
  EdemokraciaIssueStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaIssueStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_IssueStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$attachmentsAtom = Atom(name: '_IssueStore.attachments');

  @override
  ObservableList<IssueAttachmentStore> get attachments {
    _$attachmentsAtom.reportRead();
    return super.attachments;
  }

  @override
  set attachments(ObservableList<IssueAttachmentStore> value) {
    _$attachmentsAtom.reportWrite(value, super.attachments, () {
      super.attachments = value;
    });
  }

  final _$categoriesAtom = Atom(name: '_IssueStore.categories');

  @override
  ObservableList<IssueCategoryStore> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(ObservableList<IssueCategoryStore> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$commentsAtom = Atom(name: '_IssueStore.comments');

  @override
  ObservableList<CommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<CommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$createdByAtom = Atom(name: '_IssueStore.createdBy');

  @override
  UserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(UserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$debatesAtom = Atom(name: '_IssueStore.debates');

  @override
  ObservableList<DebateStore> get debates {
    _$debatesAtom.reportRead();
    return super.debates;
  }

  @override
  set debates(ObservableList<DebateStore> value) {
    _$debatesAtom.reportWrite(value, super.debates, () {
      super.debates = value;
    });
  }

  final _$ownerAtom = Atom(name: '_IssueStore.owner');

  @override
  UserStore get owner {
    _$ownerAtom.reportRead();
    return super.owner;
  }

  @override
  set owner(UserStore value) {
    _$ownerAtom.reportWrite(value, super.owner, () {
      super.owner = value;
    });
  }

  final _$_IssueStoreActionController = ActionController(name: '_IssueStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaIssueStatus status) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllAttachments(List<IssueAttachmentStore> attachments) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.addAllAttachments');
    try {
      return super.addAllAttachments(attachments);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAttachments(List<IssueAttachmentStore> attachments) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setAttachments');
    try {
      return super.setAttachments(attachments);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAttachments(IssueAttachmentStore attachments) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.removeAttachments');
    try {
      return super.removeAttachments(attachments);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCategories(List<IssueCategoryStore> categories) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.addAllCategories');
    try {
      return super.addAllCategories(categories);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategories(List<IssueCategoryStore> categories) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setCategories');
    try {
      return super.setCategories(categories);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCategories(IssueCategoryStore categories) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.removeCategories');
    try {
      return super.removeCategories(categories);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<CommentStore> comments) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<CommentStore> comments) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(CommentStore comments) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(UserStore createdBy) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllDebates(List<DebateStore> debates) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.addAllDebates');
    try {
      return super.addAllDebates(debates);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDebates(List<DebateStore> debates) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setDebates');
    try {
      return super.setDebates(debates);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDebates(DebateStore debates) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.removeDebates');
    try {
      return super.removeDebates(debates);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOwner(UserStore owner) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.setOwner');
    try {
      return super.setOwner(owner);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(IssueStore storeToClone) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(IssueStore storeToClone) {
    final _$actionInfo = _$_IssueStoreActionController.startAction(name: '_IssueStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_IssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
description: ${description},
status: ${status},
title: ${title},
attachments: ${attachments},
categories: ${categories},
comments: ${comments},
createdBy: ${createdBy},
debates: ${debates},
owner: ${owner}
    ''';
  }
}

mixin _$IssueAttachmentStore on _IssueAttachmentStore, Store {
  final _$internal__updatableAtom = Atom(name: '_IssueAttachmentStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_IssueAttachmentStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$fileAtom = Atom(name: '_IssueAttachmentStore.file');

  @override
  String get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(String value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$linkAtom = Atom(name: '_IssueAttachmentStore.link');

  @override
  String get link {
    _$linkAtom.reportRead();
    return super.link;
  }

  @override
  set link(String value) {
    _$linkAtom.reportWrite(value, super.link, () {
      super.link = value;
    });
  }

  final _$typeAtom = Atom(name: '_IssueAttachmentStore.type');

  @override
  EdemokraciaAttachmentType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(EdemokraciaAttachmentType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$_IssueAttachmentStoreActionController = ActionController(name: '_IssueAttachmentStore');

  @override
  void setFile(String file) {
    final _$actionInfo = _$_IssueAttachmentStoreActionController.startAction(name: '_IssueAttachmentStore.setFile');
    try {
      return super.setFile(file);
    } finally {
      _$_IssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLink(String link) {
    final _$actionInfo = _$_IssueAttachmentStoreActionController.startAction(name: '_IssueAttachmentStore.setLink');
    try {
      return super.setLink(link);
    } finally {
      _$_IssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setType(EdemokraciaAttachmentType type) {
    final _$actionInfo = _$_IssueAttachmentStoreActionController.startAction(name: '_IssueAttachmentStore.setType');
    try {
      return super.setType(type);
    } finally {
      _$_IssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(IssueAttachmentStore storeToClone) {
    final _$actionInfo = _$_IssueAttachmentStoreActionController.startAction(name: '_IssueAttachmentStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_IssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(IssueAttachmentStore storeToClone) {
    final _$actionInfo = _$_IssueAttachmentStoreActionController.startAction(name: '_IssueAttachmentStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_IssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
file: ${file},
link: ${link},
type: ${type}
    ''';
  }
}

mixin _$IssueCategoryStore on _IssueCategoryStore, Store {
  final _$internal__updatableAtom = Atom(name: '_IssueCategoryStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_IssueCategoryStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_IssueCategoryStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_IssueCategoryStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$ownerAtom = Atom(name: '_IssueCategoryStore.owner');

  @override
  UserStore get owner {
    _$ownerAtom.reportRead();
    return super.owner;
  }

  @override
  set owner(UserStore value) {
    _$ownerAtom.reportWrite(value, super.owner, () {
      super.owner = value;
    });
  }

  final _$subcategoriesAtom = Atom(name: '_IssueCategoryStore.subcategories');

  @override
  ObservableList<IssueCategoryStore> get subcategories {
    _$subcategoriesAtom.reportRead();
    return super.subcategories;
  }

  @override
  set subcategories(ObservableList<IssueCategoryStore> value) {
    _$subcategoriesAtom.reportWrite(value, super.subcategories, () {
      super.subcategories = value;
    });
  }

  final _$_IssueCategoryStoreActionController = ActionController(name: '_IssueCategoryStore');

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOwner(UserStore owner) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.setOwner');
    try {
      return super.setOwner(owner);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllSubcategories(List<IssueCategoryStore> subcategories) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.addAllSubcategories');
    try {
      return super.addAllSubcategories(subcategories);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubcategories(List<IssueCategoryStore> subcategories) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.setSubcategories');
    try {
      return super.setSubcategories(subcategories);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeSubcategories(IssueCategoryStore subcategories) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.removeSubcategories');
    try {
      return super.removeSubcategories(subcategories);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(IssueCategoryStore storeToClone) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(IssueCategoryStore storeToClone) {
    final _$actionInfo = _$_IssueCategoryStoreActionController.startAction(name: '_IssueCategoryStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_IssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
description: ${description},
title: ${title},
owner: ${owner},
subcategories: ${subcategories}
    ''';
  }
}

mixin _$ProStore on _ProStore, Store {
  final _$internal__updatableAtom = Atom(name: '_ProStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_ProStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_ProStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_ProStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_ProStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$commentsAtom = Atom(name: '_ProStore.comments');

  @override
  ObservableList<CommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<CommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$consAtom = Atom(name: '_ProStore.cons');

  @override
  ObservableList<ConStore> get cons {
    _$consAtom.reportRead();
    return super.cons;
  }

  @override
  set cons(ObservableList<ConStore> value) {
    _$consAtom.reportWrite(value, super.cons, () {
      super.cons = value;
    });
  }

  final _$createdByAtom = Atom(name: '_ProStore.createdBy');

  @override
  UserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(UserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$prosAtom = Atom(name: '_ProStore.pros');

  @override
  ObservableList<ProStore> get pros {
    _$prosAtom.reportRead();
    return super.pros;
  }

  @override
  set pros(ObservableList<ProStore> value) {
    _$prosAtom.reportWrite(value, super.pros, () {
      super.pros = value;
    });
  }

  final _$votesAtom = Atom(name: '_ProStore.votes');

  @override
  ObservableList<SimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<SimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_ProStoreActionController = ActionController(name: '_ProStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<CommentStore> comments) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<CommentStore> comments) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(CommentStore comments) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCons(List<ConStore> cons) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.addAllCons');
    try {
      return super.addAllCons(cons);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCons(List<ConStore> cons) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setCons');
    try {
      return super.setCons(cons);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCons(ConStore cons) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.removeCons');
    try {
      return super.removeCons(cons);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(UserStore createdBy) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllPros(List<ProStore> pros) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.addAllPros');
    try {
      return super.addAllPros(pros);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPros(List<ProStore> pros) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setPros');
    try {
      return super.setPros(pros);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePros(ProStore pros) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.removePros');
    try {
      return super.removePros(pros);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(SimpleVoteStore votes) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(ProStore storeToClone) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(ProStore storeToClone) {
    final _$actionInfo = _$_ProStoreActionController.startAction(name: '_ProStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_ProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
description: ${description},
title: ${title},
comments: ${comments},
cons: ${cons},
createdBy: ${createdBy},
pros: ${pros},
votes: ${votes}
    ''';
  }
}

mixin _$RatingVoteInputStore on _RatingVoteInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_RatingVoteInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_RatingVoteInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$valueAtom = Atom(name: '_RatingVoteInputStore.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_RatingVoteInputStoreActionController = ActionController(name: '_RatingVoteInputStore');

  @override
  void setValue(int value) {
    final _$actionInfo = _$_RatingVoteInputStoreActionController.startAction(name: '_RatingVoteInputStore.setValue');
    try {
      return super.setValue(value);
    } finally {
      _$_RatingVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(RatingVoteInputStore storeToClone) {
    final _$actionInfo = _$_RatingVoteInputStoreActionController.startAction(name: '_RatingVoteInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_RatingVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(RatingVoteInputStore storeToClone) {
    final _$actionInfo = _$_RatingVoteInputStoreActionController.startAction(name: '_RatingVoteInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_RatingVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
value: ${value}
    ''';
  }
}

mixin _$SelectAnswerVoteSelectionStore on _SelectAnswerVoteSelectionStore, Store {
  final _$internal__updatableAtom = Atom(name: '_SelectAnswerVoteSelectionStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_SelectAnswerVoteSelectionStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_SelectAnswerVoteSelectionStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_SelectAnswerVoteSelectionStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$_SelectAnswerVoteSelectionStoreActionController = ActionController(name: '_SelectAnswerVoteSelectionStore');

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_SelectAnswerVoteSelectionStoreActionController.startAction(name: '_SelectAnswerVoteSelectionStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_SelectAnswerVoteSelectionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_SelectAnswerVoteSelectionStoreActionController.startAction(name: '_SelectAnswerVoteSelectionStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_SelectAnswerVoteSelectionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(SelectAnswerVoteSelectionStore storeToClone) {
    final _$actionInfo = _$_SelectAnswerVoteSelectionStoreActionController.startAction(name: '_SelectAnswerVoteSelectionStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_SelectAnswerVoteSelectionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(SelectAnswerVoteSelectionStore storeToClone) {
    final _$actionInfo = _$_SelectAnswerVoteSelectionStoreActionController.startAction(name: '_SelectAnswerVoteSelectionStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_SelectAnswerVoteSelectionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
description: ${description},
title: ${title}
    ''';
  }
}

mixin _$SimpleVoteStore on _SimpleVoteStore, Store {
  final _$internal__updatableAtom = Atom(name: '_SimpleVoteStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_SimpleVoteStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_SimpleVoteStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$typeAtom = Atom(name: '_SimpleVoteStore.type');

  @override
  EdemokraciaSimpleVoteType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(EdemokraciaSimpleVoteType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$userAtom = Atom(name: '_SimpleVoteStore.user');

  @override
  UserStore get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserStore value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_SimpleVoteStoreActionController = ActionController(name: '_SimpleVoteStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_SimpleVoteStoreActionController.startAction(name: '_SimpleVoteStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_SimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setType(EdemokraciaSimpleVoteType type) {
    final _$actionInfo = _$_SimpleVoteStoreActionController.startAction(name: '_SimpleVoteStore.setType');
    try {
      return super.setType(type);
    } finally {
      _$_SimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(UserStore user) {
    final _$actionInfo = _$_SimpleVoteStoreActionController.startAction(name: '_SimpleVoteStore.setUser');
    try {
      return super.setUser(user);
    } finally {
      _$_SimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(SimpleVoteStore storeToClone) {
    final _$actionInfo = _$_SimpleVoteStoreActionController.startAction(name: '_SimpleVoteStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_SimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(SimpleVoteStore storeToClone) {
    final _$actionInfo = _$_SimpleVoteStoreActionController.startAction(name: '_SimpleVoteStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_SimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
type: ${type},
user: ${user}
    ''';
  }
}

mixin _$UserStore on _UserStore, Store {
  final _$internal__updatableAtom = Atom(name: '_UserStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_UserStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_UserStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$emailAtom = Atom(name: '_UserStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$firstNameAtom = Atom(name: '_UserStore.firstName');

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$isAdminAtom = Atom(name: '_UserStore.isAdmin');

  @override
  bool get isAdmin {
    _$isAdminAtom.reportRead();
    return super.isAdmin;
  }

  @override
  set isAdmin(bool value) {
    _$isAdminAtom.reportWrite(value, super.isAdmin, () {
      super.isAdmin = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_UserStore.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$phoneAtom = Atom(name: '_UserStore.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$userNameAtom = Atom(name: '_UserStore.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$activityCitiesAtom = Atom(name: '_UserStore.activityCities');

  @override
  ObservableList<CityStore> get activityCities {
    _$activityCitiesAtom.reportRead();
    return super.activityCities;
  }

  @override
  set activityCities(ObservableList<CityStore> value) {
    _$activityCitiesAtom.reportWrite(value, super.activityCities, () {
      super.activityCities = value;
    });
  }

  final _$activityCountiesAtom = Atom(name: '_UserStore.activityCounties');

  @override
  ObservableList<CountyStore> get activityCounties {
    _$activityCountiesAtom.reportRead();
    return super.activityCounties;
  }

  @override
  set activityCounties(ObservableList<CountyStore> value) {
    _$activityCountiesAtom.reportWrite(value, super.activityCounties, () {
      super.activityCounties = value;
    });
  }

  final _$activityDistrictsAtom = Atom(name: '_UserStore.activityDistricts');

  @override
  ObservableList<DistrictStore> get activityDistricts {
    _$activityDistrictsAtom.reportRead();
    return super.activityDistricts;
  }

  @override
  set activityDistricts(ObservableList<DistrictStore> value) {
    _$activityDistrictsAtom.reportWrite(value, super.activityDistricts, () {
      super.activityDistricts = value;
    });
  }

  final _$residentCityAtom = Atom(name: '_UserStore.residentCity');

  @override
  CityStore get residentCity {
    _$residentCityAtom.reportRead();
    return super.residentCity;
  }

  @override
  set residentCity(CityStore value) {
    _$residentCityAtom.reportWrite(value, super.residentCity, () {
      super.residentCity = value;
    });
  }

  final _$residentCountyAtom = Atom(name: '_UserStore.residentCounty');

  @override
  CountyStore get residentCounty {
    _$residentCountyAtom.reportRead();
    return super.residentCounty;
  }

  @override
  set residentCounty(CountyStore value) {
    _$residentCountyAtom.reportWrite(value, super.residentCounty, () {
      super.residentCounty = value;
    });
  }

  final _$residentDistrictAtom = Atom(name: '_UserStore.residentDistrict');

  @override
  DistrictStore get residentDistrict {
    _$residentDistrictAtom.reportRead();
    return super.residentDistrict;
  }

  @override
  set residentDistrict(DistrictStore value) {
    _$residentDistrictAtom.reportWrite(value, super.residentDistrict, () {
      super.residentDistrict = value;
    });
  }

  final _$votesAtom = Atom(name: '_UserStore.votes');

  @override
  ObservableList<SimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<SimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstName(String firstName) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setFirstName');
    try {
      return super.setFirstName(firstName);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsAdmin(bool isAdmin) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setIsAdmin');
    try {
      return super.setIsAdmin(isAdmin);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String lastName) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setLastName');
    try {
      return super.setLastName(lastName);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String phone) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setPhone');
    try {
      return super.setPhone(phone);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String userName) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setUserName');
    try {
      return super.setUserName(userName);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllActivityCities(List<CityStore> activityCities) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.addAllActivityCities');
    try {
      return super.addAllActivityCities(activityCities);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivityCities(List<CityStore> activityCities) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setActivityCities');
    try {
      return super.setActivityCities(activityCities);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivityCities(CityStore activityCities) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.removeActivityCities');
    try {
      return super.removeActivityCities(activityCities);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllActivityCounties(List<CountyStore> activityCounties) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.addAllActivityCounties');
    try {
      return super.addAllActivityCounties(activityCounties);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivityCounties(List<CountyStore> activityCounties) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setActivityCounties');
    try {
      return super.setActivityCounties(activityCounties);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivityCounties(CountyStore activityCounties) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.removeActivityCounties');
    try {
      return super.removeActivityCounties(activityCounties);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllActivityDistricts(List<DistrictStore> activityDistricts) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.addAllActivityDistricts');
    try {
      return super.addAllActivityDistricts(activityDistricts);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivityDistricts(List<DistrictStore> activityDistricts) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setActivityDistricts');
    try {
      return super.setActivityDistricts(activityDistricts);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivityDistricts(DistrictStore activityDistricts) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.removeActivityDistricts');
    try {
      return super.removeActivityDistricts(activityDistricts);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResidentCity(CityStore residentCity) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setResidentCity');
    try {
      return super.setResidentCity(residentCity);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResidentCounty(CountyStore residentCounty) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setResidentCounty');
    try {
      return super.setResidentCounty(residentCounty);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResidentDistrict(DistrictStore residentDistrict) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setResidentDistrict');
    try {
      return super.setResidentDistrict(residentDistrict);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<SimpleVoteStore> votes) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(SimpleVoteStore votes) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(UserStore storeToClone) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(UserStore storeToClone) {
    final _$actionInfo = _$_UserStoreActionController.startAction(name: '_UserStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
email: ${email},
firstName: ${firstName},
isAdmin: ${isAdmin},
lastName: ${lastName},
phone: ${phone},
userName: ${userName},
activityCities: ${activityCities},
activityCounties: ${activityCounties},
activityDistricts: ${activityDistricts},
residentCity: ${residentCity},
residentCounty: ${residentCounty},
residentDistrict: ${residentDistrict},
votes: ${votes}
    ''';
  }
}

mixin _$VoteDefinitionStore on _VoteDefinitionStore, Store {
  final _$internal__updatableAtom = Atom(name: '_VoteDefinitionStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_VoteDefinitionStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_VoteDefinitionStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$createdAtom = Atom(name: '_VoteDefinitionStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_VoteDefinitionStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$isRatingTypeAtom = Atom(name: '_VoteDefinitionStore.isRatingType');

  @override
  bool get isRatingType {
    _$isRatingTypeAtom.reportRead();
    return super.isRatingType;
  }

  @override
  set isRatingType(bool value) {
    _$isRatingTypeAtom.reportWrite(value, super.isRatingType, () {
      super.isRatingType = value;
    });
  }

  final _$isSelectAnswerTypeAtom = Atom(name: '_VoteDefinitionStore.isSelectAnswerType');

  @override
  bool get isSelectAnswerType {
    _$isSelectAnswerTypeAtom.reportRead();
    return super.isSelectAnswerType;
  }

  @override
  set isSelectAnswerType(bool value) {
    _$isSelectAnswerTypeAtom.reportWrite(value, super.isSelectAnswerType, () {
      super.isSelectAnswerType = value;
    });
  }

  final _$isYesNoAbstainTypeAtom = Atom(name: '_VoteDefinitionStore.isYesNoAbstainType');

  @override
  bool get isYesNoAbstainType {
    _$isYesNoAbstainTypeAtom.reportRead();
    return super.isYesNoAbstainType;
  }

  @override
  set isYesNoAbstainType(bool value) {
    _$isYesNoAbstainTypeAtom.reportWrite(value, super.isYesNoAbstainType, () {
      super.isYesNoAbstainType = value;
    });
  }

  final _$isYesNoTypeAtom = Atom(name: '_VoteDefinitionStore.isYesNoType');

  @override
  bool get isYesNoType {
    _$isYesNoTypeAtom.reportRead();
    return super.isYesNoType;
  }

  @override
  set isYesNoType(bool value) {
    _$isYesNoTypeAtom.reportWrite(value, super.isYesNoType, () {
      super.isYesNoType = value;
    });
  }

  final _$statusAtom = Atom(name: '_VoteDefinitionStore.status');

  @override
  EdemokraciaVoteStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaVoteStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_VoteDefinitionStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$voteEntriesAtom = Atom(name: '_VoteDefinitionStore.voteEntries');

  @override
  ObservableList<VoteEntryStore> get voteEntries {
    _$voteEntriesAtom.reportRead();
    return super.voteEntries;
  }

  @override
  set voteEntries(ObservableList<VoteEntryStore> value) {
    _$voteEntriesAtom.reportWrite(value, super.voteEntries, () {
      super.voteEntries = value;
    });
  }

  final _$_VoteDefinitionStoreActionController = ActionController(name: '_VoteDefinitionStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsRatingType(bool isRatingType) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setIsRatingType');
    try {
      return super.setIsRatingType(isRatingType);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsSelectAnswerType(bool isSelectAnswerType) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setIsSelectAnswerType');
    try {
      return super.setIsSelectAnswerType(isSelectAnswerType);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsYesNoAbstainType(bool isYesNoAbstainType) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setIsYesNoAbstainType');
    try {
      return super.setIsYesNoAbstainType(isYesNoAbstainType);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsYesNoType(bool isYesNoType) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setIsYesNoType');
    try {
      return super.setIsYesNoType(isYesNoType);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaVoteStatus status) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVoteEntries(List<VoteEntryStore> voteEntries) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.addAllVoteEntries');
    try {
      return super.addAllVoteEntries(voteEntries);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVoteEntries(List<VoteEntryStore> voteEntries) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.setVoteEntries');
    try {
      return super.setVoteEntries(voteEntries);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVoteEntries(VoteEntryStore voteEntries) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.removeVoteEntries');
    try {
      return super.removeVoteEntries(voteEntries);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(VoteDefinitionStore storeToClone) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(VoteDefinitionStore storeToClone) {
    final _$actionInfo = _$_VoteDefinitionStoreActionController.startAction(name: '_VoteDefinitionStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_VoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
created: ${created},
description: ${description},
isRatingType: ${isRatingType},
isSelectAnswerType: ${isSelectAnswerType},
isYesNoAbstainType: ${isYesNoAbstainType},
isYesNoType: ${isYesNoType},
status: ${status},
title: ${title},
voteEntries: ${voteEntries}
    ''';
  }
}

mixin _$VoteEntryStore on _VoteEntryStore, Store {
  final _$internal__updatableAtom = Atom(name: '_VoteEntryStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_VoteEntryStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_VoteEntryStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$userAtom = Atom(name: '_VoteEntryStore.user');

  @override
  UserStore get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserStore value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$voteDefinitionAtom = Atom(name: '_VoteEntryStore.voteDefinition');

  @override
  VoteDefinitionStore get voteDefinition {
    _$voteDefinitionAtom.reportRead();
    return super.voteDefinition;
  }

  @override
  set voteDefinition(VoteDefinitionStore value) {
    _$voteDefinitionAtom.reportWrite(value, super.voteDefinition, () {
      super.voteDefinition = value;
    });
  }

  final _$_VoteEntryStoreActionController = ActionController(name: '_VoteEntryStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_VoteEntryStoreActionController.startAction(name: '_VoteEntryStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_VoteEntryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(UserStore user) {
    final _$actionInfo = _$_VoteEntryStoreActionController.startAction(name: '_VoteEntryStore.setUser');
    try {
      return super.setUser(user);
    } finally {
      _$_VoteEntryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVoteDefinition(VoteDefinitionStore voteDefinition) {
    final _$actionInfo = _$_VoteEntryStoreActionController.startAction(name: '_VoteEntryStore.setVoteDefinition');
    try {
      return super.setVoteDefinition(voteDefinition);
    } finally {
      _$_VoteEntryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(VoteEntryStore storeToClone) {
    final _$actionInfo = _$_VoteEntryStoreActionController.startAction(name: '_VoteEntryStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_VoteEntryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(VoteEntryStore storeToClone) {
    final _$actionInfo = _$_VoteEntryStoreActionController.startAction(name: '_VoteEntryStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_VoteEntryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
user: ${user},
voteDefinition: ${voteDefinition}
    ''';
  }
}

mixin _$YesNoAbstainVoteInputStore on _YesNoAbstainVoteInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_YesNoAbstainVoteInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_YesNoAbstainVoteInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$valueAtom = Atom(name: '_YesNoAbstainVoteInputStore.value');

  @override
  EdemokraciaYesNoAbstainVoteValue get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(EdemokraciaYesNoAbstainVoteValue value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_YesNoAbstainVoteInputStoreActionController = ActionController(name: '_YesNoAbstainVoteInputStore');

  @override
  void setValue(EdemokraciaYesNoAbstainVoteValue value) {
    final _$actionInfo = _$_YesNoAbstainVoteInputStoreActionController.startAction(name: '_YesNoAbstainVoteInputStore.setValue');
    try {
      return super.setValue(value);
    } finally {
      _$_YesNoAbstainVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(YesNoAbstainVoteInputStore storeToClone) {
    final _$actionInfo = _$_YesNoAbstainVoteInputStoreActionController.startAction(name: '_YesNoAbstainVoteInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_YesNoAbstainVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(YesNoAbstainVoteInputStore storeToClone) {
    final _$actionInfo = _$_YesNoAbstainVoteInputStoreActionController.startAction(name: '_YesNoAbstainVoteInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_YesNoAbstainVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
value: ${value}
    ''';
  }
}

mixin _$YesNoVoteInputStore on _YesNoVoteInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_YesNoVoteInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_YesNoVoteInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$valueAtom = Atom(name: '_YesNoVoteInputStore.value');

  @override
  EdemokraciaYesNoVoteValue get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(EdemokraciaYesNoVoteValue value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_YesNoVoteInputStoreActionController = ActionController(name: '_YesNoVoteInputStore');

  @override
  void setValue(EdemokraciaYesNoVoteValue value) {
    final _$actionInfo = _$_YesNoVoteInputStoreActionController.startAction(name: '_YesNoVoteInputStore.setValue');
    try {
      return super.setValue(value);
    } finally {
      _$_YesNoVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(YesNoVoteInputStore storeToClone) {
    final _$actionInfo = _$_YesNoVoteInputStoreActionController.startAction(name: '_YesNoVoteInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_YesNoVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(YesNoVoteInputStore storeToClone) {
    final _$actionInfo = _$_YesNoVoteInputStoreActionController.startAction(name: '_YesNoVoteInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_YesNoVoteInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
value: ${value}
    ''';
  }
}

mixin _$AdminAdminPrincipalUserStore on _AdminAdminPrincipalUserStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminAdminPrincipalUserStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminAdminPrincipalUserStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminAdminPrincipalUserStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$emailAtom = Atom(name: '_AdminAdminPrincipalUserStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$firstNameAtom = Atom(name: '_AdminAdminPrincipalUserStore.firstName');

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$isAdminAtom = Atom(name: '_AdminAdminPrincipalUserStore.isAdmin');

  @override
  bool get isAdmin {
    _$isAdminAtom.reportRead();
    return super.isAdmin;
  }

  @override
  set isAdmin(bool value) {
    _$isAdminAtom.reportWrite(value, super.isAdmin, () {
      super.isAdmin = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_AdminAdminPrincipalUserStore.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$phoneAtom = Atom(name: '_AdminAdminPrincipalUserStore.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$userNameAtom = Atom(name: '_AdminAdminPrincipalUserStore.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$_AdminAdminPrincipalUserStoreActionController = ActionController(name: '_AdminAdminPrincipalUserStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstName(String firstName) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setFirstName');
    try {
      return super.setFirstName(firstName);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsAdmin(bool isAdmin) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setIsAdmin');
    try {
      return super.setIsAdmin(isAdmin);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String lastName) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setLastName');
    try {
      return super.setLastName(lastName);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String phone) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setPhone');
    try {
      return super.setPhone(phone);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String userName) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.setUserName');
    try {
      return super.setUserName(userName);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminAdminPrincipalUserStore storeToClone) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminAdminPrincipalUserStore storeToClone) {
    final _$actionInfo = _$_AdminAdminPrincipalUserStoreActionController.startAction(name: '_AdminAdminPrincipalUserStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminAdminPrincipalUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
email: ${email},
firstName: ${firstName},
isAdmin: ${isAdmin},
lastName: ${lastName},
phone: ${phone},
userName: ${userName}
    ''';
  }
}

mixin _$AdminCityStore on _AdminCityStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminCityStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminCityStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$countyAtom = Atom(name: '_AdminCityStore.county');

  @override
  String get county {
    _$countyAtom.reportRead();
    return super.county;
  }

  @override
  set county(String value) {
    _$countyAtom.reportWrite(value, super.county, () {
      super.county = value;
    });
  }

  final _$nameAtom = Atom(name: '_AdminCityStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$representationAtom = Atom(name: '_AdminCityStore.representation');

  @override
  String get representation {
    _$representationAtom.reportRead();
    return super.representation;
  }

  @override
  set representation(String value) {
    _$representationAtom.reportWrite(value, super.representation, () {
      super.representation = value;
    });
  }

  final _$districtsAtom = Atom(name: '_AdminCityStore.districts');

  @override
  ObservableList<AdminDistrictStore> get districts {
    _$districtsAtom.reportRead();
    return super.districts;
  }

  @override
  set districts(ObservableList<AdminDistrictStore> value) {
    _$districtsAtom.reportWrite(value, super.districts, () {
      super.districts = value;
    });
  }

  final _$_AdminCityStoreActionController = ActionController(name: '_AdminCityStore');

  @override
  void setCounty(String county) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.setCounty');
    try {
      return super.setCounty(county);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String name) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.setName');
    try {
      return super.setName(name);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRepresentation(String representation) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.setRepresentation');
    try {
      return super.setRepresentation(representation);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllDistricts(List<AdminDistrictStore> districts) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.addAllDistricts');
    try {
      return super.addAllDistricts(districts);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDistricts(List<AdminDistrictStore> districts) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.setDistricts');
    try {
      return super.setDistricts(districts);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDistricts(AdminDistrictStore districts) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.removeDistricts');
    try {
      return super.removeDistricts(districts);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminCityStore storeToClone) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminCityStore storeToClone) {
    final _$actionInfo = _$_AdminCityStoreActionController.startAction(name: '_AdminCityStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminCityStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
county: ${county},
name: ${name},
representation: ${representation},
districts: ${districts}
    ''';
  }
}

mixin _$AdminCommentStore on _AdminCommentStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminCommentStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminCommentStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$commentAtom = Atom(name: '_AdminCommentStore.comment');

  @override
  String get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(String value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminCommentStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$createdByNameAtom = Atom(name: '_AdminCommentStore.createdByName');

  @override
  String get createdByName {
    _$createdByNameAtom.reportRead();
    return super.createdByName;
  }

  @override
  set createdByName(String value) {
    _$createdByNameAtom.reportWrite(value, super.createdByName, () {
      super.createdByName = value;
    });
  }

  final _$downVotesAtom = Atom(name: '_AdminCommentStore.downVotes');

  @override
  int get downVotes {
    _$downVotesAtom.reportRead();
    return super.downVotes;
  }

  @override
  set downVotes(int value) {
    _$downVotesAtom.reportWrite(value, super.downVotes, () {
      super.downVotes = value;
    });
  }

  final _$upVotesAtom = Atom(name: '_AdminCommentStore.upVotes');

  @override
  int get upVotes {
    _$upVotesAtom.reportRead();
    return super.upVotes;
  }

  @override
  set upVotes(int value) {
    _$upVotesAtom.reportWrite(value, super.upVotes, () {
      super.upVotes = value;
    });
  }

  final _$createdByAtom = Atom(name: '_AdminCommentStore.createdBy');

  @override
  AdminUserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(AdminUserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$votesAtom = Atom(name: '_AdminCommentStore.votes');

  @override
  ObservableList<AdminSimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<AdminSimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_AdminCommentStoreActionController = ActionController(name: '_AdminCommentStore');

  @override
  void setComment(String comment) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setComment');
    try {
      return super.setComment(comment);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedByName(String createdByName) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setCreatedByName');
    try {
      return super.setCreatedByName(createdByName);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDownVotes(int downVotes) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setDownVotes');
    try {
      return super.setDownVotes(downVotes);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUpVotes(int upVotes) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setUpVotes');
    try {
      return super.setUpVotes(upVotes);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(AdminUserStore createdBy) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(AdminSimpleVoteStore votes) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminCommentStore storeToClone) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminCommentStore storeToClone) {
    final _$actionInfo = _$_AdminCommentStoreActionController.startAction(name: '_AdminCommentStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
comment: ${comment},
created: ${created},
createdByName: ${createdByName},
downVotes: ${downVotes},
upVotes: ${upVotes},
createdBy: ${createdBy},
votes: ${votes}
    ''';
  }
}

mixin _$AdminConStore on _AdminConStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminConStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminConStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminConStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$createdByNameAtom = Atom(name: '_AdminConStore.createdByName');

  @override
  String get createdByName {
    _$createdByNameAtom.reportRead();
    return super.createdByName;
  }

  @override
  set createdByName(String value) {
    _$createdByNameAtom.reportWrite(value, super.createdByName, () {
      super.createdByName = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminConStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$downVotesAtom = Atom(name: '_AdminConStore.downVotes');

  @override
  int get downVotes {
    _$downVotesAtom.reportRead();
    return super.downVotes;
  }

  @override
  set downVotes(int value) {
    _$downVotesAtom.reportWrite(value, super.downVotes, () {
      super.downVotes = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminConStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$upVotesAtom = Atom(name: '_AdminConStore.upVotes');

  @override
  int get upVotes {
    _$upVotesAtom.reportRead();
    return super.upVotes;
  }

  @override
  set upVotes(int value) {
    _$upVotesAtom.reportWrite(value, super.upVotes, () {
      super.upVotes = value;
    });
  }

  final _$commentsAtom = Atom(name: '_AdminConStore.comments');

  @override
  ObservableList<AdminCommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<AdminCommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$consAtom = Atom(name: '_AdminConStore.cons');

  @override
  ObservableList<AdminConStore> get cons {
    _$consAtom.reportRead();
    return super.cons;
  }

  @override
  set cons(ObservableList<AdminConStore> value) {
    _$consAtom.reportWrite(value, super.cons, () {
      super.cons = value;
    });
  }

  final _$createdByAtom = Atom(name: '_AdminConStore.createdBy');

  @override
  AdminUserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(AdminUserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$prosAtom = Atom(name: '_AdminConStore.pros');

  @override
  ObservableList<AdminProStore> get pros {
    _$prosAtom.reportRead();
    return super.pros;
  }

  @override
  set pros(ObservableList<AdminProStore> value) {
    _$prosAtom.reportWrite(value, super.pros, () {
      super.pros = value;
    });
  }

  final _$votesAtom = Atom(name: '_AdminConStore.votes');

  @override
  ObservableList<AdminSimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<AdminSimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_AdminConStoreActionController = ActionController(name: '_AdminConStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedByName(String createdByName) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setCreatedByName');
    try {
      return super.setCreatedByName(createdByName);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDownVotes(int downVotes) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setDownVotes');
    try {
      return super.setDownVotes(downVotes);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUpVotes(int upVotes) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setUpVotes');
    try {
      return super.setUpVotes(upVotes);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(AdminCommentStore comments) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCons(List<AdminConStore> cons) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.addAllCons');
    try {
      return super.addAllCons(cons);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCons(List<AdminConStore> cons) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setCons');
    try {
      return super.setCons(cons);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCons(AdminConStore cons) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.removeCons');
    try {
      return super.removeCons(cons);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(AdminUserStore createdBy) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllPros(List<AdminProStore> pros) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.addAllPros');
    try {
      return super.addAllPros(pros);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPros(List<AdminProStore> pros) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setPros');
    try {
      return super.setPros(pros);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePros(AdminProStore pros) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.removePros');
    try {
      return super.removePros(pros);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(AdminSimpleVoteStore votes) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminConStore storeToClone) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminConStore storeToClone) {
    final _$actionInfo = _$_AdminConStoreActionController.startAction(name: '_AdminConStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminConStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
createdByName: ${createdByName},
description: ${description},
downVotes: ${downVotes},
title: ${title},
upVotes: ${upVotes},
comments: ${comments},
cons: ${cons},
createdBy: ${createdBy},
pros: ${pros},
votes: ${votes}
    ''';
  }
}

mixin _$AdminCountyStore on _AdminCountyStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminCountyStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminCountyStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$nameAtom = Atom(name: '_AdminCountyStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$representationAtom = Atom(name: '_AdminCountyStore.representation');

  @override
  String get representation {
    _$representationAtom.reportRead();
    return super.representation;
  }

  @override
  set representation(String value) {
    _$representationAtom.reportWrite(value, super.representation, () {
      super.representation = value;
    });
  }

  final _$citiesAtom = Atom(name: '_AdminCountyStore.cities');

  @override
  ObservableList<AdminCityStore> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(ObservableList<AdminCityStore> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  final _$_AdminCountyStoreActionController = ActionController(name: '_AdminCountyStore');

  @override
  void setName(String name) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.setName');
    try {
      return super.setName(name);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRepresentation(String representation) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.setRepresentation');
    try {
      return super.setRepresentation(representation);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCities(List<AdminCityStore> cities) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.addAllCities');
    try {
      return super.addAllCities(cities);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCities(List<AdminCityStore> cities) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.setCities');
    try {
      return super.setCities(cities);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCities(AdminCityStore cities) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.removeCities');
    try {
      return super.removeCities(cities);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminCountyStore storeToClone) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminCountyStore storeToClone) {
    final _$actionInfo = _$_AdminCountyStoreActionController.startAction(name: '_AdminCountyStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminCountyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
name: ${name},
representation: ${representation},
cities: ${cities}
    ''';
  }
}

mixin _$AdminCreateIssueInputStore on _AdminCreateIssueInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminCreateIssueInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminCreateIssueInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminCreateIssueInputStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminCreateIssueInputStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$_AdminCreateIssueInputStoreActionController = ActionController(name: '_AdminCreateIssueInputStore');

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminCreateIssueInputStoreActionController.startAction(name: '_AdminCreateIssueInputStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminCreateIssueInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminCreateIssueInputStoreActionController.startAction(name: '_AdminCreateIssueInputStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminCreateIssueInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminCreateIssueInputStore storeToClone) {
    final _$actionInfo = _$_AdminCreateIssueInputStoreActionController.startAction(name: '_AdminCreateIssueInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminCreateIssueInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminCreateIssueInputStore storeToClone) {
    final _$actionInfo = _$_AdminCreateIssueInputStoreActionController.startAction(name: '_AdminCreateIssueInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminCreateIssueInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
description: ${description},
title: ${title}
    ''';
  }
}

mixin _$AdminCreateUserInputStore on _AdminCreateUserInputStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminCreateUserInputStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminCreateUserInputStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$emailAtom = Atom(name: '_AdminCreateUserInputStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$firstNameAtom = Atom(name: '_AdminCreateUserInputStore.firstName');

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$hasAdminAccessAtom = Atom(name: '_AdminCreateUserInputStore.hasAdminAccess');

  @override
  bool get hasAdminAccess {
    _$hasAdminAccessAtom.reportRead();
    return super.hasAdminAccess;
  }

  @override
  set hasAdminAccess(bool value) {
    _$hasAdminAccessAtom.reportWrite(value, super.hasAdminAccess, () {
      super.hasAdminAccess = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_AdminCreateUserInputStore.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$phoneAtom = Atom(name: '_AdminCreateUserInputStore.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$userNameAtom = Atom(name: '_AdminCreateUserInputStore.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$_AdminCreateUserInputStoreActionController = ActionController(name: '_AdminCreateUserInputStore');

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstName(String firstName) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.setFirstName');
    try {
      return super.setFirstName(firstName);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHasAdminAccess(bool hasAdminAccess) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.setHasAdminAccess');
    try {
      return super.setHasAdminAccess(hasAdminAccess);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String lastName) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.setLastName');
    try {
      return super.setLastName(lastName);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String phone) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.setPhone');
    try {
      return super.setPhone(phone);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String userName) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.setUserName');
    try {
      return super.setUserName(userName);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminCreateUserInputStore storeToClone) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminCreateUserInputStore storeToClone) {
    final _$actionInfo = _$_AdminCreateUserInputStoreActionController.startAction(name: '_AdminCreateUserInputStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminCreateUserInputStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
email: ${email},
firstName: ${firstName},
hasAdminAccess: ${hasAdminAccess},
lastName: ${lastName},
phone: ${phone},
userName: ${userName}
    ''';
  }
}

mixin _$AdminDashboardStore on _AdminDashboardStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminDashboardStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminDashboardStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$welcomeAtom = Atom(name: '_AdminDashboardStore.welcome');

  @override
  String get welcome {
    _$welcomeAtom.reportRead();
    return super.welcome;
  }

  @override
  set welcome(String value) {
    _$welcomeAtom.reportWrite(value, super.welcome, () {
      super.welcome = value;
    });
  }

  final _$debatesAtom = Atom(name: '_AdminDashboardStore.debates');

  @override
  ObservableList<AdminDebateStore> get debates {
    _$debatesAtom.reportRead();
    return super.debates;
  }

  @override
  set debates(ObservableList<AdminDebateStore> value) {
    _$debatesAtom.reportWrite(value, super.debates, () {
      super.debates = value;
    });
  }

  final _$issuesAtom = Atom(name: '_AdminDashboardStore.issues');

  @override
  ObservableList<AdminIssueStore> get issues {
    _$issuesAtom.reportRead();
    return super.issues;
  }

  @override
  set issues(ObservableList<AdminIssueStore> value) {
    _$issuesAtom.reportWrite(value, super.issues, () {
      super.issues = value;
    });
  }

  final _$_AdminDashboardStoreActionController = ActionController(name: '_AdminDashboardStore');

  @override
  void setWelcome(String welcome) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.setWelcome');
    try {
      return super.setWelcome(welcome);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllDebates(List<AdminDebateStore> debates) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.addAllDebates');
    try {
      return super.addAllDebates(debates);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDebates(List<AdminDebateStore> debates) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.setDebates');
    try {
      return super.setDebates(debates);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDebates(AdminDebateStore debates) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.removeDebates');
    try {
      return super.removeDebates(debates);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllIssues(List<AdminIssueStore> issues) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.addAllIssues');
    try {
      return super.addAllIssues(issues);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIssues(List<AdminIssueStore> issues) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.setIssues');
    try {
      return super.setIssues(issues);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeIssues(AdminIssueStore issues) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.removeIssues');
    try {
      return super.removeIssues(issues);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminDashboardStore storeToClone) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminDashboardStore storeToClone) {
    final _$actionInfo = _$_AdminDashboardStoreActionController.startAction(name: '_AdminDashboardStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminDashboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
welcome: ${welcome},
debates: ${debates},
issues: ${issues}
    ''';
  }
}

mixin _$AdminDebateStore on _AdminDebateStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminDebateStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminDebateStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_AdminDebateStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminDebateStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$statusAtom = Atom(name: '_AdminDebateStore.status');

  @override
  EdemokraciaDebateStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaDebateStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminDebateStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$commentsAtom = Atom(name: '_AdminDebateStore.comments');

  @override
  ObservableList<AdminCommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<AdminCommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$consAtom = Atom(name: '_AdminDebateStore.cons');

  @override
  ObservableList<AdminConStore> get cons {
    _$consAtom.reportRead();
    return super.cons;
  }

  @override
  set cons(ObservableList<AdminConStore> value) {
    _$consAtom.reportWrite(value, super.cons, () {
      super.cons = value;
    });
  }

  final _$createdByAtom = Atom(name: '_AdminDebateStore.createdBy');

  @override
  AdminUserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(AdminUserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$issueAtom = Atom(name: '_AdminDebateStore.issue');

  @override
  AdminIssueStore get issue {
    _$issueAtom.reportRead();
    return super.issue;
  }

  @override
  set issue(AdminIssueStore value) {
    _$issueAtom.reportWrite(value, super.issue, () {
      super.issue = value;
    });
  }

  final _$prosAtom = Atom(name: '_AdminDebateStore.pros');

  @override
  ObservableList<AdminProStore> get pros {
    _$prosAtom.reportRead();
    return super.pros;
  }

  @override
  set pros(ObservableList<AdminProStore> value) {
    _$prosAtom.reportWrite(value, super.pros, () {
      super.pros = value;
    });
  }

  final _$voteDefinitionAtom = Atom(name: '_AdminDebateStore.voteDefinition');

  @override
  AdminVoteDefinitionStore get voteDefinition {
    _$voteDefinitionAtom.reportRead();
    return super.voteDefinition;
  }

  @override
  set voteDefinition(AdminVoteDefinitionStore value) {
    _$voteDefinitionAtom.reportWrite(value, super.voteDefinition, () {
      super.voteDefinition = value;
    });
  }

  final _$_AdminDebateStoreActionController = ActionController(name: '_AdminDebateStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaDebateStatus status) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(AdminCommentStore comments) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCons(List<AdminConStore> cons) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.addAllCons');
    try {
      return super.addAllCons(cons);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCons(List<AdminConStore> cons) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setCons');
    try {
      return super.setCons(cons);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCons(AdminConStore cons) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.removeCons');
    try {
      return super.removeCons(cons);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(AdminUserStore createdBy) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIssue(AdminIssueStore issue) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setIssue');
    try {
      return super.setIssue(issue);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllPros(List<AdminProStore> pros) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.addAllPros');
    try {
      return super.addAllPros(pros);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPros(List<AdminProStore> pros) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setPros');
    try {
      return super.setPros(pros);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePros(AdminProStore pros) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.removePros');
    try {
      return super.removePros(pros);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVoteDefinition(AdminVoteDefinitionStore voteDefinition) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.setVoteDefinition');
    try {
      return super.setVoteDefinition(voteDefinition);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminDebateStore storeToClone) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminDebateStore storeToClone) {
    final _$actionInfo = _$_AdminDebateStoreActionController.startAction(name: '_AdminDebateStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
description: ${description},
status: ${status},
title: ${title},
comments: ${comments},
cons: ${cons},
createdBy: ${createdBy},
issue: ${issue},
pros: ${pros},
voteDefinition: ${voteDefinition}
    ''';
  }
}

mixin _$AdminDistrictStore on _AdminDistrictStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminDistrictStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminDistrictStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$cityAtom = Atom(name: '_AdminDistrictStore.city');

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$countyAtom = Atom(name: '_AdminDistrictStore.county');

  @override
  String get county {
    _$countyAtom.reportRead();
    return super.county;
  }

  @override
  set county(String value) {
    _$countyAtom.reportWrite(value, super.county, () {
      super.county = value;
    });
  }

  final _$nameAtom = Atom(name: '_AdminDistrictStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$representationAtom = Atom(name: '_AdminDistrictStore.representation');

  @override
  String get representation {
    _$representationAtom.reportRead();
    return super.representation;
  }

  @override
  set representation(String value) {
    _$representationAtom.reportWrite(value, super.representation, () {
      super.representation = value;
    });
  }

  final _$_AdminDistrictStoreActionController = ActionController(name: '_AdminDistrictStore');

  @override
  void setCity(String city) {
    final _$actionInfo = _$_AdminDistrictStoreActionController.startAction(name: '_AdminDistrictStore.setCity');
    try {
      return super.setCity(city);
    } finally {
      _$_AdminDistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCounty(String county) {
    final _$actionInfo = _$_AdminDistrictStoreActionController.startAction(name: '_AdminDistrictStore.setCounty');
    try {
      return super.setCounty(county);
    } finally {
      _$_AdminDistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String name) {
    final _$actionInfo = _$_AdminDistrictStoreActionController.startAction(name: '_AdminDistrictStore.setName');
    try {
      return super.setName(name);
    } finally {
      _$_AdminDistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRepresentation(String representation) {
    final _$actionInfo = _$_AdminDistrictStoreActionController.startAction(name: '_AdminDistrictStore.setRepresentation');
    try {
      return super.setRepresentation(representation);
    } finally {
      _$_AdminDistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminDistrictStore storeToClone) {
    final _$actionInfo = _$_AdminDistrictStoreActionController.startAction(name: '_AdminDistrictStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminDistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminDistrictStore storeToClone) {
    final _$actionInfo = _$_AdminDistrictStoreActionController.startAction(name: '_AdminDistrictStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminDistrictStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
city: ${city},
county: ${county},
name: ${name},
representation: ${representation}
    ''';
  }
}

mixin _$AdminIssueStore on _AdminIssueStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminIssueStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminIssueStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminIssueStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminIssueStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$representationAtom = Atom(name: '_AdminIssueStore.representation');

  @override
  String get representation {
    _$representationAtom.reportRead();
    return super.representation;
  }

  @override
  set representation(String value) {
    _$representationAtom.reportWrite(value, super.representation, () {
      super.representation = value;
    });
  }

  final _$statusAtom = Atom(name: '_AdminIssueStore.status');

  @override
  EdemokraciaIssueStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaIssueStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminIssueStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$attachmentsAtom = Atom(name: '_AdminIssueStore.attachments');

  @override
  ObservableList<AdminIssueAttachmentStore> get attachments {
    _$attachmentsAtom.reportRead();
    return super.attachments;
  }

  @override
  set attachments(ObservableList<AdminIssueAttachmentStore> value) {
    _$attachmentsAtom.reportWrite(value, super.attachments, () {
      super.attachments = value;
    });
  }

  final _$categoriesAtom = Atom(name: '_AdminIssueStore.categories');

  @override
  ObservableList<AdminIssueCategoryStore> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(ObservableList<AdminIssueCategoryStore> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$commentsAtom = Atom(name: '_AdminIssueStore.comments');

  @override
  ObservableList<AdminCommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<AdminCommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$createdByAtom = Atom(name: '_AdminIssueStore.createdBy');

  @override
  AdminUserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(AdminUserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$debatesAtom = Atom(name: '_AdminIssueStore.debates');

  @override
  ObservableList<AdminIssueDebateStore> get debates {
    _$debatesAtom.reportRead();
    return super.debates;
  }

  @override
  set debates(ObservableList<AdminIssueDebateStore> value) {
    _$debatesAtom.reportWrite(value, super.debates, () {
      super.debates = value;
    });
  }

  final _$ownerAtom = Atom(name: '_AdminIssueStore.owner');

  @override
  AdminUserStore get owner {
    _$ownerAtom.reportRead();
    return super.owner;
  }

  @override
  set owner(AdminUserStore value) {
    _$ownerAtom.reportWrite(value, super.owner, () {
      super.owner = value;
    });
  }

  final _$_AdminIssueStoreActionController = ActionController(name: '_AdminIssueStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRepresentation(String representation) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setRepresentation');
    try {
      return super.setRepresentation(representation);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaIssueStatus status) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllAttachments(List<AdminIssueAttachmentStore> attachments) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.addAllAttachments');
    try {
      return super.addAllAttachments(attachments);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAttachments(List<AdminIssueAttachmentStore> attachments) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setAttachments');
    try {
      return super.setAttachments(attachments);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAttachments(AdminIssueAttachmentStore attachments) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.removeAttachments');
    try {
      return super.removeAttachments(attachments);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCategories(List<AdminIssueCategoryStore> categories) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.addAllCategories');
    try {
      return super.addAllCategories(categories);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategories(List<AdminIssueCategoryStore> categories) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setCategories');
    try {
      return super.setCategories(categories);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCategories(AdminIssueCategoryStore categories) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.removeCategories');
    try {
      return super.removeCategories(categories);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(AdminCommentStore comments) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(AdminUserStore createdBy) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllDebates(List<AdminIssueDebateStore> debates) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.addAllDebates');
    try {
      return super.addAllDebates(debates);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDebates(List<AdminIssueDebateStore> debates) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setDebates');
    try {
      return super.setDebates(debates);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDebates(AdminIssueDebateStore debates) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.removeDebates');
    try {
      return super.removeDebates(debates);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOwner(AdminUserStore owner) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.setOwner');
    try {
      return super.setOwner(owner);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminIssueStore storeToClone) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminIssueStore storeToClone) {
    final _$actionInfo = _$_AdminIssueStoreActionController.startAction(name: '_AdminIssueStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminIssueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
description: ${description},
representation: ${representation},
status: ${status},
title: ${title},
attachments: ${attachments},
categories: ${categories},
comments: ${comments},
createdBy: ${createdBy},
debates: ${debates},
owner: ${owner}
    ''';
  }
}

mixin _$AdminIssueAttachmentStore on _AdminIssueAttachmentStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminIssueAttachmentStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminIssueAttachmentStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$fileAtom = Atom(name: '_AdminIssueAttachmentStore.file');

  @override
  String get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(String value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$linkAtom = Atom(name: '_AdminIssueAttachmentStore.link');

  @override
  String get link {
    _$linkAtom.reportRead();
    return super.link;
  }

  @override
  set link(String value) {
    _$linkAtom.reportWrite(value, super.link, () {
      super.link = value;
    });
  }

  final _$typeAtom = Atom(name: '_AdminIssueAttachmentStore.type');

  @override
  EdemokraciaAttachmentType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(EdemokraciaAttachmentType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$_AdminIssueAttachmentStoreActionController = ActionController(name: '_AdminIssueAttachmentStore');

  @override
  void setFile(String file) {
    final _$actionInfo = _$_AdminIssueAttachmentStoreActionController.startAction(name: '_AdminIssueAttachmentStore.setFile');
    try {
      return super.setFile(file);
    } finally {
      _$_AdminIssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLink(String link) {
    final _$actionInfo = _$_AdminIssueAttachmentStoreActionController.startAction(name: '_AdminIssueAttachmentStore.setLink');
    try {
      return super.setLink(link);
    } finally {
      _$_AdminIssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setType(EdemokraciaAttachmentType type) {
    final _$actionInfo = _$_AdminIssueAttachmentStoreActionController.startAction(name: '_AdminIssueAttachmentStore.setType');
    try {
      return super.setType(type);
    } finally {
      _$_AdminIssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminIssueAttachmentStore storeToClone) {
    final _$actionInfo = _$_AdminIssueAttachmentStoreActionController.startAction(name: '_AdminIssueAttachmentStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminIssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminIssueAttachmentStore storeToClone) {
    final _$actionInfo = _$_AdminIssueAttachmentStoreActionController.startAction(name: '_AdminIssueAttachmentStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminIssueAttachmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
file: ${file},
link: ${link},
type: ${type}
    ''';
  }
}

mixin _$AdminIssueCategoryStore on _AdminIssueCategoryStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminIssueCategoryStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminIssueCategoryStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminIssueCategoryStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminIssueCategoryStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$ownerAtom = Atom(name: '_AdminIssueCategoryStore.owner');

  @override
  AdminUserStore get owner {
    _$ownerAtom.reportRead();
    return super.owner;
  }

  @override
  set owner(AdminUserStore value) {
    _$ownerAtom.reportWrite(value, super.owner, () {
      super.owner = value;
    });
  }

  final _$subcategoriesAtom = Atom(name: '_AdminIssueCategoryStore.subcategories');

  @override
  ObservableList<AdminIssueCategoryStore> get subcategories {
    _$subcategoriesAtom.reportRead();
    return super.subcategories;
  }

  @override
  set subcategories(ObservableList<AdminIssueCategoryStore> value) {
    _$subcategoriesAtom.reportWrite(value, super.subcategories, () {
      super.subcategories = value;
    });
  }

  final _$_AdminIssueCategoryStoreActionController = ActionController(name: '_AdminIssueCategoryStore');

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOwner(AdminUserStore owner) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.setOwner');
    try {
      return super.setOwner(owner);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllSubcategories(List<AdminIssueCategoryStore> subcategories) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.addAllSubcategories');
    try {
      return super.addAllSubcategories(subcategories);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubcategories(List<AdminIssueCategoryStore> subcategories) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.setSubcategories');
    try {
      return super.setSubcategories(subcategories);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeSubcategories(AdminIssueCategoryStore subcategories) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.removeSubcategories');
    try {
      return super.removeSubcategories(subcategories);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminIssueCategoryStore storeToClone) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminIssueCategoryStore storeToClone) {
    final _$actionInfo = _$_AdminIssueCategoryStoreActionController.startAction(name: '_AdminIssueCategoryStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminIssueCategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
description: ${description},
title: ${title},
owner: ${owner},
subcategories: ${subcategories}
    ''';
  }
}

mixin _$AdminIssueDebateStore on _AdminIssueDebateStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminIssueDebateStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminIssueDebateStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_AdminIssueDebateStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminIssueDebateStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$statusAtom = Atom(name: '_AdminIssueDebateStore.status');

  @override
  EdemokraciaDebateStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaDebateStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminIssueDebateStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$_AdminIssueDebateStoreActionController = ActionController(name: '_AdminIssueDebateStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_AdminIssueDebateStoreActionController.startAction(name: '_AdminIssueDebateStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_AdminIssueDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminIssueDebateStoreActionController.startAction(name: '_AdminIssueDebateStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminIssueDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaDebateStatus status) {
    final _$actionInfo = _$_AdminIssueDebateStoreActionController.startAction(name: '_AdminIssueDebateStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_AdminIssueDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminIssueDebateStoreActionController.startAction(name: '_AdminIssueDebateStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminIssueDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminIssueDebateStore storeToClone) {
    final _$actionInfo = _$_AdminIssueDebateStoreActionController.startAction(name: '_AdminIssueDebateStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminIssueDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminIssueDebateStore storeToClone) {
    final _$actionInfo = _$_AdminIssueDebateStoreActionController.startAction(name: '_AdminIssueDebateStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminIssueDebateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
description: ${description},
status: ${status},
title: ${title}
    ''';
  }
}

mixin _$AdminProStore on _AdminProStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminProStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminProStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminProStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$createdByNameAtom = Atom(name: '_AdminProStore.createdByName');

  @override
  String get createdByName {
    _$createdByNameAtom.reportRead();
    return super.createdByName;
  }

  @override
  set createdByName(String value) {
    _$createdByNameAtom.reportWrite(value, super.createdByName, () {
      super.createdByName = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminProStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$downVotesAtom = Atom(name: '_AdminProStore.downVotes');

  @override
  int get downVotes {
    _$downVotesAtom.reportRead();
    return super.downVotes;
  }

  @override
  set downVotes(int value) {
    _$downVotesAtom.reportWrite(value, super.downVotes, () {
      super.downVotes = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminProStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$upVotesAtom = Atom(name: '_AdminProStore.upVotes');

  @override
  int get upVotes {
    _$upVotesAtom.reportRead();
    return super.upVotes;
  }

  @override
  set upVotes(int value) {
    _$upVotesAtom.reportWrite(value, super.upVotes, () {
      super.upVotes = value;
    });
  }

  final _$commentsAtom = Atom(name: '_AdminProStore.comments');

  @override
  ObservableList<AdminCommentStore> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(ObservableList<AdminCommentStore> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$consAtom = Atom(name: '_AdminProStore.cons');

  @override
  ObservableList<AdminConStore> get cons {
    _$consAtom.reportRead();
    return super.cons;
  }

  @override
  set cons(ObservableList<AdminConStore> value) {
    _$consAtom.reportWrite(value, super.cons, () {
      super.cons = value;
    });
  }

  final _$createdByAtom = Atom(name: '_AdminProStore.createdBy');

  @override
  AdminUserStore get createdBy {
    _$createdByAtom.reportRead();
    return super.createdBy;
  }

  @override
  set createdBy(AdminUserStore value) {
    _$createdByAtom.reportWrite(value, super.createdBy, () {
      super.createdBy = value;
    });
  }

  final _$prosAtom = Atom(name: '_AdminProStore.pros');

  @override
  ObservableList<AdminProStore> get pros {
    _$prosAtom.reportRead();
    return super.pros;
  }

  @override
  set pros(ObservableList<AdminProStore> value) {
    _$prosAtom.reportWrite(value, super.pros, () {
      super.pros = value;
    });
  }

  final _$votesAtom = Atom(name: '_AdminProStore.votes');

  @override
  ObservableList<AdminSimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<AdminSimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_AdminProStoreActionController = ActionController(name: '_AdminProStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedByName(String createdByName) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setCreatedByName');
    try {
      return super.setCreatedByName(createdByName);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDownVotes(int downVotes) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setDownVotes');
    try {
      return super.setDownVotes(downVotes);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUpVotes(int upVotes) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setUpVotes');
    try {
      return super.setUpVotes(upVotes);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.addAllComments');
    try {
      return super.addAllComments(comments);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<AdminCommentStore> comments) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeComments(AdminCommentStore comments) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.removeComments');
    try {
      return super.removeComments(comments);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllCons(List<AdminConStore> cons) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.addAllCons');
    try {
      return super.addAllCons(cons);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCons(List<AdminConStore> cons) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setCons');
    try {
      return super.setCons(cons);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCons(AdminConStore cons) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.removeCons');
    try {
      return super.removeCons(cons);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedBy(AdminUserStore createdBy) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setCreatedBy');
    try {
      return super.setCreatedBy(createdBy);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllPros(List<AdminProStore> pros) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.addAllPros');
    try {
      return super.addAllPros(pros);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPros(List<AdminProStore> pros) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setPros');
    try {
      return super.setPros(pros);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePros(AdminProStore pros) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.removePros');
    try {
      return super.removePros(pros);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(AdminSimpleVoteStore votes) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminProStore storeToClone) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminProStore storeToClone) {
    final _$actionInfo = _$_AdminProStoreActionController.startAction(name: '_AdminProStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminProStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
createdByName: ${createdByName},
description: ${description},
downVotes: ${downVotes},
title: ${title},
upVotes: ${upVotes},
comments: ${comments},
cons: ${cons},
createdBy: ${createdBy},
pros: ${pros},
votes: ${votes}
    ''';
  }
}

mixin _$AdminSimpleVoteStore on _AdminSimpleVoteStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminSimpleVoteStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminSimpleVoteStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminSimpleVoteStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$typeAtom = Atom(name: '_AdminSimpleVoteStore.type');

  @override
  EdemokraciaSimpleVoteType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(EdemokraciaSimpleVoteType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$userAtom = Atom(name: '_AdminSimpleVoteStore.user');

  @override
  AdminUserStore get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(AdminUserStore value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_AdminSimpleVoteStoreActionController = ActionController(name: '_AdminSimpleVoteStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminSimpleVoteStoreActionController.startAction(name: '_AdminSimpleVoteStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminSimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setType(EdemokraciaSimpleVoteType type) {
    final _$actionInfo = _$_AdminSimpleVoteStoreActionController.startAction(name: '_AdminSimpleVoteStore.setType');
    try {
      return super.setType(type);
    } finally {
      _$_AdminSimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(AdminUserStore user) {
    final _$actionInfo = _$_AdminSimpleVoteStoreActionController.startAction(name: '_AdminSimpleVoteStore.setUser');
    try {
      return super.setUser(user);
    } finally {
      _$_AdminSimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminSimpleVoteStore storeToClone) {
    final _$actionInfo = _$_AdminSimpleVoteStoreActionController.startAction(name: '_AdminSimpleVoteStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminSimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminSimpleVoteStore storeToClone) {
    final _$actionInfo = _$_AdminSimpleVoteStoreActionController.startAction(name: '_AdminSimpleVoteStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminSimpleVoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
type: ${type},
user: ${user}
    ''';
  }
}

mixin _$AdminUserStore on _AdminUserStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminUserStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminUserStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminUserStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$emailAtom = Atom(name: '_AdminUserStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$firstNameAtom = Atom(name: '_AdminUserStore.firstName');

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$isAdminAtom = Atom(name: '_AdminUserStore.isAdmin');

  @override
  bool get isAdmin {
    _$isAdminAtom.reportRead();
    return super.isAdmin;
  }

  @override
  set isAdmin(bool value) {
    _$isAdminAtom.reportWrite(value, super.isAdmin, () {
      super.isAdmin = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_AdminUserStore.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$phoneAtom = Atom(name: '_AdminUserStore.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$representationAtom = Atom(name: '_AdminUserStore.representation');

  @override
  String get representation {
    _$representationAtom.reportRead();
    return super.representation;
  }

  @override
  set representation(String value) {
    _$representationAtom.reportWrite(value, super.representation, () {
      super.representation = value;
    });
  }

  final _$userNameAtom = Atom(name: '_AdminUserStore.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$activityCitiesAtom = Atom(name: '_AdminUserStore.activityCities');

  @override
  ObservableList<AdminCityStore> get activityCities {
    _$activityCitiesAtom.reportRead();
    return super.activityCities;
  }

  @override
  set activityCities(ObservableList<AdminCityStore> value) {
    _$activityCitiesAtom.reportWrite(value, super.activityCities, () {
      super.activityCities = value;
    });
  }

  final _$activityCountiesAtom = Atom(name: '_AdminUserStore.activityCounties');

  @override
  ObservableList<AdminCountyStore> get activityCounties {
    _$activityCountiesAtom.reportRead();
    return super.activityCounties;
  }

  @override
  set activityCounties(ObservableList<AdminCountyStore> value) {
    _$activityCountiesAtom.reportWrite(value, super.activityCounties, () {
      super.activityCounties = value;
    });
  }

  final _$activityDistrictsAtom = Atom(name: '_AdminUserStore.activityDistricts');

  @override
  ObservableList<AdminDistrictStore> get activityDistricts {
    _$activityDistrictsAtom.reportRead();
    return super.activityDistricts;
  }

  @override
  set activityDistricts(ObservableList<AdminDistrictStore> value) {
    _$activityDistrictsAtom.reportWrite(value, super.activityDistricts, () {
      super.activityDistricts = value;
    });
  }

  final _$residentCityAtom = Atom(name: '_AdminUserStore.residentCity');

  @override
  AdminCityStore get residentCity {
    _$residentCityAtom.reportRead();
    return super.residentCity;
  }

  @override
  set residentCity(AdminCityStore value) {
    _$residentCityAtom.reportWrite(value, super.residentCity, () {
      super.residentCity = value;
    });
  }

  final _$residentCountyAtom = Atom(name: '_AdminUserStore.residentCounty');

  @override
  AdminCountyStore get residentCounty {
    _$residentCountyAtom.reportRead();
    return super.residentCounty;
  }

  @override
  set residentCounty(AdminCountyStore value) {
    _$residentCountyAtom.reportWrite(value, super.residentCounty, () {
      super.residentCounty = value;
    });
  }

  final _$residentDistrictAtom = Atom(name: '_AdminUserStore.residentDistrict');

  @override
  AdminDistrictStore get residentDistrict {
    _$residentDistrictAtom.reportRead();
    return super.residentDistrict;
  }

  @override
  set residentDistrict(AdminDistrictStore value) {
    _$residentDistrictAtom.reportWrite(value, super.residentDistrict, () {
      super.residentDistrict = value;
    });
  }

  final _$votesAtom = Atom(name: '_AdminUserStore.votes');

  @override
  ObservableList<AdminSimpleVoteStore> get votes {
    _$votesAtom.reportRead();
    return super.votes;
  }

  @override
  set votes(ObservableList<AdminSimpleVoteStore> value) {
    _$votesAtom.reportWrite(value, super.votes, () {
      super.votes = value;
    });
  }

  final _$_AdminUserStoreActionController = ActionController(name: '_AdminUserStore');

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstName(String firstName) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setFirstName');
    try {
      return super.setFirstName(firstName);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsAdmin(bool isAdmin) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setIsAdmin');
    try {
      return super.setIsAdmin(isAdmin);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String lastName) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setLastName');
    try {
      return super.setLastName(lastName);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String phone) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setPhone');
    try {
      return super.setPhone(phone);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRepresentation(String representation) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setRepresentation');
    try {
      return super.setRepresentation(representation);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String userName) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setUserName');
    try {
      return super.setUserName(userName);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllActivityCities(List<AdminCityStore> activityCities) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.addAllActivityCities');
    try {
      return super.addAllActivityCities(activityCities);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivityCities(List<AdminCityStore> activityCities) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setActivityCities');
    try {
      return super.setActivityCities(activityCities);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivityCities(AdminCityStore activityCities) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.removeActivityCities');
    try {
      return super.removeActivityCities(activityCities);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllActivityCounties(List<AdminCountyStore> activityCounties) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.addAllActivityCounties');
    try {
      return super.addAllActivityCounties(activityCounties);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivityCounties(List<AdminCountyStore> activityCounties) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setActivityCounties');
    try {
      return super.setActivityCounties(activityCounties);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivityCounties(AdminCountyStore activityCounties) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.removeActivityCounties');
    try {
      return super.removeActivityCounties(activityCounties);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllActivityDistricts(List<AdminDistrictStore> activityDistricts) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.addAllActivityDistricts');
    try {
      return super.addAllActivityDistricts(activityDistricts);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivityDistricts(List<AdminDistrictStore> activityDistricts) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setActivityDistricts');
    try {
      return super.setActivityDistricts(activityDistricts);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivityDistricts(AdminDistrictStore activityDistricts) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.removeActivityDistricts');
    try {
      return super.removeActivityDistricts(activityDistricts);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResidentCity(AdminCityStore residentCity) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setResidentCity');
    try {
      return super.setResidentCity(residentCity);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResidentCounty(AdminCountyStore residentCounty) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setResidentCounty');
    try {
      return super.setResidentCounty(residentCounty);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResidentDistrict(AdminDistrictStore residentDistrict) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setResidentDistrict');
    try {
      return super.setResidentDistrict(residentDistrict);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAllVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.addAllVotes');
    try {
      return super.addAllVotes(votes);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVotes(List<AdminSimpleVoteStore> votes) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.setVotes');
    try {
      return super.setVotes(votes);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeVotes(AdminSimpleVoteStore votes) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.removeVotes');
    try {
      return super.removeVotes(votes);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminUserStore storeToClone) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminUserStore storeToClone) {
    final _$actionInfo = _$_AdminUserStoreActionController.startAction(name: '_AdminUserStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
created: ${created},
email: ${email},
firstName: ${firstName},
isAdmin: ${isAdmin},
lastName: ${lastName},
phone: ${phone},
representation: ${representation},
userName: ${userName},
activityCities: ${activityCities},
activityCounties: ${activityCounties},
activityDistricts: ${activityDistricts},
residentCity: ${residentCity},
residentCounty: ${residentCounty},
residentDistrict: ${residentDistrict},
votes: ${votes}
    ''';
  }
}

mixin _$AdminVoteDefinitionStore on _AdminVoteDefinitionStore, Store {
  final _$internal__updatableAtom = Atom(name: '_AdminVoteDefinitionStore.internal__updatable');

  @override
  bool get internal__updatable {
    _$internal__updatableAtom.reportRead();
    return super.internal__updatable;
  }

  @override
  set internal__updatable(bool value) {
    _$internal__updatableAtom.reportWrite(value, super.internal__updatable, () {
      super.internal__updatable = value;
    });
  }

  final _$internal__deletableAtom = Atom(name: '_AdminVoteDefinitionStore.internal__deletable');

  @override
  bool get internal__deletable {
    _$internal__deletableAtom.reportRead();
    return super.internal__deletable;
  }

  @override
  set internal__deletable(bool value) {
    _$internal__deletableAtom.reportWrite(value, super.internal__deletable, () {
      super.internal__deletable = value;
    });
  }

  final _$closeAtAtom = Atom(name: '_AdminVoteDefinitionStore.closeAt');

  @override
  DateTime get closeAt {
    _$closeAtAtom.reportRead();
    return super.closeAt;
  }

  @override
  set closeAt(DateTime value) {
    _$closeAtAtom.reportWrite(value, super.closeAt, () {
      super.closeAt = value;
    });
  }

  final _$createdAtom = Atom(name: '_AdminVoteDefinitionStore.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AdminVoteDefinitionStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$isNotRatingTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isNotRatingType');

  @override
  bool get isNotRatingType {
    _$isNotRatingTypeAtom.reportRead();
    return super.isNotRatingType;
  }

  @override
  set isNotRatingType(bool value) {
    _$isNotRatingTypeAtom.reportWrite(value, super.isNotRatingType, () {
      super.isNotRatingType = value;
    });
  }

  final _$isNotSelectAnswerTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isNotSelectAnswerType');

  @override
  bool get isNotSelectAnswerType {
    _$isNotSelectAnswerTypeAtom.reportRead();
    return super.isNotSelectAnswerType;
  }

  @override
  set isNotSelectAnswerType(bool value) {
    _$isNotSelectAnswerTypeAtom.reportWrite(value, super.isNotSelectAnswerType, () {
      super.isNotSelectAnswerType = value;
    });
  }

  final _$isNotYesNoAbstainTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isNotYesNoAbstainType');

  @override
  bool get isNotYesNoAbstainType {
    _$isNotYesNoAbstainTypeAtom.reportRead();
    return super.isNotYesNoAbstainType;
  }

  @override
  set isNotYesNoAbstainType(bool value) {
    _$isNotYesNoAbstainTypeAtom.reportWrite(value, super.isNotYesNoAbstainType, () {
      super.isNotYesNoAbstainType = value;
    });
  }

  final _$isNotYesNoTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isNotYesNoType');

  @override
  bool get isNotYesNoType {
    _$isNotYesNoTypeAtom.reportRead();
    return super.isNotYesNoType;
  }

  @override
  set isNotYesNoType(bool value) {
    _$isNotYesNoTypeAtom.reportWrite(value, super.isNotYesNoType, () {
      super.isNotYesNoType = value;
    });
  }

  final _$isRatingTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isRatingType');

  @override
  bool get isRatingType {
    _$isRatingTypeAtom.reportRead();
    return super.isRatingType;
  }

  @override
  set isRatingType(bool value) {
    _$isRatingTypeAtom.reportWrite(value, super.isRatingType, () {
      super.isRatingType = value;
    });
  }

  final _$isSelectAnswerTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isSelectAnswerType');

  @override
  bool get isSelectAnswerType {
    _$isSelectAnswerTypeAtom.reportRead();
    return super.isSelectAnswerType;
  }

  @override
  set isSelectAnswerType(bool value) {
    _$isSelectAnswerTypeAtom.reportWrite(value, super.isSelectAnswerType, () {
      super.isSelectAnswerType = value;
    });
  }

  final _$isYesNoAbstainTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isYesNoAbstainType');

  @override
  bool get isYesNoAbstainType {
    _$isYesNoAbstainTypeAtom.reportRead();
    return super.isYesNoAbstainType;
  }

  @override
  set isYesNoAbstainType(bool value) {
    _$isYesNoAbstainTypeAtom.reportWrite(value, super.isYesNoAbstainType, () {
      super.isYesNoAbstainType = value;
    });
  }

  final _$isYesNoTypeAtom = Atom(name: '_AdminVoteDefinitionStore.isYesNoType');

  @override
  bool get isYesNoType {
    _$isYesNoTypeAtom.reportRead();
    return super.isYesNoType;
  }

  @override
  set isYesNoType(bool value) {
    _$isYesNoTypeAtom.reportWrite(value, super.isYesNoType, () {
      super.isYesNoType = value;
    });
  }

  final _$statusAtom = Atom(name: '_AdminVoteDefinitionStore.status');

  @override
  EdemokraciaVoteStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EdemokraciaVoteStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$titleAtom = Atom(name: '_AdminVoteDefinitionStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$debateAtom = Atom(name: '_AdminVoteDefinitionStore.debate');

  @override
  AdminDebateStore get debate {
    _$debateAtom.reportRead();
    return super.debate;
  }

  @override
  set debate(AdminDebateStore value) {
    _$debateAtom.reportWrite(value, super.debate, () {
      super.debate = value;
    });
  }

  final _$_AdminVoteDefinitionStoreActionController = ActionController(name: '_AdminVoteDefinitionStore');

  @override
  void setCloseAt(DateTime closeAt) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setCloseAt');
    try {
      return super.setCloseAt(closeAt);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreated(DateTime created) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setCreated');
    try {
      return super.setCreated(created);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsNotRatingType(bool isNotRatingType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsNotRatingType');
    try {
      return super.setIsNotRatingType(isNotRatingType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsNotSelectAnswerType(bool isNotSelectAnswerType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsNotSelectAnswerType');
    try {
      return super.setIsNotSelectAnswerType(isNotSelectAnswerType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsNotYesNoAbstainType(bool isNotYesNoAbstainType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsNotYesNoAbstainType');
    try {
      return super.setIsNotYesNoAbstainType(isNotYesNoAbstainType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsNotYesNoType(bool isNotYesNoType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsNotYesNoType');
    try {
      return super.setIsNotYesNoType(isNotYesNoType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsRatingType(bool isRatingType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsRatingType');
    try {
      return super.setIsRatingType(isRatingType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsSelectAnswerType(bool isSelectAnswerType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsSelectAnswerType');
    try {
      return super.setIsSelectAnswerType(isSelectAnswerType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsYesNoAbstainType(bool isYesNoAbstainType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsYesNoAbstainType');
    try {
      return super.setIsYesNoAbstainType(isYesNoAbstainType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsYesNoType(bool isYesNoType) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setIsYesNoType');
    try {
      return super.setIsYesNoType(isYesNoType);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(EdemokraciaVoteStatus status) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setStatus');
    try {
      return super.setStatus(status);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String title) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDebate(AdminDebateStore debate) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.setDebate');
    try {
      return super.setDebate(debate);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initWithDefaults(AdminVoteDefinitionStore storeToClone) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.initWithDefaults');
    try {
      return super.initWithDefaults(storeToClone);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateWith(AdminVoteDefinitionStore storeToClone) {
    final _$actionInfo = _$_AdminVoteDefinitionStoreActionController.startAction(name: '_AdminVoteDefinitionStore.updateWith');
    try {
      return super.updateWith(storeToClone);
    } finally {
      _$_AdminVoteDefinitionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
internal__updatable: ${internal__updatable},
internal__deletable: ${internal__deletable},
closeAt: ${closeAt},
created: ${created},
description: ${description},
isNotRatingType: ${isNotRatingType},
isNotSelectAnswerType: ${isNotSelectAnswerType},
isNotYesNoAbstainType: ${isNotYesNoAbstainType},
isNotYesNoType: ${isNotYesNoType},
isRatingType: ${isRatingType},
isSelectAnswerType: ${isSelectAnswerType},
isYesNoAbstainType: ${isYesNoAbstainType},
isYesNoType: ${isYesNoType},
status: ${status},
title: ${title},
debate: ${debate}
    ''';
  }
}
