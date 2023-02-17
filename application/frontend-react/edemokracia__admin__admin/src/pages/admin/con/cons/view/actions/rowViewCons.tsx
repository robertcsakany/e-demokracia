///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::cons#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type { AdminCon, AdminConStored, AdminConQueryCustomizer } from '../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../components';

export type RowViewConsAction = () => (entry: JudoIdentifiable<AdminCon>) => Promise<void>;

export const useRowViewConsAction: RowViewConsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCon>) {
    navigate(`admin/con/cons/view/${entry.__signedIdentifier}`);
  };
};
