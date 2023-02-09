//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: #storeFolderPath(#application.actor)+'enum_types.dart'
// Template name: lib/store/enum_types.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.store;

T enumFromString<T>(List<T> values, String value) {
  return values.firstWhere((v) => v.toString().split('.')[1] == value, orElse: () => null);
}

enum BooleanOperation {
  equals,
}
enum EnumerationOperation {
  equals,
  notEquals,
}
enum NumericOperation {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
}
enum StringOperation {
  lessThan,
  greaterThan,
  lessOrEqual,
  greaterOrEqual,
  equal,
  notEqual,
  matches,
  contain,
  beginWith,
}
enum EdemokraciaAttachmentType {
  LINK,
  IMAGE,
  VIDEO,
  MAP,
}
enum EdemokraciaCreateArgumentInputType {
  PRO,
  CON,
}
enum EdemokraciaDebateStatus {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}
enum EdemokraciaIssueStatus {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}
enum EdemokraciaSimpleVoteType {
  UP,
  DOWN,
}
enum EdemokraciaVoteStatus {
  CREATED,
  PENDING,
  ACTIVE,
  CLOSED,
}
enum EdemokraciaVoteTypeOnCloseDebate {
  YES_NO,
  YES_NO_ABSTAIN,
  SELECT_ANSWER,
  RATE,
  NO_VOTE,
}
enum EdemokraciaYesNoAbstainVoteValue {
  YES,
  NO,
  ABSTAIN,
}
enum EdemokraciaYesNoVoteValue {
  YES,
  NO,
}
