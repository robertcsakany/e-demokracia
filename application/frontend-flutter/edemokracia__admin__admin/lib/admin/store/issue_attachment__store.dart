//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class IssueAttachmentStore extends _IssueAttachmentStore with _$IssueAttachmentStore {
  IssueAttachmentStore() : super();

  IssueAttachmentStore.clone(IssueAttachmentStore storeToClone) : super.clone(storeToClone);
}

abstract class _IssueAttachmentStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _IssueAttachmentStore();

  _IssueAttachmentStore.clone(IssueAttachmentStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    file = storeToClone.file;
    link = storeToClone.link;
    type = storeToClone.type;

    // Relations
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
  String file;
  @observable
  String link;
  @observable
  EdemokraciaAttachmentType type;

  // Relations

  // Attributes
  @action
  void setFile(String file) {
    this.file = file;
    changedFields.add('file');
  }

  @action
  void setLink(String link) {
    this.link = link;
    changedFields.add('link');
  }

  @action
  void setType(EdemokraciaAttachmentType type) {
    this.type = type;
    changedFields.add('type');
  }

  // Relations

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _IssueAttachmentStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(IssueAttachmentStore storeToClone) {
    /// Attributes
    if (storeToClone.file != null) {
      setFile(storeToClone.file);
    }
    if (storeToClone.link != null) {
      setLink(storeToClone.link);
    }
    if (storeToClone.type != null) {
      setType(storeToClone.type);
    }

    /// Relations
  }

  @action
  void updateWith(IssueAttachmentStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    file = storeToClone.file;
    link = storeToClone.link;
    type = storeToClone.type;

    /// Relations

    changedFields.clear();
  }
}
