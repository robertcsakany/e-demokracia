import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import {
  AdminIssueTypeAttributes,
  AdminDistrictAttributes,
  AdminCreateIssueInputAttributes,
  AdminCountyAttributes,
  AdminCityAttributes,
} from '../model';

import {} from './AdminIssueTypeMaskBuilder';
import { AdminCountyCitiesMaskBuilder } from './AdminCountyMaskBuilder';
import {} from './AdminDistrictMaskBuilder';
import { AdminCityDistrictsMaskBuilder } from './AdminCityMaskBuilder';

export class AdminCreateIssueInputIssueTypeMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminIssueTypeAttributes>) {
    super('issueType', props);
  }
}
export class AdminCreateIssueInputCountyMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCountyAttributes | AdminCountyCitiesMaskBuilder>) {
    super('county', props);
  }
}
export class AdminCreateIssueInputCityMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCityAttributes | AdminCityDistrictsMaskBuilder>) {
    super('city', props);
  }
}
export class AdminCreateIssueInputDistrictMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminDistrictAttributes>) {
    super('district', props);
  }
}

export class AdminCreateIssueInputMaskBuilder extends MaskBuilder {
  constructor(
    protected props: Array<
      | AdminCreateIssueInputAttributes
      | AdminCreateIssueInputIssueTypeMaskBuilder
      | AdminCreateIssueInputCountyMaskBuilder
      | AdminCreateIssueInputCityMaskBuilder
      | AdminCreateIssueInputDistrictMaskBuilder
    >,
  ) {
    super(props);
  }
}
