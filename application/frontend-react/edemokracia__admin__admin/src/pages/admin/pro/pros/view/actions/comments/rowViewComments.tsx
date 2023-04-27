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
  AdminProStored,
  AdminComment,
  AdminPro,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const ROW_VIEW_COMMENTS_ACTION_INTERFACE_KEY = 'RowViewCommentsAction';
export type RowViewCommentsAction = () => (
  owner: JudoIdentifiable<AdminPro>,
  entry: AdminCommentStored,
) => Promise<void>;

export const useRowViewCommentsAction: RowViewCommentsAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<RowViewCommentsAction>(
    `(${OBJECTCLASS}=${ROW_VIEW_COMMENTS_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminPro>, entry: AdminCommentStored) {
    navigate(`admin/pro/comments/view/${entry.__signedIdentifier}`);
  };
};
