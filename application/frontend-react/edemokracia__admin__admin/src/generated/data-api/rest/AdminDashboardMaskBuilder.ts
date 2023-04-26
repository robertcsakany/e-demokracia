import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { AdminIssueAttributes, AdminDebateAttributes, AdminDashboardAttributes } from '../model';

import {
  AdminDebateIssueMaskBuilder,
  AdminDebateCommentsMaskBuilder,
  AdminDebateCreatedByMaskBuilder,
  AdminDebateConsMaskBuilder,
  AdminDebateProsMaskBuilder,
  AdminDebateVoteDefinitionMaskBuilder,
} from './AdminDebateMaskBuilder';
import {
  AdminIssueAttachmentsMaskBuilder,
  AdminIssueOwnerMaskBuilder,
  AdminIssueCategoriesMaskBuilder,
  AdminIssueDebatesMaskBuilder,
  AdminIssueCommentsMaskBuilder,
  AdminIssueCreatedByMaskBuilder,
  AdminIssueIssueTypeMaskBuilder,
  AdminIssueCountyMaskBuilder,
  AdminIssueCityMaskBuilder,
  AdminIssueDistrictMaskBuilder,
} from './AdminIssueMaskBuilder';

export class AdminDashboardIssuesMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      | AdminIssueAttributes
      | AdminIssueAttachmentsMaskBuilder
      | AdminIssueOwnerMaskBuilder
      | AdminIssueCategoriesMaskBuilder
      | AdminIssueDebatesMaskBuilder
      | AdminIssueCommentsMaskBuilder
      | AdminIssueCreatedByMaskBuilder
      | AdminIssueIssueTypeMaskBuilder
      | AdminIssueCountyMaskBuilder
      | AdminIssueCityMaskBuilder
      | AdminIssueDistrictMaskBuilder
    >,
  ) {
    super('issues', props);
  }
}
export class AdminDashboardDebatesMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      | AdminDebateAttributes
      | AdminDebateIssueMaskBuilder
      | AdminDebateCommentsMaskBuilder
      | AdminDebateCreatedByMaskBuilder
      | AdminDebateConsMaskBuilder
      | AdminDebateProsMaskBuilder
      | AdminDebateVoteDefinitionMaskBuilder
    >,
  ) {
    super('debates', props);
  }
}

export class AdminDashboardMaskBuilder extends MaskBuilder {
  constructor(
    protected props: Array<
      AdminDashboardAttributes | AdminDashboardIssuesMaskBuilder | AdminDashboardDebatesMaskBuilder
    >,
  ) {
    super(props);
  }
}
