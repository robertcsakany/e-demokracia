import { JudoStored } from '@judo/data-api-common';
import { AdminUserStored } from './AdminUser';

export interface AdminIssueCategory {
  title: string;
  description: string;

  subcategories?: null | Array<AdminIssueCategoryStored>;
  owner?: null | AdminUserStored;
}
export type AdminIssueCategoryAttributes = 'title' | 'description';

export type AdminIssueCategoryRelations = 'subcategories' | 'owner';

export interface AdminIssueCategoryStored extends JudoStored<AdminIssueCategory>, AdminIssueCategory {}
