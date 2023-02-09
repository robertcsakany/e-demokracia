//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #repositoryFolderPath(#application.actor)+'repository_filters.dart'
// Template name: lib/repositories/repository_filters.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.repository;

typedef FilterCreator = dynamic Function(FilterStore filterStore);

enum filter_key {
  String,
  Text,
  Timestamp,
  DebateStatus,
  IssueStatus,
  URL,
  AttachmentType,
  SimpleVoteType,
  Email,
  Boolean,
  Phone,
  VoteStatus,
  Integer,
}

EdemokraciaExtensionFilterByString createFilterByString(FilterStore filterStore) {
  EdemokraciaExtensionFilterByString filter = EdemokraciaExtensionFilterByString();

  if (filterStore.filterOperation == 'contain') {
    filter.value = '%' + (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByStringOperatorEnum.like;
  } else if (filterStore.filterOperation == 'beginWith') {
    filter.value = (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByStringOperatorEnum.like;
  } else {
    filter.value = filterStore.filterValue as String;
    filter.operator_ =
        filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByStringOperatorEnum>(EdemokraciaExtensionFilterByStringOperatorEnum.values);
  }

  return filter;
}

EdemokraciaExtensionFilterByText createFilterByText(FilterStore filterStore) {
  EdemokraciaExtensionFilterByText filter = EdemokraciaExtensionFilterByText();

  if (filterStore.filterOperation == 'contain') {
    filter.value = '%' + (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByTextOperatorEnum.like;
  } else if (filterStore.filterOperation == 'beginWith') {
    filter.value = (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByTextOperatorEnum.like;
  } else {
    filter.value = filterStore.filterValue as String;
    filter.operator_ = filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByTextOperatorEnum>(EdemokraciaExtensionFilterByTextOperatorEnum.values);
  }

  return filter;
}

EdemokraciaExtensionFilterByTimestamp createFilterByTimestamp(FilterStore filterStore) {
  EdemokraciaExtensionFilterByTimestamp filter = EdemokraciaExtensionFilterByTimestamp();

  filter.value = filterStore.filterValue as DateTime;
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByTimestampOperatorEnum>(EdemokraciaExtensionFilterByTimestampOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterByDebateStatus createFilterByDebateStatus(FilterStore filterStore) {
  EdemokraciaExtensionFilterByDebateStatus filter = EdemokraciaExtensionFilterByDebateStatus();

  filter.value = (filterStore.filterValue.toString().split('.').last)
      .toEnum<EdemokraciaExtensionFilterByDebateStatusValueEnum>(EdemokraciaExtensionFilterByDebateStatusValueEnum.values);
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByDebateStatusOperatorEnum>(EdemokraciaExtensionFilterByDebateStatusOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterByIssueStatus createFilterByIssueStatus(FilterStore filterStore) {
  EdemokraciaExtensionFilterByIssueStatus filter = EdemokraciaExtensionFilterByIssueStatus();

  filter.value = (filterStore.filterValue.toString().split('.').last)
      .toEnum<EdemokraciaExtensionFilterByIssueStatusValueEnum>(EdemokraciaExtensionFilterByIssueStatusValueEnum.values);
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByIssueStatusOperatorEnum>(EdemokraciaExtensionFilterByIssueStatusOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterByURL createFilterByURL(FilterStore filterStore) {
  EdemokraciaExtensionFilterByURL filter = EdemokraciaExtensionFilterByURL();

  if (filterStore.filterOperation == 'contain') {
    filter.value = '%' + (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByURLOperatorEnum.like;
  } else if (filterStore.filterOperation == 'beginWith') {
    filter.value = (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByURLOperatorEnum.like;
  } else {
    filter.value = filterStore.filterValue as String;
    filter.operator_ = filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByURLOperatorEnum>(EdemokraciaExtensionFilterByURLOperatorEnum.values);
  }

  return filter;
}

EdemokraciaExtensionFilterByAttachmentType createFilterByAttachmentType(FilterStore filterStore) {
  EdemokraciaExtensionFilterByAttachmentType filter = EdemokraciaExtensionFilterByAttachmentType();

  filter.value = (filterStore.filterValue.toString().split('.').last)
      .toEnum<EdemokraciaExtensionFilterByAttachmentTypeValueEnum>(EdemokraciaExtensionFilterByAttachmentTypeValueEnum.values);
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum>(EdemokraciaExtensionFilterByAttachmentTypeOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterBySimpleVoteType createFilterBySimpleVoteType(FilterStore filterStore) {
  EdemokraciaExtensionFilterBySimpleVoteType filter = EdemokraciaExtensionFilterBySimpleVoteType();

  filter.value = (filterStore.filterValue.toString().split('.').last)
      .toEnum<EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum>(EdemokraciaExtensionFilterBySimpleVoteTypeValueEnum.values);
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum>(EdemokraciaExtensionFilterBySimpleVoteTypeOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterByEmail createFilterByEmail(FilterStore filterStore) {
  EdemokraciaExtensionFilterByEmail filter = EdemokraciaExtensionFilterByEmail();

  if (filterStore.filterOperation == 'contain') {
    filter.value = '%' + (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByEmailOperatorEnum.like;
  } else if (filterStore.filterOperation == 'beginWith') {
    filter.value = (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByEmailOperatorEnum.like;
  } else {
    filter.value = filterStore.filterValue as String;
    filter.operator_ = filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByEmailOperatorEnum>(EdemokraciaExtensionFilterByEmailOperatorEnum.values);
  }

  return filter;
}

EdemokraciaExtensionFilterByBoolean createFilterByBoolean(FilterStore filterStore) {
  EdemokraciaExtensionFilterByBoolean filter = EdemokraciaExtensionFilterByBoolean();

  filter.value = filterStore.filterValue as bool;
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByBooleanOperatorEnum>(EdemokraciaExtensionFilterByBooleanOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterByPhone createFilterByPhone(FilterStore filterStore) {
  EdemokraciaExtensionFilterByPhone filter = EdemokraciaExtensionFilterByPhone();

  if (filterStore.filterOperation == 'contain') {
    filter.value = '%' + (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByPhoneOperatorEnum.like;
  } else if (filterStore.filterOperation == 'beginWith') {
    filter.value = (filterStore.filterValue ?? '') + '%';
    filter.operator_ = EdemokraciaExtensionFilterByPhoneOperatorEnum.like;
  } else {
    filter.value = filterStore.filterValue as String;
    filter.operator_ = filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByPhoneOperatorEnum>(EdemokraciaExtensionFilterByPhoneOperatorEnum.values);
  }

  return filter;
}

EdemokraciaExtensionFilterByVoteStatus createFilterByVoteStatus(FilterStore filterStore) {
  EdemokraciaExtensionFilterByVoteStatus filter = EdemokraciaExtensionFilterByVoteStatus();

  filter.value = (filterStore.filterValue.toString().split('.').last)
      .toEnum<EdemokraciaExtensionFilterByVoteStatusValueEnum>(EdemokraciaExtensionFilterByVoteStatusValueEnum.values);
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByVoteStatusOperatorEnum>(EdemokraciaExtensionFilterByVoteStatusOperatorEnum.values);

  return filter;
}

EdemokraciaExtensionFilterByInteger createFilterByInteger(FilterStore filterStore) {
  EdemokraciaExtensionFilterByInteger filter = EdemokraciaExtensionFilterByInteger();

  filter.value = filterStore.filterValue as int;
  filter.operator_ =
      filterStore.filterOperation.toEnum<EdemokraciaExtensionFilterByIntegerOperatorEnum>(EdemokraciaExtensionFilterByIntegerOperatorEnum.values);

  return filter;
}

const Map<filter_key, FilterCreator> repository_filters = {
  filter_key.String: createFilterByString,
  filter_key.Text: createFilterByText,
  filter_key.Timestamp: createFilterByTimestamp,
  filter_key.DebateStatus: createFilterByDebateStatus,
  filter_key.IssueStatus: createFilterByIssueStatus,
  filter_key.URL: createFilterByURL,
  filter_key.AttachmentType: createFilterByAttachmentType,
  filter_key.SimpleVoteType: createFilterBySimpleVoteType,
  filter_key.Email: createFilterByEmail,
  filter_key.Boolean: createFilterByBoolean,
  filter_key.Phone: createFilterByPhone,
  filter_key.VoteStatus: createFilterByVoteStatus,
  filter_key.Integer: createFilterByInteger,
};
