//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminCreateUserInputStore extends _AdminCreateUserInputStore with _$AdminCreateUserInputStore {
  AdminCreateUserInputStore() : super();

  AdminCreateUserInputStore.clone(AdminCreateUserInputStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminCreateUserInputStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminCreateUserInputStore();

  _AdminCreateUserInputStore.clone(AdminCreateUserInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    email = storeToClone.email;
    firstName = storeToClone.firstName;
    hasAdminAccess = storeToClone.hasAdminAccess;
    lastName = storeToClone.lastName;
    phone = storeToClone.phone;
    userName = storeToClone.userName;

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
  String email;
  @observable
  String firstName;
  @observable
  bool hasAdminAccess = false;
  @observable
  String lastName;
  @observable
  String phone;
  @observable
  String userName;

  // Relations

  // Attributes
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
  void setHasAdminAccess(bool hasAdminAccess) {
    this.hasAdminAccess = hasAdminAccess;
    changedFields.add('hasAdminAccess');
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
  void setUserName(String userName) {
    this.userName = userName;
    changedFields.add('userName');
  }

  // Relations

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminCreateUserInputStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminCreateUserInputStore storeToClone) {
    /// Attributes
    if (storeToClone.email != null) {
      setEmail(storeToClone.email);
    }
    if (storeToClone.firstName != null) {
      setFirstName(storeToClone.firstName);
    }
    if (storeToClone.hasAdminAccess != null) {
      setHasAdminAccess(storeToClone.hasAdminAccess);
    }
    if (storeToClone.lastName != null) {
      setLastName(storeToClone.lastName);
    }
    if (storeToClone.phone != null) {
      setPhone(storeToClone.phone);
    }
    if (storeToClone.userName != null) {
      setUserName(storeToClone.userName);
    }

    /// Relations
  }

  @action
  void updateWith(AdminCreateUserInputStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    email = storeToClone.email;
    firstName = storeToClone.firstName;
    hasAdminAccess = storeToClone.hasAdminAccess;
    lastName = storeToClone.lastName;
    phone = storeToClone.phone;
    userName = storeToClone.userName;

    /// Relations

    changedFields.clear();
  }
}
