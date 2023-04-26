import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssueDebate,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  CreateDebateInput,
  AdminDistrictStored,
  AdminCommentQueryCustomizer,
  AdminCounty,
  AdminCity,
  AdminIssueDebateQueryCustomizer,
  AdminDistrictQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminIssueCategoryStored,
  CreateCommentInput,
  AdminIssueCategory,
  AdminComment,
  DebateStored,
  AdminUser,
  AdminCountyStored,
  AdminCityStored,
  AdminIssueTypeStored,
  AdminUserStored,
  AdminIssueAttachmentStored,
  AdminUserQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminIssueDebateStored,
  AdminIssueAttachmentQueryCustomizer,
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminDistrict,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
} from '../data-api';

/**
 * Class Service for AdminIssue
 */
export interface AdminIssueService {
  refresh(target: JudoIdentifiable<AdminIssue>, queryCustomizer?: AdminIssueQueryCustomizer): Promise<AdminIssueStored>;

  delete(target: JudoIdentifiable<AdminIssue>): Promise<void>;

  update(target: Partial<AdminIssueStored>): Promise<AdminIssueStored>;

  getAttachments(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueAttachmentQueryCustomizer,
  ): Promise<Array<AdminIssueAttachmentStored>>;

  getRangeForAttachments(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminIssueAttachmentQueryCustomizer,
  ): Promise<Array<AdminIssueAttachmentStored>>;

  getOwner(target: JudoIdentifiable<AdminIssue>, queryCustomizer?: AdminUserQueryCustomizer): Promise<AdminUserStored>;

  getRangeForOwner(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  setOwner(target: JudoIdentifiable<AdminIssue>, selected: JudoIdentifiable<AdminUser>): Promise<void>;

  unsetOwner(target: JudoIdentifiable<AdminIssue>): Promise<void>;

  getCategories(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueCategoryQueryCustomizer,
  ): Promise<Array<AdminIssueCategoryStored>>;

  getRangeForCategories(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminIssueCategoryQueryCustomizer,
  ): Promise<Array<AdminIssueCategoryStored>>;

  setCategories(
    target: JudoIdentifiable<AdminIssue>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void>;

  addCategories(
    target: JudoIdentifiable<AdminIssue>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void>;

  removeCategories(
    target: JudoIdentifiable<AdminIssue>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void>;

  getDebates(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueDebateQueryCustomizer,
  ): Promise<Array<AdminIssueDebateStored>>;

  getRangeForDebates(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminIssueDebateQueryCustomizer,
  ): Promise<Array<AdminIssueDebateStored>>;

  getComments(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  getRangeForComments(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminCommentQueryCustomizer,
  ): Promise<Array<AdminCommentStored>>;

  getCreatedBy(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<AdminUserStored>;

  getRangeForCreatedBy(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  getIssueType(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<AdminIssueTypeStored>;

  getRangeForIssueType(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<Array<AdminIssueTypeStored>>;

  setIssueType(target: JudoIdentifiable<AdminIssue>, selected: JudoIdentifiable<AdminIssueType>): Promise<void>;

  unsetIssueType(target: JudoIdentifiable<AdminIssue>): Promise<void>;

  getCounty(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<AdminCountyStored>;

  getRangeForCounty(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setCounty(target: JudoIdentifiable<AdminIssue>, selected: JudoIdentifiable<AdminCounty>): Promise<void>;

  unsetCounty(target: JudoIdentifiable<AdminIssue>): Promise<void>;

  getCity(target: JudoIdentifiable<AdminIssue>, queryCustomizer?: AdminCityQueryCustomizer): Promise<AdminCityStored>;

  getRangeForCity(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setCity(target: JudoIdentifiable<AdminIssue>, selected: JudoIdentifiable<AdminCity>): Promise<void>;

  unsetCity(target: JudoIdentifiable<AdminIssue>): Promise<void>;

  getDistrict(
    target: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<AdminDistrictStored>;

  getRangeForDistrict(
    owner?: JudoIdentifiable<AdminIssue> | AdminIssue,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setDistrict(target: JudoIdentifiable<AdminIssue>, selected: JudoIdentifiable<AdminDistrict>): Promise<void>;

  unsetDistrict(target: JudoIdentifiable<AdminIssue>): Promise<void>;

  createDebate(owner: JudoIdentifiable<AdminIssue>, target: CreateDebateInput): Promise<DebateStored>;

  createComment(owner: JudoIdentifiable<AdminIssue>, target: CreateCommentInput): Promise<void>;
}
