part of judo.ui.pages.utility;

void validateMissingRequiredAttribute(BuildContext context, ValidationError messageMapEntry, dynamic attribute) {
  messageMapEntry.setMessage(attribute == null || attribute == '' ? AppLocalizations.of(context).lookUpValue(context, 'Missing required attribute.') : null);
}

void validateMissingRequiredRelation(BuildContext context, ValidationError messageMapEntry, dynamic attribute) {
  messageMapEntry.setMessage(attribute == null ? AppLocalizations.of(context).lookUpValue(context, 'Missing required relation.') : null);
}

void validateRegexp(BuildContext context, ValidationError messageMapEntry, dynamic attribute, String regexp) {
  bool isValid = RegExp(regexp).hasMatch(attribute != null ? attribute : '');
  messageMapEntry.setMessage(isValid ? null : AppLocalizations.of(context).lookUpValue(context, 'Value does not match pattern.'));
}
