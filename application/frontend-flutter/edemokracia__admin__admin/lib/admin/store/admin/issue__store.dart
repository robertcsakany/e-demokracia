//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminIssueStore extends _AdminIssueStore with _$AdminIssueStore {
  AdminIssueStore() : super();

  AdminIssueStore.clone(AdminIssueStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminIssueStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminIssueStore();

  _AdminIssueStore.clone(AdminIssueStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;
    description = storeToClone.description;
    representation = storeToClone.representation;
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
      createdBy = AdminUserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.debates != null) {
      debates = ObservableList.of(storeToClone.debates);
    } else {
      debates = ObservableList.of([]);
    }
    if (storeToClone.owner != null) {
      owner = AdminUserStore.clone(storeToClone.owner);
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
  String representation;
  @observable
  EdemokraciaIssueStatus status;
  @observable
  String title;

  // Relations

  @observable
  var attachments = ObservableList<AdminIssueAttachmentStore>();

  @observable
  var categories = ObservableList<AdminIssueCategoryStore>();

  @observable
  var comments = ObservableList<AdminCommentStore>();

  @observable
  AdminUserStore createdBy;

  @observable
  var debates = ObservableList<AdminIssueDebateStore>();

  @observable
  AdminUserStore owner;

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
  void setRepresentation(String representation) {
    this.representation = representation;
    changedFields.add('representation');
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
  void addAllAttachments(List<AdminIssueAttachmentStore> attachments) {
    this.attachments.addAll(attachments);
    changedFields.add('attachments');
  }

  @action
  void setAttachments(List<AdminIssueAttachmentStore> attachments) {
    this.attachments.clear();
    this.attachments.addAll(attachments);
    changedFields.add('attachments');
  }

  @action
  void removeAttachments(AdminIssueAttachmentStore attachments) {
    this.attachments.remove(attachments);
    changedFields.add('attachments');
  }

  @action
  void addAllCategories(List<AdminIssueCategoryStore> categories) {
    this.categories.addAll(categories);
    changedFields.add('categories');
  }

  @action
  void setCategories(List<AdminIssueCategoryStore> categories) {
    this.categories.clear();
    this.categories.addAll(categories);
    changedFields.add('categories');
  }

  @action
  void removeCategories(AdminIssueCategoryStore categories) {
    this.categories.remove(categories);
    changedFields.add('categories');
  }

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
  void setCreatedBy(AdminUserStore createdBy) {
    this.createdBy = createdBy;
    changedFields.add('createdBy');
  }

  @action
  void addAllDebates(List<AdminIssueDebateStore> debates) {
    this.debates.addAll(debates);
    changedFields.add('debates');
  }

  @action
  void setDebates(List<AdminIssueDebateStore> debates) {
    this.debates.clear();
    this.debates.addAll(debates);
    changedFields.add('debates');
  }

  @action
  void removeDebates(AdminIssueDebateStore debates) {
    this.debates.remove(debates);
    changedFields.add('debates');
  }

  @action
  void setOwner(AdminUserStore owner) {
    this.owner = owner;
    changedFields.add('owner');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminIssueStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminIssueStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.representation != null) {
      setRepresentation(storeToClone.representation);
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
      setCreatedBy(AdminUserStore.clone(storeToClone.createdBy));
    }
    if (storeToClone.debates != null) {
      setDebates(ObservableList.of(storeToClone.debates));
    } else {
      setDebates(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.owner != null) {
      setOwner(AdminUserStore.clone(storeToClone.owner));
    }
  }

  @action
  void updateWith(AdminIssueStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;
    description = storeToClone.description;
    representation = storeToClone.representation;
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
      createdBy = AdminUserStore.clone(storeToClone.createdBy);
    } else {
      createdBy = null;
    }
    if (storeToClone.debates != null) {
      debates = ObservableList.of(storeToClone.debates);
    } else {
      debates = ObservableList.of([]);
    }
    if (storeToClone.owner != null) {
      owner = AdminUserStore.clone(storeToClone.owner);
    } else {
      owner = null;
    }

    changedFields.clear();
  }
}
