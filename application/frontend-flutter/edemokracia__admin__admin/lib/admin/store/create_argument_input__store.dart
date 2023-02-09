//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class CreateArgumentInputStore extends _CreateArgumentInputStore with _$CreateArgumentInputStore {
  CreateArgumentInputStore() : super();

  CreateArgumentInputStore.clone(CreateArgumentInputStore storeToClone) : super.clone(storeToClone);
}

abstract class _CreateArgumentInputStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _CreateArgumentInputStore();

  _CreateArgumentInputStore.clone(CreateArgumentInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    description = storeToClone.description;
    title = storeToClone.title;
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
  String description;
  @observable
  String title;
  @observable
  EdemokraciaCreateArgumentInputType type;

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

  @action
  void setType(EdemokraciaCreateArgumentInputType type) {
    this.type = type;
    changedFields.add('type');
  }

  // Relations

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _CreateArgumentInputStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(CreateArgumentInputStore storeToClone) {
    /// Attributes
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.title != null) {
      setTitle(storeToClone.title);
    }
    if (storeToClone.type != null) {
      setType(storeToClone.type);
    }

    /// Relations
  }

  @action
  void updateWith(CreateArgumentInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    description = storeToClone.description;
    title = storeToClone.title;
    type = storeToClone.type;

    /// Relations

    changedFields.clear();
  }
}
