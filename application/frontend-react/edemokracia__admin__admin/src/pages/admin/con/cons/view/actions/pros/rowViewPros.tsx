///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::pros#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminProStored,
  AdminProQueryCustomizer,
  AdminCon,
  AdminConStored,
  AdminPro,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewProsAction = () => (entry: JudoIdentifiable<AdminPro>) => Promise<void>;

export const useRowViewProsAction: RowViewProsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminPro>) {
    navigate(`admin/con/pros/view/${entry.__signedIdentifier}`);
  };
};
