import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import {
  AdminDistrictAttributes,
  AdminUserAttributes,
  AdminSimpleVoteAttributes,
  AdminCountyAttributes,
  AdminCityAttributes,
} from '../model';

import {} from './AdminDistrictMaskBuilder';
import { AdminCountyCitiesMaskBuilder } from './AdminCountyMaskBuilder';
import { AdminCityDistrictsMaskBuilder } from './AdminCityMaskBuilder';

export class AdminUserActivityCountiesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCountyAttributes | AdminCountyCitiesMaskBuilder>) {
    super('activityCounties', props);
  }
}
export class AdminUserResidentCountyMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCountyAttributes | AdminCountyCitiesMaskBuilder>) {
    super('residentCounty', props);
  }
}
export class AdminUserActivityCitiesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCityAttributes | AdminCityDistrictsMaskBuilder>) {
    super('activityCities', props);
  }
}
export class AdminUserResidentCityMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminCityAttributes | AdminCityDistrictsMaskBuilder>) {
    super('residentCity', props);
  }
}
export class AdminUserActivityDistrictsMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminDistrictAttributes>) {
    super('activityDistricts', props);
  }
}
export class AdminUserResidentDistrictMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<AdminDistrictAttributes>) {
    super('residentDistrict', props);
  }
}

export class AdminUserMaskBuilder extends MaskBuilder {
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
    super(props);
  }
}
