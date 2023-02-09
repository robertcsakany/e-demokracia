//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminProStore extends _AdminProStore with _$AdminProStore {
  AdminProStore() : super();

  AdminProStore.clone(AdminProStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminProStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminProStore();

  _AdminProStore.clone(AdminProStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;
    createdByName = storeToClone.createdByName;
    description = storeToClone.description;
    downVotes = storeToClone.downVotes;
    title = storeToClone.title;
    upVotes = storeToClone.upVotes;

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
      createdBy = AdminUserStore.clone(storeToClone.createdBy);
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
  String createdByName;
  @observable
  String description;
  @observable
  int downVotes;
  @observable
  String title;
  @observable
  int upVotes;

  // Relations

  @observable
  var comments = ObservableList<AdminCommentStore>();

  @observable
  var cons = ObservableList<AdminConStore>();

  @observable
  AdminUserStore createdBy;

  @observable
  var pros = ObservableList<AdminProStore>();

  @observable
  var votes = ObservableList<AdminSimpleVoteStore>();

  // Attributes
  @action
  void setCreated(DateTime created) {
    this.created = created;
    changedFields.add('created');
  }

  @action
  void setCreatedByName(String createdByName) {
    this.createdByName = createdByName;
    changedFields.add('createdByName');
  }

  @action
  void setDescription(String description) {
    this.description = description;
    changedFields.add('description');
  }

  @action
  void setDownVotes(int downVotes) {
    this.downVotes = downVotes;
    changedFields.add('downVotes');
  }

  @action
  void setTitle(String title) {
    this.title = title;
    changedFields.add('title');
  }

  @action
  void setUpVotes(int upVotes) {
    this.upVotes = upVotes;
    changedFields.add('upVotes');
  }

  // Relations
  @action
  void addAllComments(List<AdminCommentStore> comments) {
    this.comments.addAll(comments);
    changedFields.add('comments');
  }

  @action
  void setComments(List<AdminCommentStore> comments) {
    this.comments.clear();
    this.comments.addAll(comments);
    changedFields.add('comments');
  }

  @action
  void removeComments(AdminCommentStore comments) {
    this.comments.remove(comments);
    changedFields.add('comments');
  }

  @action
  void addAllCons(List<AdminConStore> cons) {
    this.cons.addAll(cons);
    changedFields.add('cons');
  }

  @action
  void setCons(List<AdminConStore> cons) {
    this.cons.clear();
    this.cons.addAll(cons);
    changedFields.add('cons');
  }

  @action
  void removeCons(AdminConStore cons) {
    this.cons.remove(cons);
    changedFields.add('cons');
  }

  @action
  void setCreatedBy(AdminUserStore createdBy) {
    this.createdBy = createdBy;
    changedFields.add('createdBy');
  }

  @action
  void addAllPros(List<AdminProStore> pros) {
    this.pros.addAll(pros);
    changedFields.add('pros');
  }

  @action
  void setPros(List<AdminProStore> pros) {
    this.pros.clear();
    this.pros.addAll(pros);
    changedFields.add('pros');
  }

  @action
  void removePros(AdminProStore pros) {
    this.pros.remove(pros);
    changedFields.add('pros');
  }

  @action
  void addAllVotes(List<AdminSimpleVoteStore> votes) {
    this.votes.addAll(votes);
  }

  @action
  void setVotes(List<AdminSimpleVoteStore> votes) {
    this.votes.clear();
    this.votes.addAll(votes);
  }

  @action
  void removeVotes(AdminSimpleVoteStore votes) {
    this.votes.remove(votes);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminProStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminProStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }
    if (storeToClone.createdByName != null) {
      setCreatedByName(storeToClone.createdByName);
    }
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.downVotes != null) {
      setDownVotes(storeToClone.downVotes);
    }
    if (storeToClone.title != null) {
      setTitle(storeToClone.title);
    }
    if (storeToClone.upVotes != null) {
      setUpVotes(storeToClone.upVotes);
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
      setCreatedBy(AdminUserStore.clone(storeToClone.createdBy));
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
  void updateWith(AdminProStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;
    createdByName = storeToClone.createdByName;
    description = storeToClone.description;
    downVotes = storeToClone.downVotes;
    title = storeToClone.title;
    upVotes = storeToClone.upVotes;

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
      createdBy = AdminUserStore.clone(storeToClone.createdBy);
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
