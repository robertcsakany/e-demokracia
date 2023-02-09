//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: debates
//   Relation owner: edemokracia::admin::Admin
//   Relation target: edemokracia::admin::Debate
//   Access: true
//
//    Relation: edemokracia::admin::Admin.debates (edemokracia::admin::Debate) behaviours:  LIST  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE
//    TransferObject: edemokracia::admin::Debate behaviours:  REFRESH  UPDATE  VALIDATE_UPDATE  DELETE

part of admin.repository;

class AdminAdminRepositoryForDebates {
  /// GET Collection (Access)
  Future<List<AdminDebateStore>> edemokraciaAdminAdminDebatesList(
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, AdminDebateStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionAdminQueryCustomizerDebate();
    var seek = EdemokraciaExtensionAdminSeekDebate();

    var orderBy = EdemokraciaExtensionAdminOrderingTypeDebate();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute = EdemokraciaExtensionAdminOrderingTypeDebateAttributeEnum.values
          .firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;
        if (element.attributeName.uncapitalize() == 'closeAt') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.closeAt.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'status') {
          var filter = repository_filters[filter_key.DebateStatus](element);
          queryCustomizer.status.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesAdminDebate(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> debateListResponse = await locator<JudoApiClient>().edemokraciaAdminAdminListDebates(null, input: queryCustomizer.toJson());
    return debateListResponse.map<AdminDebateStore>(AdminAdminRepositoryStoreMapper.createAdminDebateStoreFromEdemokraciaAdminDebate).toList();
  }

  /// DELETE (Access)
  Future<void> edemokraciaAdminAdminDebatesDelete(AdminDebateStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminDebateDelete(target);
  }

  /// UPDATE  (Access)
  Future<AdminDebateStore> edemokraciaAdminAdminDebatesUpdate(AdminDebateStore target) async {
    return await locator<AdminAdminRepository>().edemokraciaAdminDebateUpdate(target);
  }

  // Target relations

}
