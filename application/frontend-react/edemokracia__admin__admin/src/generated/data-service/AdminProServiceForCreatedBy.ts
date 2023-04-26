import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminSimpleVoteQueryCustomizer,
  AdminDistrictQueryCustomizer,
  AdminDistrict,
  AdminUser,
  AdminCountyStored,
  AdminCityStored,
  AdminSimpleVoteStored,
} from '../data-api';

/**
 * Relation Service for AdminPro.createdBy
 */
export interface AdminProServiceForCreatedBy {
  getCreatedBy(owner: JudoIdentifiable<AdminPro>, mask?: string): Promise<AdminUserStored>;

  getRangeForVotes(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  setVotes(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void>;

  addCreatedByVotes(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void>;

  removeCreatedByVotes(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void>;
  getRangeForActivityCounties(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setActivityCounties(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCounty>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  addCreatedByActivityCounties(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCounty>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  removeCreatedByActivityCounties(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCounty>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;
  getRangeForResidentCounty(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setResidentCounty(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCounty>,
    selected: JudoIdentifiable<AdminCounty>,
  ): Promise<void>;

  unsetResidentCounty(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminCounty>): Promise<void>;

  getRangeForActivityCities(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setActivityCities(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCity>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;

  addCreatedByActivityCities(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCity>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;

  removeCreatedByActivityCities(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCity>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;
  getRangeForResidentCity(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setResidentCity(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminCity>,
    selected: JudoIdentifiable<AdminCity>,
  ): Promise<void>;

  unsetResidentCity(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminCity>): Promise<void>;

  getRangeForActivityDistricts(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setActivityDistricts(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  addCreatedByActivityDistricts(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  removeCreatedByActivityDistricts(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;
  getRangeForResidentDistrict(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setResidentDistrict(
    owner: JudoIdentifiable<AdminPro>,
    target: JudoIdentifiable<AdminDistrict>,
    selected: JudoIdentifiable<AdminDistrict>,
  ): Promise<void>;

  unsetResidentDistrict(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminDistrict>): Promise<void>;
}
