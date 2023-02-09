//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminCityStore extends _AdminCityStore with _$AdminCityStore {
  AdminCityStore() : super();

  AdminCityStore.clone(AdminCityStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminCityStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminCityStore();

  _AdminCityStore.clone(AdminCityStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    county = storeToClone.county;
    name = storeToClone.name;
    representation = storeToClone.representation;

    // Relations
    if (storeToClone.districts != null) {
      districts = ObservableList.of(storeToClone.districts);
    } else {
      districts = ObservableList.of([]);
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
  String county;
  @observable
  String name;
  @observable
  String representation;

  // Relations

  @observable
  var districts = ObservableList<AdminDistrictStore>();

  // Attributes
  @action
  void setCounty(String county) {
    this.county = county;
    changedFields.add('county');
  }

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
  void addAllDistricts(List<AdminDistrictStore> districts) {
    this.districts.addAll(districts);
    changedFields.add('districts');
  }

  @action
  void setDistricts(List<AdminDistrictStore> districts) {
    this.districts.clear();
    this.districts.addAll(districts);
    changedFields.add('districts');
  }

  @action
  void removeDistricts(AdminDistrictStore districts) {
    this.districts.remove(districts);
    changedFields.add('districts');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminCityStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminCityStore storeToClone) {
    /// Attributes
    if (storeToClone.county != null) {
      setCounty(storeToClone.county);
    }
    if (storeToClone.name != null) {
      setName(storeToClone.name);
    }
    if (storeToClone.representation != null) {
      setRepresentation(storeToClone.representation);
    }

    /// Relations
    if (storeToClone.districts != null) {
      setDistricts(ObservableList.of(storeToClone.districts));
    } else {
      setDistricts(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(AdminCityStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    county = storeToClone.county;
    name = storeToClone.name;
    representation = storeToClone.representation;

    /// Relations
    if (storeToClone.districts != null) {
      districts = ObservableList.of(storeToClone.districts);
    } else {
      districts = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
