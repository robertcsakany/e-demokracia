import { JudoStored } from '@judo/data-api-common';
import { DistrictStored } from './District';

export interface City {
  name: string;

  districts?: null | Array<DistrictStored>;
}
export type CityAttributes = 'name';

export type CityRelations = 'districts';

export interface CityStored extends JudoStored<City>, City {}
