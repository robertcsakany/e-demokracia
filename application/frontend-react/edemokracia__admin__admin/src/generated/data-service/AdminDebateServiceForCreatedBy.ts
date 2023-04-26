import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminSimpleVoteQueryCustomizer,
  AdminDistrictQueryCustomizer,
  AdminDebate,
  AdminDistrict,
  AdminUser,
  AdminCountyStored,
  AdminCityStored,
  AdminSimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for AdminDebate.createdBy
 */
export interface AdminDebateServiceForCreatedBy {
  getCreatedBy(owner: JudoIdentifiable<AdminDebate>, mask?: string): Promise<AdminUserStored>;

  getRangeForVotes(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  setVotes(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void>;

  addCreatedByVotes(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void>;

  removeCreatedByVotes(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void>;
  getRangeForActivityCounties(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setActivityCounties(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCounty>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  addCreatedByActivityCounties(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCounty>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  removeCreatedByActivityCounties(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCounty>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;
  getRangeForResidentCounty(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setResidentCounty(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCounty>,
    selected: JudoIdentifiable<AdminCounty>,
  ): Promise<void>;

  unsetResidentCounty(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminCounty>): Promise<void>;

  getRangeForActivityCities(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setActivityCities(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCity>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;

  addCreatedByActivityCities(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCity>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;

  removeCreatedByActivityCities(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCity>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;
  getRangeForResidentCity(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setResidentCity(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminCity>,
    selected: JudoIdentifiable<AdminCity>,
  ): Promise<void>;

  unsetResidentCity(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminCity>): Promise<void>;

  getRangeForActivityDistricts(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setActivityDistricts(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  addCreatedByActivityDistricts(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  removeCreatedByActivityDistricts(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;
  getRangeForResidentDistrict(
    owner: JudoIdentifiable<AdminDebate>,
    queryCustomizer: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setResidentDistrict(
    owner: JudoIdentifiable<AdminDebate>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: JudoIdentifiable<AdminDistrict>,
  ): Promise<void>;

  unsetResidentDistrict(owner: JudoIdentifiable<AdminDebate>, target: JudoIdentifiable<AdminDistrict>): Promise<void>;
}
