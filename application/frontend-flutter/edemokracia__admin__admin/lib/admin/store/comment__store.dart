//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class CommentStore extends _CommentStore with _$CommentStore {
  CommentStore() : super();

  CommentStore.clone(CommentStore storeToClone) : super.clone(storeToClone);
}

abstract class _CommentStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _CommentStore();

  _CommentStore.clone(CommentStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    comment = storeToClone.comment;
    created = storeToClone.created;

    // Relations
    if (storeToClone.createdBy != null) {
      createdBy = UserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
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
  String comment;
  @observable
  DateTime created;

  // Relations

  @observable
  UserStore createdBy;

  @observable
  var votes = ObservableList<SimpleVoteStore>();

  // Attributes
  @action
  void setComment(String comment) {
    this.comment = comment;
    changedFields.add('comment');
  }

  @action
  void setCreated(DateTime created) {
    this.created = created;
    changedFields.add('created');
  }

  // Relations
  @action
  void setCreatedBy(UserStore createdBy) {
    this.createdBy = createdBy;
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
      other is _CommentStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(CommentStore storeToClone) {
    /// Attributes
    if (storeToClone.comment != null) {
      setComment(storeToClone.comment);
    }
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }

    /// Relations
    if (storeToClone.createdBy != null) {
      setCreatedBy(UserStore.clone(storeToClone.createdBy));
    }
    if (storeToClone.votes != null) {
      setVotes(ObservableList.of(storeToClone.votes));
    } else {
      setVotes(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(CommentStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    comment = storeToClone.comment;
    created = storeToClone.created;

    /// Relations
    if (storeToClone.createdBy != null) {
      createdBy = UserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.votes != null) {
      votes = ObservableList.of(storeToClone.votes);
    } else {
      votes = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
