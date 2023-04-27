import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import {
  AdminCommentAttributes,
  AdminIssueAttributes,
  AdminVoteDefinitionAttributes,
  AdminDebateAttributes,
  AdminProAttributes,
  AdminUserAttributes,
  AdminConAttributes,
} from '../model';

import {
  AdminConCreatedByMaskBuilder,
  AdminConConsMaskBuilder,
  AdminConProsMaskBuilder,
  AdminConCommentsMaskBuilder,
} from './AdminConMaskBuilder';
import {} from './AdminVoteDefinitionMaskBuilder';
import { AdminCommentCreatedByMaskBuilder } from './AdminCommentMaskBuilder';
import {
  AdminUserActivityCountiesMaskBuilder,
  AdminUserResidentCountyMaskBuilder,
  AdminUserActivityCitiesMaskBuilder,
  AdminUserResidentCityMaskBuilder,
  AdminUserActivityDistrictsMaskBuilder,
  AdminUserResidentDistrictMaskBuilder,
} from './AdminUserMaskBuilder';
import {
  AdminProCreatedByMaskBuilder,
  AdminProProsMaskBuilder,
  AdminProConsMaskBuilder,
  AdminProCommentsMaskBuilder,
} from './AdminProMaskBuilder';
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

export class AdminDebateIssueMaskBuilder extends RelationMaskBuilder {
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
    super('issue', props);
  }
}
export class AdminDebateCommentsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCommentAttributes | AdminCommentCreatedByMaskBuilder>) {
    super('comments', props);
  }
}
export class AdminDebateCreatedByMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      | AdminUserAttributes
      | AdminUserActivityCountiesMaskBuilder
      | AdminUserResidentCountyMaskBuilder
      | AdminUserActivityCitiesMaskBuilder
      | AdminUserResidentCityMaskBuilder
      | AdminUserActivityDistrictsMaskBuilder
      | AdminUserResidentDistrictMaskBuilder
    >,
  ) {
    super('createdBy', props);
  }
}
export class AdminDebateConsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      | AdminConAttributes
      | AdminConCreatedByMaskBuilder
      | AdminConConsMaskBuilder
      | AdminConProsMaskBuilder
      | AdminConCommentsMaskBuilder
    >,
  ) {
    super('cons', props);
  }
}
export class AdminDebateProsMaskBuilder extends RelationMaskBuilder {
  constructor(
    protected props: Array<
      | AdminProAttributes
      | AdminProCreatedByMaskBuilder
      | AdminProProsMaskBuilder
      | AdminProConsMaskBuilder
      | AdminProCommentsMaskBuilder
    >,
  ) {
    super('pros', props);
  }
}
export class AdminDebateVoteDefinitionMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminVoteDefinitionAttributes>) {
    super('voteDefinition', props);
  }
}

export class AdminDebateMaskBuilder extends MaskBuilder {
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
    super(props);
  }
}
