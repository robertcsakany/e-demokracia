//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: ViewAction

import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssue,
  AdminIssueStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const LINK_VIEW_OWNER_ACTION_INTERFACE_KEY = 'LinkViewOwnerAction';
export type LinkViewOwnerAction = () => (owner: JudoIdentifiable<AdminIssue>, entry: AdminUserStored) => Promise<void>;

export const useLinkViewOwnerAction: LinkViewOwnerAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<LinkViewOwnerAction>(
    `(${OBJECTCLASS}=${LINK_VIEW_OWNER_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminIssue>, entry: AdminUserStored) {
    navigate(`admin/issue/owner/view/${entry.__signedIdentifier}`);
  };
};
