import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCreateIssueInput,
  AdminIssueTypeQueryCustomizer,
  AdminIssueType,
  AdminIssueTypeStored,
} from '../data-api';
import { AdminCreateIssueInputServiceForIssueType } from '../data-service';

/**
 * Relation Service Implementation for AdminCreateIssueInput.issueType
 */
export class AdminCreateIssueInputServiceForIssueTypeImpl
  extends JudoAxiosService
  implements AdminCreateIssueInputServiceForIssueType {}
