import { MaskBuilder } from './MaskBuilder';
import { CountyAttributes, CityAttributes, DistrictAttributes, SimpleVoteAttributes, UserAttributes } from '../model';

export class UserMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<UserAttributes>) {
    super(props);
  }
}
