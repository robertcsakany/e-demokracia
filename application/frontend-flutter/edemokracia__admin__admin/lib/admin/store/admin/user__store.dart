//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminUserStore extends _AdminUserStore with _$AdminUserStore {
  AdminUserStore() : super();

  AdminUserStore.clone(AdminUserStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminUserStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminUserStore();

  _AdminUserStore.clone(AdminUserStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    created = storeToClone.created;
    email = storeToClone.email;
    firstName = storeToClone.firstName;
    isAdmin = storeToClone.isAdmin;
    lastName = storeToClone.lastName;
    phone = storeToClone.phone;
    representation = storeToClone.representation;
    userName = storeToClone.userName;

    // Relations
    if (storeToClone.activityCities != null) {
      activityCities = ObservableList.of(storeToClone.activityCities);
    } else {
      activityCities = ObservableList.of([]);
    }
    if (storeToClone.activityCounties != null) {
      activityCounties = ObservableList.of(storeToClone.activityCounties);
    } else {
      activityCounties = ObservableList.of([]);
    }
    if (storeToClone.activityDistricts != null) {
      activityDistricts = ObservableList.of(storeToClone.activityDistricts);
    } else {
      activityDistricts = ObservableList.of([]);
    }
    if (storeToClone.residentCity != null) {
      residentCity = AdminCityStore.clone(storeToClone.residentCity);
    } else {
      residentCity = null;
    }
    if (storeToClone.residentCounty != null) {
      residentCounty = AdminCountyStore.clone(storeToClone.residentCounty);
    } else {
      residentCounty = null;
    }
    if (storeToClone.residentDistrict != null) {
      residentDistrict = AdminDistrictStore.clone(storeToClone.residentDistrict);
    } else {
      residentDistrict = null;
    }
    if (storeToClone.votes != null) {
      votes = ObservableList.of(storeToClone.votes);
    } else {
      votes = ObservableList.of([]);
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
  String email;
  @observable
  String firstName;
  @observable
  bool isAdmin = false;
  @observable
  String lastName;
  @observable
  String phone;
  @observable
  String representation;
  @observable
  String userName;

  // Relations

  @observable
  var activityCities = ObservableList<AdminCityStore>();

  @observable
  var activityCounties = ObservableList<AdminCountyStore>();

  @observable
  var activityDistricts = ObservableList<AdminDistrictStore>();

  @observable
  AdminCityStore residentCity;

  @observable
  AdminCountyStore residentCounty;

  @observable
  AdminDistrictStore residentDistrict;

  @observable
  var votes = ObservableList<AdminSimpleVoteStore>();

  // Attributes
  @action
  void setCreated(DateTime created) {
    this.created = created;
    changedFields.add('created');
  }

  @action
  void setEmail(String email) {
    this.email = email;
    changedFields.add('email');
  }

  @action
  void setFirstName(String firstName) {
    this.firstName = firstName;
    changedFields.add('firstName');
  }

  @action
  void setIsAdmin(bool isAdmin) {
    this.isAdmin = isAdmin;
    changedFields.add('isAdmin');
  }

  @action
  void setLastName(String lastName) {
    this.lastName = lastName;
    changedFields.add('lastName');
  }

  @action
  void setPhone(String phone) {
    this.phone = phone;
    changedFields.add('phone');
  }

  @action
  void setRepresentation(String representation) {
    this.representation = representation;
    changedFields.add('representation');
  }

  @action
  void setUserName(String userName) {
    this.userName = userName;
    changedFields.add('userName');
  }

  // Relations
  @action
  void addAllActivityCities(List<AdminCityStore> activityCities) {
    this.activityCities.addAll(activityCities);
    changedFields.add('activityCities');
  }

  @action
  void setActivityCities(List<AdminCityStore> activityCities) {
    this.activityCities.clear();
    this.activityCities.addAll(activityCities);
    changedFields.add('activityCities');
  }

  @action
  void removeActivityCities(AdminCityStore activityCities) {
    this.activityCities.remove(activityCities);
    changedFields.add('activityCities');
  }

  @action
  void addAllActivityCounties(List<AdminCountyStore> activityCounties) {
    this.activityCounties.addAll(activityCounties);
    changedFields.add('activityCounties');
  }

  @action
  void setActivityCounties(List<AdminCountyStore> activityCounties) {
    this.activityCounties.clear();
    this.activityCounties.addAll(activityCounties);
    changedFields.add('activityCounties');
  }

  @action
  void removeActivityCounties(AdminCountyStore activityCounties) {
    this.activityCounties.remove(activityCounties);
    changedFields.add('activityCounties');
  }

  @action
  void addAllActivityDistricts(List<AdminDistrictStore> activityDistricts) {
    this.activityDistricts.addAll(activityDistricts);
    changedFields.add('activityDistricts');
  }

  @action
  void setActivityDistricts(List<AdminDistrictStore> activityDistricts) {
    this.activityDistricts.clear();
    this.activityDistricts.addAll(activityDistricts);
    changedFields.add('activityDistricts');
  }

  @action
  void removeActivityDistricts(AdminDistrictStore activityDistricts) {
    this.activityDistricts.remove(activityDistricts);
    changedFields.add('activityDistricts');
  }

  @action
  void setResidentCity(AdminCityStore residentCity) {
    this.residentCity = residentCity;
    changedFields.add('residentCity');
  }

  @action
  void setResidentCounty(AdminCountyStore residentCounty) {
    this.residentCounty = residentCounty;
    changedFields.add('residentCounty');
  }

  @action
  void setResidentDistrict(AdminDistrictStore residentDistrict) {
    this.residentDistrict = residentDistrict;
    changedFields.add('residentDistrict');
  }

  @action
  void addAllVotes(List<AdminSimpleVoteStore> votes) {
    this.votes.addAll(votes);
  }

  @action
  void setVotes(List<AdminSimpleVoteStore> votes) {
    this.votes.clear();
    this.votes.addAll(votes);
  }

  @action
  void removeVotes(AdminSimpleVoteStore votes) {
    this.votes.remove(votes);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminUserStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminUserStore storeToClone) {
    /// Attributes
    if (storeToClone.created != null) {
      setCreated(storeToClone.created);
    }
    if (storeToClone.email != null) {
      setEmail(storeToClone.email);
    }
    if (storeToClone.firstName != null) {
      setFirstName(storeToClone.firstName);
    }
    if (storeToClone.isAdmin != null) {
      setIsAdmin(storeToClone.isAdmin);
    }
    if (storeToClone.lastName != null) {
      setLastName(storeToClone.lastName);
    }
    if (storeToClone.phone != null) {
      setPhone(storeToClone.phone);
    }
    if (storeToClone.representation != null) {
      setRepresentation(storeToClone.representation);
    }
    if (storeToClone.userName != null) {
      setUserName(storeToClone.userName);
    }

    /// Relations
    if (storeToClone.activityCities != null) {
      setActivityCities(ObservableList.of(storeToClone.activityCities));
    } else {
      setActivityCities(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.activityCounties != null) {
      setActivityCounties(ObservableList.of(storeToClone.activityCounties));
    } else {
      setActivityCounties(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.activityDistricts != null) {
      setActivityDistricts(ObservableList.of(storeToClone.activityDistricts));
    } else {
      setActivityDistricts(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.residentCity != null) {
      setResidentCity(AdminCityStore.clone(storeToClone.residentCity));
    }
    if (storeToClone.residentCounty != null) {
      setResidentCounty(AdminCountyStore.clone(storeToClone.residentCounty));
    }
    if (storeToClone.residentDistrict != null) {
      setResidentDistrict(AdminDistrictStore.clone(storeToClone.residentDistrict));
    }
    if (storeToClone.votes != null) {
      setVotes(ObservableList.of(storeToClone.votes));
    } else {
      setVotes(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(AdminUserStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    created = storeToClone.created;
    email = storeToClone.email;
    firstName = storeToClone.firstName;
    isAdmin = storeToClone.isAdmin;
    lastName = storeToClone.lastName;
    phone = storeToClone.phone;
    representation = storeToClone.representation;
    userName = storeToClone.userName;

    /// Relations
    if (storeToClone.activityCities != null) {
      activityCities = ObservableList.of(storeToClone.activityCities);
    } else {
      activityCities = ObservableList.of([]);
    }
    if (storeToClone.activityCounties != null) {
      activityCounties = ObservableList.of(storeToClone.activityCounties);
    } else {
      activityCounties = ObservableList.of([]);
    }
    if (storeToClone.activityDistricts != null) {
      activityDistricts = ObservableList.of(storeToClone.activityDistricts);
    } else {
      activityDistricts = ObservableList.of([]);
    }
    if (storeToClone.residentCity != null) {
      residentCity = AdminCityStore.clone(storeToClone.residentCity);
    } else {
      residentCity = null;
    }
    if (storeToClone.residentCounty != null) {
      residentCounty = AdminCountyStore.clone(storeToClone.residentCounty);
    } else {
      residentCounty = null;
    }
    if (storeToClone.residentDistrict != null) {
      residentDistrict = AdminDistrictStore.clone(storeToClone.residentDistrict);
    } else {
      residentDistrict = null;
    }
    if (storeToClone.votes != null) {
      votes = ObservableList.of(storeToClone.votes);
    } else {
      votes = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
