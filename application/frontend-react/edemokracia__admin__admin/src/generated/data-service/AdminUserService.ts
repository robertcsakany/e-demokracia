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
  AdminDistrict,
  AdminUser,
  AdminCountyStored,
  AdminCityStored,
  AdminSimpleVoteStored,
} from '../data-api';

/**
 * Class Service for AdminUser
 */
export interface AdminUserService {
  refresh(target: JudoIdentifiable<AdminUser>, queryCustomizer?: AdminUserQueryCustomizer): Promise<AdminUserStored>;

  delete(target: JudoIdentifiable<AdminUser>): Promise<void>;

  update(target: Partial<AdminUserStored>): Promise<AdminUserStored>;

  getVotes(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>>;

  setVotes(target: JudoIdentifiable<AdminUser>, selected: Array<JudoIdentifiable<AdminSimpleVote>>): Promise<void>;

  addVotes(target: JudoIdentifiable<AdminUser>, selected: Array<JudoIdentifiable<AdminSimpleVote>>): Promise<void>;

  removeVotes(target: JudoIdentifiable<AdminUser>, selected: Array<JudoIdentifiable<AdminSimpleVote>>): Promise<void>;

  getActivityCounties(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  getRangeForActivityCounties(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setActivityCounties(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  addActivityCounties(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  removeActivityCounties(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void>;

  getResidentCounty(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<AdminCountyStored>;

  getRangeForResidentCounty(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>>;

  setResidentCounty(target: JudoIdentifiable<AdminUser>, selected: JudoIdentifiable<AdminCounty>): Promise<void>;

  unsetResidentCounty(target: JudoIdentifiable<AdminUser>): Promise<void>;

  getActivityCities(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  getRangeForActivityCities(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setActivityCities(target: JudoIdentifiable<AdminUser>, selected: Array<JudoIdentifiable<AdminCity>>): Promise<void>;

  addActivityCities(target: JudoIdentifiable<AdminUser>, selected: Array<JudoIdentifiable<AdminCity>>): Promise<void>;

  removeActivityCities(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void>;

  getResidentCity(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<AdminCityStored>;

  getRangeForResidentCity(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  setResidentCity(target: JudoIdentifiable<AdminUser>, selected: JudoIdentifiable<AdminCity>): Promise<void>;

  unsetResidentCity(target: JudoIdentifiable<AdminUser>): Promise<void>;

  getActivityDistricts(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  getRangeForActivityDistricts(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setActivityDistricts(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  addActivityDistricts(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  removeActivityDistricts(
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void>;

  getResidentDistrict(
    target: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<AdminDistrictStored>;

  getRangeForResidentDistrict(
    owner?: JudoIdentifiable<AdminUser> | AdminUser,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  setResidentDistrict(target: JudoIdentifiable<AdminUser>, selected: JudoIdentifiable<AdminDistrict>): Promise<void>;

  unsetResidentDistrict(target: JudoIdentifiable<AdminUser>): Promise<void>;
}
