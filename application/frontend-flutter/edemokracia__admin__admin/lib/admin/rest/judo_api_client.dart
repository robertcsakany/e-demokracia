part of admin.rest;

class JudoApiClient {
  BaseOptions _baseOptions;
  Dio _dio;

  JudoApiClient({BaseOptions baseOptions}) {
    _baseOptions = baseOptions;
    _dio = Dio(_baseOptions);
  }

  Dio getDio() {
    return _dio;
  }

  Options _createOptions(String method, Options options, String xJudoSignedIdentifier) {
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    headerParams['Accept'] = 'application/json';

    if (xJudoSignedIdentifier != null) {
      headerParams['X-Judo-SignedIdentifier'] = xJudoSignedIdentifier;
    }

    final opt = options ?? Options();
    opt.headers = headerParams;
    opt.method = method;
    opt.responseType = ResponseType.plain;
    opt.receiveDataWhenStatusError = true;

    return opt;
  }

  Future<Response<dynamic>> _runRequest(String path, dynamic input, Options opt) async {
    var response;

    try {
      response = await getDio().request<String>(path, data: input, options: opt);
    } catch (error) {
      DioError errorTyped = error;
      if (errorTyped.response != null) {
        throw ApiException(errorTyped.response.statusCode, errorTyped.response.data);
      }
      throw ApiException(418, errorTyped.error.cause);
    }

    return response;
  }

  Future<Response<dynamic>> dioCommand(String path, String xJudoSignedIdentifier, dynamic input, Options options) async {
    final opt = _createOptions('POST', options, xJudoSignedIdentifier);
    return _runRequest(path, input, opt);
  }

  Future<Response<dynamic>> dioQuery(String path, Options options) async {
    final opt = _createOptions('GET', options, null);
    return _runRequest(path, null, opt);
  }

  Future<JudoMetaData> edemokraciaAdminAdminMetadata({Options options}) async {
    final path = '/admin/Admin/~meta';

    final response = await dioQuery(path, options);

    if (response.data != null && response.data != '') {
      return JudoMetaData.fromJson(json.decode(response.data));
    }
  }

