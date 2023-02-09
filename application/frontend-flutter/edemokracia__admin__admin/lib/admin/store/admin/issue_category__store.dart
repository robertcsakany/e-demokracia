//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminIssueCategoryStore extends _AdminIssueCategoryStore with _$AdminIssueCategoryStore {
  AdminIssueCategoryStore() : super();

  AdminIssueCategoryStore.clone(AdminIssueCategoryStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminIssueCategoryStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminIssueCategoryStore();

  _AdminIssueCategoryStore.clone(AdminIssueCategoryStore storeToClone) {
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
    if (storeToClone.owner != null) {
      owner = AdminUserStore.clone(storeToClone.owner);
    } else {
      owner = null;
    }
    if (storeToClone.subcategories != null) {
      subcategories = ObservableList.of(storeToClone.subcategories);
    } else {
      subcategories = ObservableList.of([]);
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
  String description;
  @observable
  String title;

  // Relations

  @observable
  AdminUserStore owner;

  @observable
  var subcategories = ObservableList<AdminIssueCategoryStore>();

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
  @action
  void setOwner(AdminUserStore owner) {
    this.owner = owner;
    changedFields.add('owner');
  }

  @action
  void addAllSubcategories(List<AdminIssueCategoryStore> subcategories) {
    this.subcategories.addAll(subcategories);
    changedFields.add('subcategories');
  }

  @action
  void setSubcategories(List<AdminIssueCategoryStore> subcategories) {
    this.subcategories.clear();
    this.subcategories.addAll(subcategories);
    changedFields.add('subcategories');
  }

  @action
  void removeSubcategories(AdminIssueCategoryStore subcategories) {
    this.subcategories.remove(subcategories);
    changedFields.add('subcategories');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminIssueCategoryStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminIssueCategoryStore storeToClone) {
    /// Attributes
    if (storeToClone.description != null) {
      setDescription(storeToClone.description);
    }
    if (storeToClone.title != null) {
      setTitle(storeToClone.title);
    }

    /// Relations
    if (storeToClone.owner != null) {
      setOwner(AdminUserStore.clone(storeToClone.owner));
    }
    if (storeToClone.subcategories != null) {
      setSubcategories(ObservableList.of(storeToClone.subcategories));
    } else {
      setSubcategories(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(AdminIssueCategoryStore storeToClone) {
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
    if (storeToClone.owner != null) {
      owner = AdminUserStore.clone(storeToClone.owner);
    } else {
      owner = null;
    }
    if (storeToClone.subcategories != null) {
      subcategories = ObservableList.of(storeToClone.subcategories);
    } else {
      subcategories = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
