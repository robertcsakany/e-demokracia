//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminCreateIssueInputStore extends _AdminCreateIssueInputStore with _$AdminCreateIssueInputStore {
  AdminCreateIssueInputStore() : super();

  AdminCreateIssueInputStore.clone(AdminCreateIssueInputStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminCreateIssueInputStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminCreateIssueInputStore();

  _AdminCreateIssueInputStore.clone(AdminCreateIssueInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    description = storeToClone.description;
    title = storeToClone.title;

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
  String description;
  @observable
  String title;

  // Relations

  // Attributes
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminCreateIssueInputStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminCreateIssueInputStore storeToClone) {
    /// Attributes
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.title != null) {
      setTitle(storeToClone.title);
    }

    /// Relations
  }

  @action
  void updateWith(AdminCreateIssueInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    description = storeToClone.description;
    title = storeToClone.title;

    /// Relations

    changedFields.clear();
  }
}
