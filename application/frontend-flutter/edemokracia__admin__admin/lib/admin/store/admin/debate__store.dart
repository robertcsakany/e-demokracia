//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminDebateStore extends _AdminDebateStore with _$AdminDebateStore {
  AdminDebateStore() : super();

  AdminDebateStore.clone(AdminDebateStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminDebateStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminDebateStore();

  _AdminDebateStore.clone(AdminDebateStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    closeAt = storeToClone.closeAt;
    description = storeToClone.description;
    status = storeToClone.status;
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
      createdBy = AdminUserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.issue != null) {
      issue = AdminIssueStore.clone(storeToClone.issue);
    } else {
      issue = null;
    }
    if (storeToClone.pros != null) {
      pros = ObservableList.of(storeToClone.pros);
    } else {
      pros = ObservableList.of([]);
    }
    if (storeToClone.voteDefinition != null) {
      voteDefinition = AdminVoteDefinitionStore.clone(storeToClone.voteDefinition);
    } else {
      voteDefinition = null;
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
  DateTime closeAt;
  @observable
  String description;
  @observable
  EdemokraciaDebateStatus status;
  @observable
  String title;

  // Relations

  @observable
  var comments = ObservableList<AdminCommentStore>();

  @observable
  var cons = ObservableList<AdminConStore>();

  @observable
  AdminUserStore createdBy;

  @observable
  AdminIssueStore issue;

  @observable
  var pros = ObservableList<AdminProStore>();

  @observable
  AdminVoteDefinitionStore voteDefinition;

  // Attributes
  @action
  void setCloseAt(DateTime closeAt) {
    this.closeAt = closeAt;
    changedFields.add('closeAt');
  }

  @action
  void setDescription(String description) {
    this.description = description;
    changedFields.add('description');
  }

  @action
  void setStatus(EdemokraciaDebateStatus status) {
    this.status = status;
    changedFields.add('status');
  }

  @action
  void setTitle(String title) {
    this.title = title;
    changedFields.add('title');
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
  void setIssue(AdminIssueStore issue) {
    this.issue = issue;
    changedFields.add('issue');
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
  void setVoteDefinition(AdminVoteDefinitionStore voteDefinition) {
    this.voteDefinition = voteDefinition;
    changedFields.add('voteDefinition');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminDebateStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminDebateStore storeToClone) {
    /// Attributes
    if (storeToClone.closeAt != null) {
      setCloseAt(storeToClone.closeAt);
    }
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.status != null) {
      setStatus(storeToClone.status);
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
      setCreatedBy(AdminUserStore.clone(storeToClone.createdBy));
    }
    if (storeToClone.issue != null) {
      setIssue(AdminIssueStore.clone(storeToClone.issue));
    }
    if (storeToClone.pros != null) {
      setPros(ObservableList.of(storeToClone.pros));
    } else {
      setPros(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.voteDefinition != null) {
      setVoteDefinition(AdminVoteDefinitionStore.clone(storeToClone.voteDefinition));
    }
  }

  @action
  void updateWith(AdminDebateStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    closeAt = storeToClone.closeAt;
    description = storeToClone.description;
    status = storeToClone.status;
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
      createdBy = AdminUserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.issue != null) {
      issue = AdminIssueStore.clone(storeToClone.issue);
    } else {
      issue = null;
    }
    if (storeToClone.pros != null) {
      pros = ObservableList.of(storeToClone.pros);
    } else {
      pros = ObservableList.of([]);
    }
    if (storeToClone.voteDefinition != null) {
      voteDefinition = AdminVoteDefinitionStore.clone(storeToClone.voteDefinition);
    } else {
      voteDefinition = null;
    }

    changedFields.clear();
  }
}
