import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { CountyAttributes, CityAttributes } from '../model';

import { CityDistrictsMaskBuilder } from './CityMaskBuilder';

export class CountyCitiesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<CityAttributes | CityDistrictsMaskBuilder>) {
    super('cities', props);
  }
}

export class CountyMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<CountyAttributes | CountyCitiesMaskBuilder>) {
    super(props);
  }
}
