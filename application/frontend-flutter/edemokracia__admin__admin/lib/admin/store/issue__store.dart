//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class IssueStore extends _IssueStore with _$IssueStore {
  IssueStore() : super();

  IssueStore.clone(IssueStore storeToClone) : super.clone(storeToClone);
}

abstract class _IssueStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _IssueStore();

  _IssueStore.clone(IssueStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;
    description = storeToClone.description;
    status = storeToClone.status;
    title = storeToClone.title;

    // Relations
    if (storeToClone.attachments != null) {
      attachments = ObservableList.of(storeToClone.attachments);
    } else {
      attachments = ObservableList.of([]);
    }
    if (storeToClone.categories != null) {
      categories = ObservableList.of(storeToClone.categories);
    } else {
      categories = ObservableList.of([]);
    }
    if (storeToClone.comments != null) {
      comments = ObservableList.of(storeToClone.comments);
    } else {
      comments = ObservableList.of([]);
    }
    if (storeToClone.createdBy != null) {
      createdBy = UserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.debates != null) {
      debates = ObservableList.of(storeToClone.debates);
    } else {
      debates = ObservableList.of([]);
    }
    if (storeToClone.owner != null) {
      owner = UserStore.clone(storeToClone.owner);
    } else {
      owner = null;
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
  EdemokraciaIssueStatus status;
  @observable
  String title;

  // Relations

  @observable
  var attachments = ObservableList<IssueAttachmentStore>();

  @observable
  var categories = ObservableList<IssueCategoryStore>();

  @observable
  var comments = ObservableList<CommentStore>();

  @observable
  UserStore createdBy;

  @observable
  var debates = ObservableList<DebateStore>();

  @observable
  UserStore owner;

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
  void setStatus(EdemokraciaIssueStatus status) {
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
  void addAllAttachments(List<IssueAttachmentStore> attachments) {
    this.attachments.addAll(attachments);
    changedFields.add('attachments');
  }

  @action
  void setAttachments(List<IssueAttachmentStore> attachments) {
    this.attachments.clear();
    this.attachments.addAll(attachments);
    changedFields.add('attachments');
  }

  @action
  void removeAttachments(IssueAttachmentStore attachments) {
    this.attachments.remove(attachments);
    changedFields.add('attachments');
  }

  @action
  void addAllCategories(List<IssueCategoryStore> categories) {
    this.categories.addAll(categories);
  }

  @action
  void setCategories(List<IssueCategoryStore> categories) {
    this.categories.clear();
    this.categories.addAll(categories);
  }

  @action
  void removeCategories(IssueCategoryStore categories) {
    this.categories.remove(categories);
  }

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
  void setCreatedBy(UserStore createdBy) {
    this.createdBy = createdBy;
  }

  @action
  void addAllDebates(List<DebateStore> debates) {
    this.debates.addAll(debates);
  }

  @action
  void setDebates(List<DebateStore> debates) {
    this.debates.clear();
    this.debates.addAll(debates);
  }

  @action
  void removeDebates(DebateStore debates) {
    this.debates.remove(debates);
  }

  @action
  void setOwner(UserStore owner) {
    this.owner = owner;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _IssueStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(IssueStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
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
    if (storeToClone.attachments != null) {
      setAttachments(ObservableList.of(storeToClone.attachments));
    } else {
      setAttachments(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.categories != null) {
      setCategories(ObservableList.of(storeToClone.categories));
    } else {
      setCategories(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.comments != null) {
      setComments(ObservableList.of(storeToClone.comments));
    } else {
      setComments(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.createdBy != null) {
      setCreatedBy(UserStore.clone(storeToClone.createdBy));
    }
    if (storeToClone.debates != null) {
      setDebates(ObservableList.of(storeToClone.debates));
    } else {
      setDebates(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.owner != null) {
      setOwner(UserStore.clone(storeToClone.owner));
    }
  }

  @action
  void updateWith(IssueStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;
    description = storeToClone.description;
    status = storeToClone.status;
    title = storeToClone.title;

    /// Relations
    if (storeToClone.attachments != null) {
      attachments = ObservableList.of(storeToClone.attachments);
    } else {
      attachments = ObservableList.of([]);
    }
    if (storeToClone.categories != null) {
      categories = ObservableList.of(storeToClone.categories);
    } else {
      categories = ObservableList.of([]);
    }
    if (storeToClone.comments != null) {
      comments = ObservableList.of(storeToClone.comments);
    } else {
      comments = ObservableList.of([]);
    }
    if (storeToClone.createdBy != null) {
      createdBy = UserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.debates != null) {
      debates = ObservableList.of(storeToClone.debates);
    } else {
      debates = ObservableList.of([]);
    }
    if (storeToClone.owner != null) {
      owner = UserStore.clone(storeToClone.owner);
    } else {
      owner = null;
    }

    changedFields.clear();
  }
}
