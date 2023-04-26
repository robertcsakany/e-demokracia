import { JudoStored } from '@judo/data-api-common';
import { AdminDistrictStored } from './AdminDistrict';

export interface AdminCity {
  name: string;
  county?: null | string;
  representation?: null | string;

  districts?: null | Array<AdminDistrictStored>;
}
export type AdminCityAttributes = 'name' | 'county' | 'representation';

export type AdminCityRelations = 'districts';

export interface AdminCityStored extends JudoStored<AdminCity>, AdminCity {}
