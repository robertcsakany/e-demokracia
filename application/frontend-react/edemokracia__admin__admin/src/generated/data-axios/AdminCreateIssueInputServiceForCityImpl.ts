import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCreateIssueInput,
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../data-api';
import { AdminCreateIssueInputServiceForCity } from '../data-service';

/**
 * Relation Service Implementation for AdminCreateIssueInput.city
 */
export class AdminCreateIssueInputServiceForCityImpl
  extends JudoAxiosService
  implements AdminCreateIssueInputServiceForCity {}
