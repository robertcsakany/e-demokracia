import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssueDebate,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  AdminDistrictStored,
  AdminCommentQueryCustomizer,
  AdminCounty,
  AdminCity,
  AdminIssueDebateQueryCustomizer,
  AdminDistrictQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminIssueCategoryStored,
  AdminIssueCategory,
  AdminComment,
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
  AdminDebate,
  AdminIssue,
  AdminIssueTypeQueryCustomizer,
  AdminIssueType,
  AdminDistrict,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
} from '../data-api';

/**
 * Relation Service for AdminDebate.issue
 */
export interface AdminDebateServiceForIssue {
  getIssue(owner: JudoIdentifiable<AdminDebate>, mask?: string): Promise<AdminIssueStored>;

  getRangeForOwner(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  setOwner(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminUser>,
  ): Promise<void>;

  unsetOwner(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminUser>): Promise<void>;

  getRangeForCategories(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminIssueCategoryQueryCustomizer,
  ): Promise<Array<AdminIssueCategoryStored>>;

  setCategories(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminIssueCategory>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void>;

  addIssueCategories(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminIssueCategory>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void>;

  removeIssueCategories(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminIssueCategory>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void>;

  getRangeForIssueType(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminIssueTypeQueryCustomizer,
  ): Promise<Array<AdminIssueTypeStored>>;

  setIssueType(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminIssueType>,
    selected: JudoIdentifiable<AdminIssueType>,
  ): Promise<void>;

  unsetIssueType(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminIssueType>): Promise<void>;

  getRangeForCounty(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setCounty(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCounty>,
    selected: JudoIdentifiable<AdminCounty>,
  ): Promise<void>;

  unsetCounty(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminCounty>): Promise<void>;

  getRangeForCity(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setCity(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCity>,
    selected: JudoIdentifiable<AdminCity>,
  ): Promise<void>;

  unsetCity(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminCity>): Promise<void>;

  getRangeForDistrict(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setDistrict(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: JudoIdentifiable<AdminDistrict>,
  ): Promise<void>;

  unsetDistrict(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminDistrict>): Promise<void>;
}
