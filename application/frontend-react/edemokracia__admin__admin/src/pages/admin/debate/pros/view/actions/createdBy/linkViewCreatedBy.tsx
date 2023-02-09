///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::createdBy#LinkView
// Action owner name: edemokracia::admin::Debate.pros#View
// Action DataElement name: createdBy
// Action DataElement owner name: edemokracia::admin::Pro
// Action DataElement target name: edemokracia::admin::User
// Owner Page name: edemokracia::admin::Debate.pros#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminProStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminPro,
  AdminUser,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewCreatedByAction = () => (entry: JudoIdentifiable<AdminUser>) => Promise<void>;

export const useLinkViewCreatedByAction: LinkViewCreatedByAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminUser>) {
    navigate(`admin/pro/created_by/view/${entry.__signedIdentifier}`);
  };
};
