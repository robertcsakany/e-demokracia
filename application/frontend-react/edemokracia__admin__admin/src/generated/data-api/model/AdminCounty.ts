import { JudoStored } from '@judo/data-api-common';
import { AdminCityStored } from './AdminCity';

export interface AdminCounty {
  name: string;
  representation?: null | string;

  cities?: null | Array<AdminCityStored>;
}
export type AdminCountyAttributes = 'name' | 'representation';

export type AdminCountyRelations = 'cities';

export interface AdminCountyStored extends JudoStored<AdminCounty>, AdminCounty {}
