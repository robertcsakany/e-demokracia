//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class VoteEntryStore extends _VoteEntryStore with _$VoteEntryStore {
  VoteEntryStore() : super();

  VoteEntryStore.clone(VoteEntryStore storeToClone) : super.clone(storeToClone);
}

abstract class _VoteEntryStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _VoteEntryStore();

  _VoteEntryStore.clone(VoteEntryStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;

    // Relations
    if (storeToClone.user != null) {
      user = UserStore.clone(storeToClone.user);
    } else {
      user = null;
    }
    if (storeToClone.voteDefinition != null) {
      voteDefinition = VoteDefinitionStore.clone(storeToClone.voteDefinition);
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
  DateTime created;

  // Relations

  @observable
  UserStore user;

  @observable
  VoteDefinitionStore voteDefinition;

  // Attributes
  @action
  void setCreated(DateTime created) {
    this.created = created;
    changedFields.add('created');
  }

  // Relations
  @action
  void setUser(UserStore user) {
    this.user = user;
  }

  @action
  void setVoteDefinition(VoteDefinitionStore voteDefinition) {
    this.voteDefinition = voteDefinition;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _VoteEntryStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(VoteEntryStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }

    /// Relations
    if (storeToClone.user != null) {
      setUser(UserStore.clone(storeToClone.user));
    }
    if (storeToClone.voteDefinition != null) {
      setVoteDefinition(VoteDefinitionStore.clone(storeToClone.voteDefinition));
    }
  }

  @action
  void updateWith(VoteEntryStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;

    /// Relations
    if (storeToClone.user != null) {
      user = UserStore.clone(storeToClone.user);
    } else {
      user = null;
    }
    if (storeToClone.voteDefinition != null) {
      voteDefinition = VoteDefinitionStore.clone(storeToClone.voteDefinition);
    } else {
      voteDefinition = null;
    }

    changedFields.clear();
  }
}
