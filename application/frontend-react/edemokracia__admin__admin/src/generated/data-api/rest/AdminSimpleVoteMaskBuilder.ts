import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { AdminUserAttributes, AdminSimpleVoteAttributes } from '../model';

import {
  AdminUserActivityCountiesMaskBuilder,
  AdminUserResidentCountyMaskBuilder,
  AdminUserActivityCitiesMaskBuilder,
  AdminUserResidentCityMaskBuilder,
  AdminUserActivityDistrictsMaskBuilder,
  AdminUserResidentDistrictMaskBuilder,
} from './AdminUserMaskBuilder';

export class AdminSimpleVoteUserMaskBuilder extends RelationMaskBuilder {
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
    super('user', props);
  }
}

export class AdminSimpleVoteMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminSimpleVoteAttributes | AdminSimpleVoteUserMaskBuilder>) {
    super(props);
  }
}
