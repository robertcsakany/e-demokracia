//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class CountyStore extends _CountyStore with _$CountyStore {
  CountyStore() : super();

  CountyStore.clone(CountyStore storeToClone) : super.clone(storeToClone);
}

abstract class _CountyStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _CountyStore();

  _CountyStore.clone(CountyStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    name = storeToClone.name;

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

  // Relations

  @observable
  var cities = ObservableList<CityStore>();

  // Attributes
  @action
  void setName(String name) {
    this.name = name;
    changedFields.add('name');
  }

  // Relations
  @action
  void addAllCities(List<CityStore> cities) {
    this.cities.addAll(cities);
    changedFields.add('cities');
  }

  @action
  void setCities(List<CityStore> cities) {
    this.cities.clear();
    this.cities.addAll(cities);
    changedFields.add('cities');
  }

  @action
  void removeCities(CityStore cities) {
    this.cities.remove(cities);
    changedFields.add('cities');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _CountyStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(CountyStore storeToClone) {
    /// Attributes
    if (storeToClone.name != null) {
      setName(storeToClone.name);
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
  void updateWith(CountyStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    name = storeToClone.name;

    /// Relations
    if (storeToClone.cities != null) {
      cities = ObservableList.of(storeToClone.cities);
    } else {
      cities = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
