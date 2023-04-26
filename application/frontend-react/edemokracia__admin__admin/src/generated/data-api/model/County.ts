import { JudoStored } from '@judo/data-api-common';
import { CityStored } from './City';

export interface County {
  name: string;

  cities?: null | Array<CityStored>;
}
export type CountyAttributes = 'name';

export type CountyRelations = 'cities';

export interface CountyStored extends JudoStored<County>, County {}
