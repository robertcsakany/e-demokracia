import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  User,
  DistrictStored,
  City,
  County,
  SimpleVoteQueryCustomizer,
  CityQueryCustomizer,
  CityStored,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  District,
  DistrictQueryCustomizer,
  CountyQueryCustomizer,
  CountyStored,
} from '../data-api';

/**
 * Class Service for User
 */
export interface UserService {
  refresh(target: JudoIdentifiable<User>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getVotes(
    target: JudoIdentifiable<User>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  getRangeForVotes(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>>;

  getResidentCity(target: JudoIdentifiable<User>, queryCustomizer?: CityQueryCustomizer): Promise<CityStored>;

  getRangeForResidentCity(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: CityQueryCustomizer,
  ): Promise<Array<CityStored>>;

  getActivityCities(target: JudoIdentifiable<User>, queryCustomizer?: CityQueryCustomizer): Promise<Array<CityStored>>;

  getRangeForActivityCities(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: CityQueryCustomizer,
  ): Promise<Array<CityStored>>;

  getResidentDistrict(
    target: JudoIdentifiable<User>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<DistrictStored>;

  getRangeForResidentDistrict(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;

  getActivityDistricts(
    target: JudoIdentifiable<User>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;

  getRangeForActivityDistricts(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;

  getResidentCounty(target: JudoIdentifiable<User>, queryCustomizer?: CountyQueryCustomizer): Promise<CountyStored>;

  getRangeForResidentCounty(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: CountyQueryCustomizer,
  ): Promise<Array<CountyStored>>;

  getActivityCounties(
    target: JudoIdentifiable<User>,
    queryCustomizer?: CountyQueryCustomizer,
  ): Promise<Array<CountyStored>>;

  getRangeForActivityCounties(
    owner?: JudoIdentifiable<User> | User,
    queryCustomizer?: CountyQueryCustomizer,
  ): Promise<Array<CountyStored>>;
}
