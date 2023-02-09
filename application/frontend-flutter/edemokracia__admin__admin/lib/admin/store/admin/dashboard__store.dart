//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeClassPath(#self.owner.actor,#self)
// Template name: lib/store/model_store.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

class AdminDashboardStore extends _AdminDashboardStore with _$AdminDashboardStore {
  AdminDashboardStore() : super();

  AdminDashboardStore.clone(AdminDashboardStore storeToClone) : super.clone(storeToClone);
}

abstract class _AdminDashboardStore with Store {
  Set<String> changedFields = Set();
  bool internal__isOriginEmpty;

  _AdminDashboardStore();

  _AdminDashboardStore.clone(AdminDashboardStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    //Attributes
    welcome = storeToClone.welcome;

    // Relations
    if (storeToClone.debates != null) {
      debates = ObservableList.of(storeToClone.debates);
    } else {
      debates = ObservableList.of([]);
    }
    if (storeToClone.issues != null) {
      issues = ObservableList.of(storeToClone.issues);
    } else {
      issues = ObservableList.of([]);
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
  String welcome;

  // Relations

  @observable
  var debates = ObservableList<AdminDebateStore>();

  @observable
  var issues = ObservableList<AdminIssueStore>();

  // Attributes
  @action
  void setWelcome(String welcome) {
    this.welcome = welcome;
    changedFields.add('welcome');
  }

  // Relations
  @action
  void addAllDebates(List<AdminDebateStore> debates) {
    this.debates.addAll(debates);
    changedFields.add('debates');
  }

  @action
  void setDebates(List<AdminDebateStore> debates) {
    this.debates.clear();
    this.debates.addAll(debates);
    changedFields.add('debates');
  }

  @action
  void removeDebates(AdminDebateStore debates) {
    this.debates.remove(debates);
    changedFields.add('debates');
  }

  @action
  void addAllIssues(List<AdminIssueStore> issues) {
    this.issues.addAll(issues);
    changedFields.add('issues');
  }

  @action
  void setIssues(List<AdminIssueStore> issues) {
    this.issues.clear();
    this.issues.addAll(issues);
    changedFields.add('issues');
  }

  @action
  void removeIssues(AdminIssueStore issues) {
    this.issues.remove(issues);
    changedFields.add('issues');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _AdminDashboardStore &&
          runtimeType == other.runtimeType &&
          ((internal__signedIdentifier == other.internal__signedIdentifier && internal__signedIdentifier != null && other.internal__signedIdentifier != null) ||
              (internal__identifier == other.internal__identifier && internal__identifier != null && other.internal__identifier != null) ||
              (internal__referenceIdentifier == other.internal__referenceIdentifier &&
                  internal__referenceIdentifier != null &&
                  other.internal__referenceIdentifier != null));

  @override
  int get hashCode => hash3(internal__signedIdentifier, internal__identifier, internal__referenceIdentifier);

  @action
  void initWithDefaults(AdminDashboardStore storeToClone) {
    /// Attributes
    if (storeToClone.welcome != null) {
      setWelcome(storeToClone.welcome);
    }

    /// Relations
    if (storeToClone.debates != null) {
      setDebates(ObservableList.of(storeToClone.debates));
    } else {
      setDebates(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
    if (storeToClone.issues != null) {
      setIssues(ObservableList.of(storeToClone.issues));
    } else {
      setIssues(ObservableList.of([]));

      /// Ensure List is initialized even if there is no source.
    }
  }

  @action
  void updateWith(AdminDashboardStore storeToClone) {
    internal__identifier = storeToClone.internal__identifier;
    internal__signedIdentifier = storeToClone.internal__signedIdentifier;
    internal__entityType = storeToClone.internal__entityType;
    internal__referenceIdentifier = storeToClone.internal__referenceIdentifier;
    internal__updatable = storeToClone.internal__updatable ?? true;
    internal__deletable = storeToClone.internal__deletable ?? true;

    /// Attributes
    welcome = storeToClone.welcome;

    /// Relations
    if (storeToClone.debates != null) {
      debates = ObservableList.of(storeToClone.debates);
    } else {
      debates = ObservableList.of([]);
    }
    if (storeToClone.issues != null) {
      issues = ObservableList.of(storeToClone.issues);
    } else {
      issues = ObservableList.of([]);
    }

    changedFields.clear();
  }
}
