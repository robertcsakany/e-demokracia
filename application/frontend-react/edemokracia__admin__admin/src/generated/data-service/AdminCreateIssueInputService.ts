import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCityQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminCreateIssueInputStored,
  AdminDistrictQueryCustomizer,
  AdminCreateIssueInput,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminDistrict,
  AdminCountyStored,
  AdminCityStored,
  AdminIssueTypeStored,
} from '../data-api';

/**
 * Class Service for AdminCreateIssueInput
 */
export interface AdminCreateIssueInputService {
  getTemplate(): Promise<AdminCreateIssueInput>;

  getIssueType(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<AdminIssueTypeStored>;

  getRangeForIssueType(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<Array<AdminIssueTypeStored>>;

  getCounty(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<AdminCountyStored>;

  getRangeForCounty(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  getCity(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<AdminCityStored>;

  getRangeForCity(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  getDistrict(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<AdminDistrictStored>;

  getRangeForDistrict(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;
}
