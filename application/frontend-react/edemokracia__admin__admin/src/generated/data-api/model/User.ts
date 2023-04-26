import { JudoStored } from '@judo/data-api-common';
import { CityStored } from './City';
import { SimpleVoteStored } from './SimpleVote';
import { DistrictStored } from './District';
import { CountyStored } from './County';

export interface User {
  userName: string;
  firstName: string;
  lastName: string;
  phone?: null | string;
  email: string;
  isAdmin: boolean;
  created?: null | Date;

  votes?: null | Array<SimpleVoteStored>;
  residentCity?: null | CityStored;
  activityCities?: null | Array<CityStored>;
  residentDistrict?: null | DistrictStored;
  activityDistricts?: null | Array<DistrictStored>;
  residentCounty?: null | CountyStored;
  activityCounties?: null | Array<CountyStored>;
}
export type UserAttributes = 'userName' | 'firstName' | 'lastName' | 'phone' | 'email' | 'isAdmin' | 'created';

export type UserRelations =
  | 'votes'
  | 'residentCity'
  | 'activityCities'
  | 'residentDistrict'
  | 'activityDistricts'
  | 'residentCounty'
  | 'activityCounties';

export interface UserStored extends JudoStored<User>, User {}