  Future<dynamic> edemokraciaAdminAdminPrincipalUser({Options options}) async {
    final path = '/admin/Admin/~principal';

    final response = await dioQuery(path, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesCityRefreshInstanceEdemokraciaCity(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/City/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaCloseDebateInputGetTemplateCloseDebateInput({Options options}) async {
    final path = '/CloseDebateInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesCommentRefreshInstanceEdemokraciaComment(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/Comment/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesCommentVoteDown(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Comment/voteDown';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesCommentVoteUp(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Comment/voteUp';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesConRefreshInstanceEdemokraciaCon(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Con/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesConCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Con/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesConCreateSubArgument(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Con/createSubArgument';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesConVoteDown(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Con/voteDown';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesConVoteUp(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Con/voteUp';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesCountyRefreshInstanceEdemokraciaCounty(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/County/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaCreateArgumentInputGetTemplateCreateArgumentInput({Options options}) async {
    final path = '/CreateArgumentInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaCreateCommentInputGetTemplateCreateCommentInput({Options options}) async {
    final path = '/CreateCommentInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaCreateDebateInputGetTemplateCreateDebateInput({Options options}) async {
    final path = '/CreateDebateInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesDebateRefreshInstanceEdemokraciaDebate(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/Debate/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesDebateCloseDebate(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Debate/closeDebate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesDebateCreateArgument(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Debate/createArgument';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesDebateCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Debate/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesDistrictRefreshInstanceEdemokraciaDistrict(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/District/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesIssueRefreshInstanceEdemokraciaIssue(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/Issue/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesIssueCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Issue/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesIssueCreateDebate(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Issue/createDebate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesIssueAttachmentRefreshInstanceEdemokraciaIssueAttachment(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/IssueAttachment/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesIssueCategoryRefreshInstanceEdemokraciaIssueCategory(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/IssueCategory/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesProRefreshInstanceEdemokraciaPro(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Pro/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesProCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Pro/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesProCreateSubArgument(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Pro/createSubArgument';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesProVoteDown(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Pro/voteDown';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesProVoteUp(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/Pro/voteUp';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaRatingVoteInputGetTemplateRatingVoteInput({Options options}) async {
    final path = '/RatingVoteInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesSelectAnswerVoteSelectionGetTemplateSelectAnswerVoteSelection({Options options}) async {
    final path = '/SelectAnswerVoteSelection/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesSelectAnswerVoteSelectionRefreshInstanceEdemokraciaSelectAnswerVoteSelection(
      String xJudoSignedIdentifier,
      {dynamic input,
      Options options}) async {
    final path = '/SelectAnswerVoteSelection/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesSimpleVoteRefreshInstanceEdemokraciaSimpleVote(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/SimpleVote/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesUserRefreshInstanceEdemokraciaUser(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/User/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteDefinitionRefreshInstanceEdemokraciaVoteDefinition(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/VoteDefinition/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesVoteDefinitionDeleteInstanceEdemokraciaVoteDefinition(String xJudoSignedIdentifier,
      {Options options}) async {
    final path = '/VoteDefinition/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteDefinitionValidateUpdateInstanceEdemokraciaVoteDefinition(
      String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/VoteDefinition/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteDefinitionUpdateInstanceEdemokraciaVoteDefinition(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/VoteDefinition/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteRating(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/VoteDefinition/voteRating';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteSelectAnswer(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/VoteDefinition/voteSelectAnswer';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaDefaultTransferobjecttypesVoteDefinitionGetRangeInputVoteSelectAnswer({Options options, dynamic input}) async {
    final path = '/VoteDefinition/voteSelectAnswer/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteYesNo(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/VoteDefinition/voteYesNo';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesVoteDefinitionVoteYesNoAbstain(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/VoteDefinition/voteYesNoAbstain';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaVoteDefinitionGetRangeReferenceVoteEntries({Options options, dynamic input}) async {
    final path = '/VoteDefinition/voteEntries/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteEntryGetTemplateVoteEntry({Options options}) async {
    final path = '/VoteEntry/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteEntryRefreshInstanceEdemokraciaVoteEntry(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/VoteEntry/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaDefaultTransferobjecttypesVoteEntryDeleteInstanceEdemokraciaVoteEntry(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/VoteEntry/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteEntryValidateUpdateInstanceEdemokraciaVoteEntry(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/VoteEntry/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDefaultTransferobjecttypesVoteEntryUpdateInstanceEdemokraciaVoteEntry(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/VoteEntry/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaVoteEntryGetRangeReferenceUser({Options options, dynamic input}) async {
    final path = '/VoteEntry/user/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaVoteEntrySetReferenceUser(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/VoteEntry/~update/user/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<List<dynamic>> edemokraciaVoteEntryGetRangeReferenceVoteDefinition({Options options, dynamic input}) async {
    final path = '/VoteEntry/voteDefinition/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaVoteEntrySetReferenceVoteDefinition(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/VoteEntry/~update/voteDefinition/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<dynamic> edemokraciaYesNoAbstainVoteInputGetTemplateYesNoAbstainVoteInput({Options options}) async {
    final path = '/YesNoAbstainVoteInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaYesNoVoteInputGetTemplateYesNoVoteInput({Options options}) async {
    final path = '/YesNoVoteInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminAdminPrincipalUserRefreshInstanceEdemokraciaAdminAdminPrincipalUser(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/admin/AdminPrincipalUser/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCityGetTemplateCity({Options options}) async {
    final path = '/admin/City/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminCityRefreshInstanceEdemokraciaAdminCity(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/City/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminCityDeleteInstanceEdemokraciaAdminCity(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/City/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminCityValidateUpdateInstanceEdemokraciaAdminCity(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/City/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCityUpdateInstanceEdemokraciaAdminCity(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/City/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCommentRefreshInstanceEdemokraciaAdminComment(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Comment/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminCommentDeleteInstanceEdemokraciaAdminComment(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/Comment/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminCommentValidateUpdateInstanceEdemokraciaAdminComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Comment/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCommentUpdateInstanceEdemokraciaAdminComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Comment/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminCommentVoteDown(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Comment/voteDown';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminCommentVoteUp(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Comment/voteUp';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminConRefreshInstanceEdemokraciaAdminCon(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Con/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminConDeleteInstanceEdemokraciaAdminCon(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/Con/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminConValidateUpdateInstanceEdemokraciaAdminCon(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Con/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminConUpdateInstanceEdemokraciaAdminCon(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Con/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminConCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Con/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminConCreateSubArgument(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Con/createSubArgument';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminConVoteDown(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Con/voteDown';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminConVoteUp(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Con/voteUp';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCountyGetTemplateCounty({Options options}) async {
    final path = '/admin/County/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminCountyRefreshInstanceEdemokraciaAdminCounty(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/County/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminCountyDeleteInstanceEdemokraciaAdminCounty(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/County/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminCountyValidateUpdateInstanceEdemokraciaAdminCounty(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/County/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCountyUpdateInstanceEdemokraciaAdminCounty(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/County/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCreateIssueInputGetTemplateCreateIssueInput({Options options}) async {
    final path = '/admin/CreateIssueInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminCreateUserInputGetTemplateCreateUserInput({Options options}) async {
    final path = '/admin/CreateUserInput/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminDashboardRefreshInstanceEdemokraciaAdminDashboard(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Dashboard/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDashboardCreateIssue(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Dashboard/createIssue';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDashboardCreateUser(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Dashboard/createUser';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDebateRefreshInstanceEdemokraciaAdminDebate(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminDebateDeleteInstanceEdemokraciaAdminDebate(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/Debate/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminDebateValidateUpdateInstanceEdemokraciaAdminDebate(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Debate/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDebateUpdateInstanceEdemokraciaAdminDebate(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Debate/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDebateCloseDebate(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Debate/closeDebate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminDebateCreateArgument(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Debate/createArgument';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminDebateCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Debate/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDistrictGetTemplateDistrict({Options options}) async {
    final path = '/admin/District/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminDistrictRefreshInstanceEdemokraciaAdminDistrict(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/District/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminDistrictDeleteInstanceEdemokraciaAdminDistrict(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/District/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminDistrictValidateUpdateInstanceEdemokraciaAdminDistrict(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/District/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDistrictUpdateInstanceEdemokraciaAdminDistrict(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/District/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueRefreshInstanceEdemokraciaAdminIssue(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminIssueDeleteInstanceEdemokraciaAdminIssue(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/Issue/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminIssueValidateUpdateInstanceEdemokraciaAdminIssue(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueUpdateInstanceEdemokraciaAdminIssue(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminIssueCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCreateDebate(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/createDebate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueGetRangeReferenceCategories({Options options, dynamic input}) async {
    final path = '/admin/Issue/categories/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminIssueSetReferenceCategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update/categories/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminIssueAddReferenceCategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update/categories/~add';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminIssueRemoveReferenceCategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update/categories/~remove';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<List<dynamic>> edemokraciaAdminIssueGetRangeReferenceOwner({Options options, dynamic input}) async {
    final path = '/admin/Issue/owner/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminIssueSetReferenceOwner(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update/owner/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminIssueUnsetReferenceOwner(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/Issue/~update/owner/~unset';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminIssueAttachmentGetTemplateIssueAttachment({Options options}) async {
    final path = '/admin/IssueAttachment/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminIssueAttachmentRefreshInstanceEdemokraciaAdminIssueAttachment(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/admin/IssueAttachment/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminIssueAttachmentDeleteInstanceEdemokraciaAdminIssueAttachment(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/IssueAttachment/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminIssueAttachmentValidateUpdateInstanceEdemokraciaAdminIssueAttachment(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/IssueAttachment/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueAttachmentUpdateInstanceEdemokraciaAdminIssueAttachment(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/IssueAttachment/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCategoryGetTemplateIssueCategory({Options options}) async {
    final path = '/admin/IssueCategory/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminIssueCategoryRefreshInstanceEdemokraciaAdminIssueCategory(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/admin/IssueCategory/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminIssueCategoryDeleteInstanceEdemokraciaAdminIssueCategory(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/IssueCategory/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminIssueCategoryValidateUpdateInstanceEdemokraciaAdminIssueCategory(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/IssueCategory/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCategoryUpdateInstanceEdemokraciaAdminIssueCategory(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/IssueCategory/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueCategoryGetRangeReferenceOwner({Options options, dynamic input}) async {
    final path = '/admin/IssueCategory/owner/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminIssueCategorySetReferenceOwner(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/IssueCategory/~update/owner/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminIssueCategoryUnsetReferenceOwner(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/IssueCategory/~update/owner/~unset';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminIssueDebateRefreshInstanceEdemokraciaAdminIssueDebate(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/IssueDebate/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminProRefreshInstanceEdemokraciaAdminPro(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Pro/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminProDeleteInstanceEdemokraciaAdminPro(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/Pro/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminProValidateUpdateInstanceEdemokraciaAdminPro(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminProUpdateInstanceEdemokraciaAdminPro(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminProCreateComment(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/createComment';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminProCreateSubArgument(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/createSubArgument';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminProVoteDown(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/voteDown';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminProVoteUp(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/voteUp';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminSimpleVoteGetTemplateSimpleVote({Options options}) async {
    final path = '/admin/SimpleVote/~template';

    final response = await dioQuery(path, options);

    return json.decode(response.data);
  }

  Future<dynamic> edemokraciaAdminSimpleVoteRefreshInstanceEdemokraciaAdminSimpleVote(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/SimpleVote/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminSimpleVoteDeleteInstanceEdemokraciaAdminSimpleVote(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/SimpleVote/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminSimpleVoteValidateUpdateInstanceEdemokraciaAdminSimpleVote(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/SimpleVote/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminSimpleVoteUpdateInstanceEdemokraciaAdminSimpleVote(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/SimpleVote/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminSimpleVoteGetRangeReferenceUser({Options options, dynamic input}) async {
    final path = '/admin/SimpleVote/user/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminSimpleVoteSetReferenceUser(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/SimpleVote/~update/user/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminSimpleVoteUnsetReferenceUser(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/SimpleVote/~update/user/~unset';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminUserRefreshInstanceEdemokraciaAdminUser(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminUserDeleteInstanceEdemokraciaAdminUser(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/User/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminUserValidateUpdateInstanceEdemokraciaAdminUser(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminUserUpdateInstanceEdemokraciaAdminUser(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceActivityCities({Options options, dynamic input}) async {
    final path = '/admin/User/activityCities/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceActivityCities(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityCities/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserAddReferenceActivityCities(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityCities/~add';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserRemoveReferenceActivityCities(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityCities/~remove';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceActivityCounties({Options options, dynamic input}) async {
    final path = '/admin/User/activityCounties/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceActivityCounties(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityCounties/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserAddReferenceActivityCounties(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityCounties/~add';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserRemoveReferenceActivityCounties(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityCounties/~remove';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceActivityDistricts({Options options, dynamic input}) async {
    final path = '/admin/User/activityDistricts/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceActivityDistricts(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityDistricts/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserAddReferenceActivityDistricts(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityDistricts/~add';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserRemoveReferenceActivityDistricts(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/activityDistricts/~remove';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceResidentCity({Options options, dynamic input}) async {
    final path = '/admin/User/residentCity/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceResidentCity(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/residentCity/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserUnsetReferenceResidentCity(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/User/~update/residentCity/~unset';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceResidentCounty({Options options, dynamic input}) async {
    final path = '/admin/User/residentCounty/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceResidentCounty(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/residentCounty/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserUnsetReferenceResidentCounty(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/User/~update/residentCounty/~unset';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceResidentDistrict({Options options, dynamic input}) async {
    final path = '/admin/User/residentDistrict/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceResidentDistrict(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/residentDistrict/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserUnsetReferenceResidentDistrict(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/User/~update/residentDistrict/~unset';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<List<dynamic>> edemokraciaAdminUserGetRangeReferenceVotes({Options options, dynamic input}) async {
    final path = '/admin/User/votes/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminUserSetReferenceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/votes/~set';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserAddReferenceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/votes/~add';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<void> edemokraciaAdminUserRemoveReferenceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/User/~update/votes/~remove';

    await dioCommand(path, xJudoSignedIdentifier, input, options);
  }

  Future<dynamic> edemokraciaAdminVoteDefinitionRefreshInstanceEdemokraciaAdminVoteDefinition(String xJudoSignedIdentifier,
      {dynamic input, Options options}) async {
    final path = '/admin/VoteDefinition/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminVoteDefinitionDeleteInstanceEdemokraciaAdminVoteDefinition(String xJudoSignedIdentifier, {Options options}) async {
    final path = '/admin/VoteDefinition/~delete';

    await dioCommand(path, xJudoSignedIdentifier, null, options);
  }

  Future<dynamic> edemokraciaAdminVoteDefinitionValidateUpdateInstanceEdemokraciaAdminVoteDefinition(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/VoteDefinition/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminVoteDefinitionUpdateInstanceEdemokraciaAdminVoteDefinition(String xJudoSignedIdentifier, dynamic input,
      {Options options}) async {
    final path = '/admin/VoteDefinition/~update';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminVoteDefinitionVoteRating(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/VoteDefinition/voteRating';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminVoteDefinitionVoteSelectAnswer(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/VoteDefinition/voteSelectAnswer';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminVoteDefinitionGetRangeInputVoteSelectAnswer({Options options, dynamic input}) async {
    final path = '/admin/VoteDefinition/voteSelectAnswer/~range';

    final response = await dioCommand(path, null, input, options);

    return json.decode(response.data);
  }

  Future<void> edemokraciaAdminVoteDefinitionVoteYesNo(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/VoteDefinition/voteYesNo';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<void> edemokraciaAdminVoteDefinitionVoteYesNoAbstain(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/VoteDefinition/voteYesNoAbstain';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaCityListDistricts(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/City/districts/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaCommentListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Comment/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaCommentListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Comment/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaConListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Con/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaConListCons(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Con/cons/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaConListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Con/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaConListPros(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Con/pros/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaConListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Con/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaCountyListCities(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/County/cities/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaDebateListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Debate/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaDebateListCons(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Debate/cons/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDebateListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Debate/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDebateListDebateVote(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Debate/debateVote/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaDebateListIssue(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Debate/issue/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaDebateListPros(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Debate/pros/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaIssueListAttachments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Issue/attachments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaIssueListCategories(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Issue/categories/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaIssueListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Issue/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaIssueListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Issue/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaIssueListDebates(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Issue/debates/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaIssueListOwner(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Issue/owner/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaIssueCategoryListOwner(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/IssueCategory/owner/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaIssueCategoryListSubcategories(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/IssueCategory/subcategories/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaProListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Pro/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaProListCons(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Pro/cons/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaProListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Pro/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaProListPros(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Pro/pros/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaProListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/Pro/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaSimpleVoteListUser(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/SimpleVote/user/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaUserListActivityCities(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/activityCities/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaUserListActivityCounties(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/activityCounties/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaUserListActivityDistricts(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/activityDistricts/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaUserListResidentCity(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/residentCity/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaUserListResidentCounty(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/residentCounty/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaUserListResidentDistrict(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/residentDistrict/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaUserListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/User/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaVoteDefinitionListVoteEntries(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/VoteDefinition/voteEntries/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaVoteEntryListUser(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/VoteEntry/user/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaVoteEntryListVoteDefinition(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/VoteEntry/voteDefinition/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminAdminListCategories(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/categories/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminAdminCreateInstanceCategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Admin/categories/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminAdminValidateCreateInstanceCategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Admin/categories/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminAdminListCounties(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/counties/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminAdminCreateInstanceCounties(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Admin/counties/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminAdminValidateCreateInstanceCounties(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Admin/counties/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminAdminListDashboardhome(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/dashboardhome/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminAdminListDebates(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/debates/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminAdminListIssues(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/issues/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminAdminListUsers(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/users/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminAdminListVoteDefinitions(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Admin/voteDefinitions/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminCityListDistricts(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/City/districts/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCityCreateInstanceDistricts(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/City/~update/districts/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCityValidateCreateInstanceDistricts(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/City/~update/districts/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCommentListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Comment/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminCommentListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Comment/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCommentCreateInstanceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Comment/~update/votes/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCommentValidateCreateInstanceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Comment/~update/votes/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminConListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Con/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminConListCons(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Con/cons/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminConListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Con/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminConListPros(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Con/pros/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminConListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Con/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminCountyListCities(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/County/cities/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCountyCreateInstanceCities(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/County/~update/cities/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminCountyValidateCreateInstanceCities(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/County/~update/cities/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminDashboardListDebates(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Dashboard/debates/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminDashboardListIssues(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Dashboard/issues/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminDebateListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminDebateListCons(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/cons/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDebateListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDebateListIssue(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/issue/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminDebateListPros(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/pros/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminDebateListVoteDefinition(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Debate/voteDefinition/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueListAttachments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/attachments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCreateInstanceAttachments(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update/attachments/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueValidateCreateInstanceAttachments(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Issue/~update/attachments/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueListCategories(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/categories/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueListDebates(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/debates/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueListOwner(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Issue/owner/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCategoryListOwner(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/IssueCategory/owner/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminIssueCategoryListSubcategories(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/IssueCategory/subcategories/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCategoryCreateInstanceSubcategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/IssueCategory/~update/subcategories/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminIssueCategoryValidateCreateInstanceSubcategories(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/IssueCategory/~update/subcategories/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminProListComments(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Pro/comments/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminProListCons(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Pro/cons/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminProListCreatedBy(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Pro/createdBy/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminProListPros(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Pro/pros/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminProListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/Pro/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminProCreateInstanceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/~update/votes/~create';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminProValidateCreateInstanceVotes(String xJudoSignedIdentifier, dynamic input, {Options options}) async {
    final path = '/admin/Pro/~update/votes/~validate';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminSimpleVoteListUser(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/SimpleVote/user/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminUserListActivityCities(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/activityCities/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminUserListActivityCounties(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/activityCounties/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminUserListActivityDistricts(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/activityDistricts/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminUserListResidentCity(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/residentCity/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminUserListResidentCounty(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/residentCounty/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminUserListResidentDistrict(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/residentDistrict/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<List<dynamic>> edemokraciaAdminUserListVotes(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/User/votes/~list';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> edemokraciaAdminVoteDefinitionListDebate(String xJudoSignedIdentifier, {dynamic input, Options options}) async {
    final path = '/admin/VoteDefinition/debate/~get';

    final response = await dioCommand(path, xJudoSignedIdentifier, input, options);

    if (response.data != null && response.data != '') {
      return json.decode(response.data);
    }
  }

  Future<dynamic> uploadFile(String attributePath, PlatformFile file) async {
    final responseToken = await dioCommand(attributePath + '/~upload-token', null, null, null);
    JudoToken token = JudoToken.fromJson(json.decode(responseToken.data));
    if (token == null) {
      return null;
    }

    final String url = await UrlUtil.getUrlForBinary();
    http.MultipartRequest request;
    http.StreamedResponse stream;
    String response;

    try {
      request = new http.MultipartRequest('POST', Uri.parse(url + '/upload'));

      final String contentType = mimeFromExtension(file.extension?.toLowerCase());
      request.files.add(http.MultipartFile.fromBytes('file', file.bytes, contentType: MediaType.parse(contentType), filename: file.name));
      request.headers['X-Token'] = token.token;

      stream = await request.send();
      response = await stream.stream.bytesToString();
    } catch (error) {
      print(error);
      throw ApiException(418, error);
    }

    if (stream.statusCode == 200) {
      return json.decode(response);
    } else {
      throw ApiException(stream.statusCode, response);
    }
  }

  Future<http.Response> downloadFile(String downloadToken) async {
    String url = await UrlUtil.getUrlForBinary();
    final headers = <String, String>{};
    headers['X-Token'] = downloadToken;
    http.Response response;

    try {
      response = await http.get(url + '/download', headers: headers);
    } catch (error) {
      print(error);
      throw ApiException(418, error);
    }
    if (response.statusCode == 200) {
      return response;
    } else {
      print(response);
      throw ApiException(response.statusCode, response.body);
    }
  }
}
