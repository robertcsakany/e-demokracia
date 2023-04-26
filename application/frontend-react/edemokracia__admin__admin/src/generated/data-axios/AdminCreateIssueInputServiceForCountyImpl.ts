import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCreateIssueInput,
  AdminCityQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminCountyStored,
  AdminCounty,
  AdminCityStored,
  AdminCity,
} from '../data-api';
import { AdminCreateIssueInputServiceForCounty } from '../data-service';

/**
 * Relation Service Implementation for AdminCreateIssueInput.county
 */
export class AdminCreateIssueInputServiceForCountyImpl
  extends JudoAxiosService
  implements AdminCreateIssueInputServiceForCounty {}
