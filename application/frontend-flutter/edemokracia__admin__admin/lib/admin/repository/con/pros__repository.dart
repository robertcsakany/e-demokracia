//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: pros
//   Relation owner: edemokracia::Con
//   Relation target: edemokracia::Pro
//   Access: false
//
//    Relation: edemokracia::Con.pros (edemokracia::Pro) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::Pro behaviours:  REFRESH

part of admin.repository;

class ConRepositoryForPros {
  /// GET Collection
  Future<List<ProStore>> edemokraciaConProsList(ConStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, ProStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerPro();
    var seek = EdemokraciaExtensionSeekPro();

    var orderBy = EdemokraciaExtensionOrderingTypePro();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute =
          EdemokraciaExtensionOrderingTypeProAttributeEnum.values.firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

      if (orderBy.attribute != null) {
        orderBy.descending = sortAscending == null ? false : !sortAscending;
        queryCustomizer.orderBy = [orderBy];
      }
    }

    if (filterStoreList != null && filterStoreList.isNotEmpty) {
      filterStoreList.forEach((element) {
        if (element.filterValue == null) return;

        if (element.attributeName.uncapitalize() == 'created') {
          var filter = repository_filters[filter_key.Timestamp](element);
          queryCustomizer.created.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'description') {
          var filter = repository_filters[filter_key.Text](element);
          queryCustomizer.description.add(filter);
        }
        if (element.attributeName.uncapitalize() == 'title') {
          var filter = repository_filters[filter_key.String](element);
          queryCustomizer.title.add(filter);
        }
      });
    }

    if (reverse != null && lastItem != null) {
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesPro(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> proListResponse = await locator<JudoApiClient>().edemokraciaConListPros(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return proListResponse.map<ProStore>(AdminAdminRepositoryStoreMapper.createProStoreFromEdemokraciaPro).toList();
  }

  // Target relations

}
