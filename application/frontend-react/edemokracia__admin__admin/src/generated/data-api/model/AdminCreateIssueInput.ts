import { JudoStored } from '@judo/data-api-common';
import { AdminDistrictStored } from './AdminDistrict';
import { AdminCountyStored } from './AdminCounty';
import { AdminCityStored } from './AdminCity';
import { AdminIssueTypeStored } from './AdminIssueType';

export interface AdminCreateIssueInput {
  description: string;
  title: string;
  debateCloseAt: Date;

  issueType?: null | AdminIssueTypeStored;
  county?: null | AdminCountyStored;
  city?: null | AdminCityStored;
  district?: null | AdminDistrictStored;
}
export type AdminCreateIssueInputAttributes = 'description' | 'title' | 'debateCloseAt';

export type AdminCreateIssueInputRelations = 'issueType' | 'county' | 'city' | 'district';

export interface AdminCreateIssueInputStored extends JudoStored<AdminCreateIssueInput>, AdminCreateIssueInput {}
