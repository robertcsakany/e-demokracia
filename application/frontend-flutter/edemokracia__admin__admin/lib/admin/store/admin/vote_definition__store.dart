//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminVoteDefinitionStore extends _AdminVoteDefinitionStore with _$AdminVoteDefinitionStore {
  AdminVoteDefinitionStore() : super();

  AdminVoteDefinitionStore.clone(AdminVoteDefinitionStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminVoteDefinitionStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminVoteDefinitionStore();

  _AdminVoteDefinitionStore.clone(AdminVoteDefinitionStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    closeAt = storeToClone.closeAt;
    created = storeToClone.created;
    description = storeToClone.description;
    isNotRatingType = storeToClone.isNotRatingType;
    isNotSelectAnswerType = storeToClone.isNotSelectAnswerType;
    isNotYesNoAbstainType = storeToClone.isNotYesNoAbstainType;
    isNotYesNoType = storeToClone.isNotYesNoType;
    isRatingType = storeToClone.isRatingType;
    isSelectAnswerType = storeToClone.isSelectAnswerType;
    isYesNoAbstainType = storeToClone.isYesNoAbstainType;
    isYesNoType = storeToClone.isYesNoType;
    status = storeToClone.status;
    title = storeToClone.title;

    // Relations
    if (storeToClone.debate != null) {
      debate = AdminDebateStore.clone(storeToClone.debate);
    } else {
      debate = null;
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
  DateTime created;
  @observable
  String description;
  @observable
  bool isNotRatingType;
  @observable
  bool isNotSelectAnswerType;
  @observable
  bool isNotYesNoAbstainType;
  @observable
  bool isNotYesNoType;
  @observable
  bool isRatingType;
  @observable
  bool isSelectAnswerType;
  @observable
  bool isYesNoAbstainType;
  @observable
  bool isYesNoType;
  @observable
  EdemokraciaVoteStatus status;
  @observable
  String title;

  // Relations

  @observable
  AdminDebateStore debate;

  // Attributes
  @action
  void setCloseAt(DateTime closeAt) {
    this.closeAt = closeAt;
    changedFields.add('closeAt');
  }

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
  void setIsNotRatingType(bool isNotRatingType) {
    this.isNotRatingType = isNotRatingType;
    changedFields.add('isNotRatingType');
  }

  @action
  void setIsNotSelectAnswerType(bool isNotSelectAnswerType) {
    this.isNotSelectAnswerType = isNotSelectAnswerType;
    changedFields.add('isNotSelectAnswerType');
  }

  @action
  void setIsNotYesNoAbstainType(bool isNotYesNoAbstainType) {
    this.isNotYesNoAbstainType = isNotYesNoAbstainType;
    changedFields.add('isNotYesNoAbstainType');
  }

  @action
  void setIsNotYesNoType(bool isNotYesNoType) {
    this.isNotYesNoType = isNotYesNoType;
    changedFields.add('isNotYesNoType');
  }

  @action
  void setIsRatingType(bool isRatingType) {
    this.isRatingType = isRatingType;
    changedFields.add('isRatingType');
  }

  @action
  void setIsSelectAnswerType(bool isSelectAnswerType) {
    this.isSelectAnswerType = isSelectAnswerType;
    changedFields.add('isSelectAnswerType');
  }

  @action
  void setIsYesNoAbstainType(bool isYesNoAbstainType) {
    this.isYesNoAbstainType = isYesNoAbstainType;
    changedFields.add('isYesNoAbstainType');
  }

  @action
  void setIsYesNoType(bool isYesNoType) {
    this.isYesNoType = isYesNoType;
    changedFields.add('isYesNoType');
  }

  @action
  void setStatus(EdemokraciaVoteStatus status) {
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
  void setDebate(AdminDebateStore debate) {
    this.debate = debate;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminVoteDefinitionStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminVoteDefinitionStore storeToClone) {
    /// Attributes
    if (storeToClone.closeAt != null) {
      setCloseAt(storeToClone.closeAt);
    }
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.isNotRatingType != null) {
      setIsNotRatingType(storeToClone.isNotRatingType);
    }
    if (storeToClone.isNotSelectAnswerType != null) {
      setIsNotSelectAnswerType(storeToClone.isNotSelectAnswerType);
    }
    if (storeToClone.isNotYesNoAbstainType != null) {
      setIsNotYesNoAbstainType(storeToClone.isNotYesNoAbstainType);
    }
    if (storeToClone.isNotYesNoType != null) {
      setIsNotYesNoType(storeToClone.isNotYesNoType);
    }
    if (storeToClone.isRatingType != null) {
      setIsRatingType(storeToClone.isRatingType);
    }
    if (storeToClone.isSelectAnswerType != null) {
      setIsSelectAnswerType(storeToClone.isSelectAnswerType);
    }
    if (storeToClone.isYesNoAbstainType != null) {
      setIsYesNoAbstainType(storeToClone.isYesNoAbstainType);
    }
    if (storeToClone.isYesNoType != null) {
      setIsYesNoType(storeToClone.isYesNoType);
    }
    if (storeToClone.status != null) {
      setStatus(storeToClone.status);
    }
    if (storeToClone.title != null) {
      setTitle(storeToClone.title);
    }

    /// Relations
    if (storeToClone.debate != null) {
      setDebate(AdminDebateStore.clone(storeToClone.debate));
    }
  }

  @action
  void updateWith(AdminVoteDefinitionStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    closeAt = storeToClone.closeAt;
    created = storeToClone.created;
    description = storeToClone.description;
    isNotRatingType = storeToClone.isNotRatingType;
    isNotSelectAnswerType = storeToClone.isNotSelectAnswerType;
    isNotYesNoAbstainType = storeToClone.isNotYesNoAbstainType;
    isNotYesNoType = storeToClone.isNotYesNoType;
    isRatingType = storeToClone.isRatingType;
    isSelectAnswerType = storeToClone.isSelectAnswerType;
    isYesNoAbstainType = storeToClone.isYesNoAbstainType;
    isYesNoType = storeToClone.isYesNoType;
    status = storeToClone.status;
    title = storeToClone.title;

    /// Relations
    if (storeToClone.debate != null) {
      debate = AdminDebateStore.clone(storeToClone.debate);
    } else {
      debate = null;
    }

    changedFields.clear();
  }
}
