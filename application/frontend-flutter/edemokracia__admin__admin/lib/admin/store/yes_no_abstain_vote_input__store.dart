//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class YesNoAbstainVoteInputStore extends _YesNoAbstainVoteInputStore with _$YesNoAbstainVoteInputStore {
  YesNoAbstainVoteInputStore() : super();

  YesNoAbstainVoteInputStore.clone(YesNoAbstainVoteInputStore storeToClone) : super.clone(storeToClone);
}

abstract class _YesNoAbstainVoteInputStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _YesNoAbstainVoteInputStore();

  _YesNoAbstainVoteInputStore.clone(YesNoAbstainVoteInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    value = storeToClone.value;

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
  EdemokraciaYesNoAbstainVoteValue value;

  // Relations

  // Attributes
  @action
  void setValue(EdemokraciaYesNoAbstainVoteValue value) {
    this.value = value;
    changedFields.add('value');
  }

  // Relations

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _YesNoAbstainVoteInputStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(YesNoAbstainVoteInputStore storeToClone) {
    /// Attributes
    if (storeToClone.value != null) {
      setValue(storeToClone.value);
    }

    /// Relations
  }

  @action
  void updateWith(YesNoAbstainVoteInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    value = storeToClone.value;

    /// Relations

    changedFields.clear();
  }
}
