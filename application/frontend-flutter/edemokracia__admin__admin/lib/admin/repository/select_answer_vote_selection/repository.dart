//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryClassPath(#application.actor,#self)
// Template name: lib/repositories/repository_class.dart.hbs
// Application: edemokracia::admin::Admin
//
//   Class: edemokracia::SelectAnswerVoteSelection behaviours:  REFRESH  TEMPLATE

part of admin.repository;

class SelectAnswerVoteSelectionRepository {
  /// TEMPLATE (Default)
  Future<SelectAnswerVoteSelectionStore> edemokraciaSelectAnswerVoteSelectionDefault() async {
    final response = await locator<JudoApiClient>().edemokraciaDefaultTransferobjecttypesSelectAnswerVoteSelectionGetTemplateSelectAnswerVoteSelection();
    return AdminAdminRepositoryStoreMapper.createSelectAnswerVoteSelectionStoreFromEdemokraciaSelectAnswerVoteSelection(response);
  }

  /// REFRESH (Reload with Signed ID)
  Future<SelectAnswerVoteSelectionStore> edemokraciaSelectAnswerVoteSelectionGetByIdentifier(SelectAnswerVoteSelectionStore target, {String mask}) async {
    var queryCustomizer = EdemokraciaExtensionQueryCustomizerSelectAnswerVoteSelection();
    if (mask != null) {
      queryCustomizer.mask = mask;
    }
    final selectAnswerVoteSelectionResponse = await locator<JudoApiClient>()
        .edemokraciaDefaultTransferobjecttypesSelectAnswerVoteSelectionRefreshInstanceEdemokraciaSelectAnswerVoteSelection(target.internal__signedIdentifier,
            input: queryCustomizer.toJson());
    return AdminAdminRepositoryStoreMapper.createSelectAnswerVoteSelectionStoreFromEdemokraciaSelectAnswerVoteSelection(selectAnswerVoteSelectionResponse);
  }
}
