import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CommentStored,
  Issue,
  User,
  IssueCategory,
  IssueCategoryStored,
  DistrictStored,
  County,
  IssueAttachmentQueryCustomizer,
  CityStored,
  UserQueryCustomizer,
  IssueQueryCustomizer,
  IssueStored,
  CommentQueryCustomizer,
  Debate,
  DebateStored,
  UserStored,
  CountyQueryCustomizer,
  CountyStored,
  Comment,
  DebateQueryCustomizer,
  IssueType,
  IssueTypeQueryCustomizer,
  IssueAttachmentStored,
  IssueTypeStored,
  City,
  IssueCategoryQueryCustomizer,
  CityQueryCustomizer,
  DistrictQueryCustomizer,
  District,
  IssueAttachment,
} from '../data-api';

/**
 * Relation Service for Debate.issue
 */
export interface DebateServiceForIssue {
  getIssue(owner: JudoIdentifiable<Debate>, mask?: string): Promise<IssueStored>;
}
