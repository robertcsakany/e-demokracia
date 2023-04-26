import { JudoStored } from '@judo/data-api-common';
import { UserStored } from './User';

export interface IssueCategory {
  title: string;
  description: string;

  subcategories?: null | Array<IssueCategoryStored>;
  owner?: null | UserStored;
}
export type IssueCategoryAttributes = 'title' | 'description';

export type IssueCategoryRelations = 'subcategories' | 'owner';

export interface IssueCategoryStored extends JudoStored<IssueCategory>, IssueCategory {}
