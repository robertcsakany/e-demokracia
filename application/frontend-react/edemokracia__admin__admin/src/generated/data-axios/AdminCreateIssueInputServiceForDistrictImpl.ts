import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { AdminCreateIssueInput, AdminDistrict, AdminDistrictStored, AdminDistrictQueryCustomizer } from '../data-api';
import { AdminCreateIssueInputServiceForDistrict } from '../data-service';

/**
 * Relation Service Implementation for AdminCreateIssueInput.district
 */
export class AdminCreateIssueInputServiceForDistrictImpl
  extends JudoAxiosService
  implements AdminCreateIssueInputServiceForDistrict {}
