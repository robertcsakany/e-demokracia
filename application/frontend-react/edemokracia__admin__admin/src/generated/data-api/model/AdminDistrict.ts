import { JudoStored } from '@judo/data-api-common';

export interface AdminDistrict {
  name: string;
  county?: null | string;
  city?: null | string;
  representation?: null | string;
}
export type AdminDistrictAttributes = 'name' | 'county' | 'city' | 'representation';

export interface AdminDistrictStored extends JudoStored<AdminDistrict>, AdminDistrict {}
