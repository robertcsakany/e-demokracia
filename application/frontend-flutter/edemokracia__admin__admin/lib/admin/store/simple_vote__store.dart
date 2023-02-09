//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class SimpleVoteStore extends _SimpleVoteStore with _$SimpleVoteStore {
  SimpleVoteStore() : super();

  SimpleVoteStore.clone(SimpleVoteStore storeToClone) : super.clone(storeToClone);
}

abstract class _SimpleVoteStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _SimpleVoteStore();

  _SimpleVoteStore.clone(SimpleVoteStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;
    type = storeToClone.type;

    // Relations
    if (storeToClone.user != null) {
      user = UserStore.clone(storeToClone.user);
    } else {
      user = null;
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
  EdemokraciaSimpleVoteType type;

  // Relations

  @observable
  UserStore user;

  // Attributes
  @action
  void setCreated(DateTime created) {
    this.created = created;
    changedFields.add('created');
  }

  @action
  void setType(EdemokraciaSimpleVoteType type) {
    this.type = type;
    changedFields.add('type');
  }

  // Relations
  @action
  void setUser(UserStore user) {
    this.user = user;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _SimpleVoteStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(SimpleVoteStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }
    if (storeToClone.type != null) {
      setType(storeToClone.type);
    }

    /// Relations
    if (storeToClone.user != null) {
      setUser(UserStore.clone(storeToClone.user));
    }
  }

  @action
  void updateWith(SimpleVoteStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;
    type = storeToClone.type;

    /// Relations
    if (storeToClone.user != null) {
      user = UserStore.clone(storeToClone.user);
    } else {
      user = null;
    }

    changedFields.clear();
  }
}
