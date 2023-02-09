//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryRelationPath(#application.actor,#self)
// Template name: lib/repositories/repository_relation.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Relation: cons
//   Relation owner: edemokracia::Debate
//   Relation target: edemokracia::Con
//   Access: false
//
//    Relation: edemokracia::Debate.cons (edemokracia::Con) behaviours:  LIST  REFRESH
//    TransferObject: edemokracia::Con behaviours:  REFRESH

part of admin.repository;

class DebateRepositoryForCons {
  /// GET Collection
  Future<List<ConStore>> edemokraciaDebateConsList(DebateStore owner,
      {String sortColumn, bool sortAscending, List<FilterStore> filterStoreList, int queryLimit, String mask, ConStore lastItem, bool reverse}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerCon();
    var seek = EdemokraciaExtensionSeekCon();

    var orderBy = EdemokraciaExtensionOrderingTypeCon();

    // Sort Attributes
    if (sortColumn != null) {
      orderBy.attribute =
          EdemokraciaExtensionOrderingTypeConAttributeEnum.values.firstWhere((element) => element.toString().split('.').last == sortColumn, orElse: () => null);

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
      seek.lastItem = AdminAdminRepositoryStoreMapper.createEdemokraciaOptionalTransferobjecttypesCon(lastItem, keepAllFields: true);
      seek.reverse = reverse;
    }

    seek.limit = queryLimit ?? 5;
    queryCustomizer.seek = seek;

    if (mask != null) {
      queryCustomizer.mask = mask;
    }

    List<dynamic> conListResponse = await locator<JudoApiClient>().edemokraciaDebateListCons(owner.internal__signedIdentifier, input: queryCustomizer.toJson());
    return conListResponse.map<ConStore>(AdminAdminRepositoryStoreMapper.createConStoreFromEdemokraciaCon).toList();
  }

  // Target relations

}
