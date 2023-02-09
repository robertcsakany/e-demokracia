//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminCountyStore extends _AdminCountyStore with _$AdminCountyStore {
  AdminCountyStore() : super();

  AdminCountyStore.clone(AdminCountyStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminCountyStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminCountyStore();

  _AdminCountyStore.clone(AdminCountyStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    name = storeToClone.name;
    representation = storeToClone.representation;

    // Relations
    if (storeToClone.cities != null) {
      cities = ObservableList.of(storeToClone.cities);
    } else {
      cities = ObservableList.of([]);
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
  String name;
  @observable
  String representation;

  // Relations

  @observable
  var cities = ObservableList<AdminCityStore>();

  // Attributes
  @action
  void setName(String name) {
    this.name = name;
    changedFields.add('name');
  }

  @action
  void setRepresentation(String representation) {
    this.representation = representation;
    changedFields.add('representation');
  }

  // Relations
  @action
  void addAllCities(List<AdminCityStore> cities) {
    this.cities.addAll(cities);
    changedFields.add('cities');
  }

  @action
  void setCities(List<AdminCityStore> cities) {
    this.cities.clear();
    this.cities.addAll(cities);
    changedFields.add('cities');
  }

  @action
  void removeCities(AdminCityStore cities) {
    this.cities.remove(cities);
    changedFields.add('cities');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminCountyStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminCountyStore storeToClone) {
    /// Attributes
    if (storeToClone.name != null) {
      setName(storeToClone.name);
    }
    if (storeToClone.representation != null) {
      setRepresentation(storeToClone.representation);
    }

    /// Relations
    if (storeToClone.cities != null) {
      setCities(ObservableList.of(storeToClone.cities));
    } else {
      setCities(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(AdminCountyStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    name = storeToClone.name;
    representation = storeToClone.representation;

    /// Relations
    if (storeToClone.cities != null) {
      cities = ObservableList.of(storeToClone.cities);
    } else {
      cities = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
