//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: dashboardhome
//   Relation owner: edemokracia::admin::Admin
//   Relation target: edemokracia::admin::Dashboard
//   Access: true
//
//    Relation: edemokracia::admin::Admin.dashboardhome (edemokracia::admin::Dashboard) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::admin::Dashboard behaviours:  REFRESH

part of admin.repository;

class AdminAdminRepositoryForDashboardhome {
  /// GET SINGLE (Access)
  Future<AdminDashboardStore> edemokraciaAdminAdminDashboardhomeGet({String mask}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDashboard();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    final dashboardResponse = await locator<JudoApiClient>().edemokraciaAdminAdminListDashboardhome(null, input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createAdminDashboardStoreFromEdemokraciaAdminDashboard(dashboardResponse);
  }

  // Target relations

}
