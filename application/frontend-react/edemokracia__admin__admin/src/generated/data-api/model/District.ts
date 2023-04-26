import { JudoStored } from '@judo/data-api-common';

export interface District {
  name: string;
}
export type DistrictAttributes = 'name';

export interface DistrictStored extends JudoStored<District>, District {}
