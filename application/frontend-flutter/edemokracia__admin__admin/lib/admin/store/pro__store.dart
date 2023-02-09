//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class ProStore extends _ProStore with _$ProStore {
  ProStore() : super();

  ProStore.clone(ProStore storeToClone) : super.clone(storeToClone);
}

abstract class _ProStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _ProStore();

  _ProStore.clone(ProStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;
    description = storeToClone.description;
    title = storeToClone.title;

    // Relations
    if (storeToClone.comments != null) {
      comments = ObservableList.of(storeToClone.comments);
    } else {
      comments = ObservableList.of([]);
    }
    if (storeToClone.cons != null) {
      cons = ObservableList.of(storeToClone.cons);
    } else {
      cons = ObservableList.of([]);
    }
    if (storeToClone.createdBy != null) {
      createdBy = UserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.pros != null) {
      pros = ObservableList.of(storeToClone.pros);
    } else {
      pros = ObservableList.of([]);
    }
    if (storeToClone.votes != null) {
      votes = ObservableList.of(storeToClone.votes);
    } else {
      votes = ObservableList.of([]);
    }
  }

  // ignore: non_constant_identifier_names
  String internal__identifier;

  // ignore: non_constant_identifier_names
  String internal__entityType;

  // ignore: non_constant_identifier_names
  String internal__signedIdentifier;

  // ignore: non_constant_identifier_names
  String internal__referenceIdentifier = Uuid().v1();

  // ignore: non_constant_identifier_names
  @observable
  bool internal__updatable = true;

  // ignore: non_constant_identifier_names
  @observable
  bool internal__deletable = true;

  // Attributes
  @observable
  DateTime created;
  @observable
  String description;
  @observable
  String title;

  // Relations

  @observable
  var comments = ObservableList<CommentStore>();

  @observable
  var cons = ObservableList<ConStore>();

  @observable
  UserStore createdBy;

  @observable
  var pros = ObservableList<ProStore>();

  @observable
  var votes = ObservableList<SimpleVoteStore>();

  // Attributes
  @action
  void setCreated(DateTime created) {
    this.created = created;
    changedFields.add('created');
  }

  @action
  void setDescription(String description) {
    this.description = description;
    changedFields.add('description');
  }

  @action
  void setTitle(String title) {
    this.title = title;
    changedFields.add('title');
  }

  // Relations
  @action
  void addAllComments(List<CommentStore> comments) {
    this.comments.addAll(comments);
    changedFields.add('comments');
  }

  @action
  void setComments(List<CommentStore> comments) {
    this.comments.clear();
    this.comments.addAll(comments);
    changedFields.add('comments');
  }

  @action
  void removeComments(CommentStore comments) {
    this.comments.remove(comments);
    changedFields.add('comments');
  }

  @action
  void addAllCons(List<ConStore> cons) {
    this.cons.addAll(cons);
  }

  @action
  void setCons(List<ConStore> cons) {
    this.cons.clear();
    this.cons.addAll(cons);
  }

  @action
  void removeCons(ConStore cons) {
    this.cons.remove(cons);
  }

  @action
  void setCreatedBy(UserStore createdBy) {
    this.createdBy = createdBy;
  }

  @action
  void addAllPros(List<ProStore> pros) {
    this.pros.addAll(pros);
    changedFields.add('pros');
  }

  @action
  void setPros(List<ProStore> pros) {
    this.pros.clear();
    this.pros.addAll(pros);
    changedFields.add('pros');
  }

  @action
  void removePros(ProStore pros) {
    this.pros.remove(pros);
    changedFields.add('pros');
  }

  @action
  void addAllVotes(List<SimpleVoteStore> votes) {
    this.votes.addAll(votes);
    changedFields.add('votes');
  }

  @action
  void setVotes(List<SimpleVoteStore> votes) {
    this.votes.clear();
    this.votes.addAll(votes);
    changedFields.add('votes');
  }

  @action
  void removeVotes(SimpleVoteStore votes) {
    this.votes.remove(votes);
    changedFields.add('votes');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ProStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(ProStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.title != null) {
      setTitle(storeToClone.title);
    }

    /// Relations
    if (storeToClone.comments != null) {
      setComments(ObservableList.of(storeToClone.comments));
    } else {
      setComments(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.cons != null) {
      setCons(ObservableList.of(storeToClone.cons));
    } else {
      setCons(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.createdBy != null) {
      setCreatedBy(UserStore.clone(storeToClone.createdBy));
    }
    if (storeToClone.pros != null) {
      setPros(ObservableList.of(storeToClone.pros));
    } else {
      setPros(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.votes != null) {
      setVotes(ObservableList.of(storeToClone.votes));
    } else {
      setVotes(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(ProStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;
    description = storeToClone.description;
    title = storeToClone.title;

    /// Relations
    if (storeToClone.comments != null) {
      comments = ObservableList.of(storeToClone.comments);
    } else {
      comments = ObservableList.of([]);
    }
    if (storeToClone.cons != null) {
      cons = ObservableList.of(storeToClone.cons);
    } else {
      cons = ObservableList.of([]);
    }
    if (storeToClone.createdBy != null) {
      createdBy = UserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.pros != null) {
      pros = ObservableList.of(storeToClone.pros);
    } else {
      pros = ObservableList.of([]);
    }
    if (storeToClone.votes != null) {
      votes = ObservableList.of(storeToClone.votes);
    } else {
      votes = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
