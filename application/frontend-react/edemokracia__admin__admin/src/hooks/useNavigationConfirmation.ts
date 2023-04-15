//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/hooks/useNavigationConfirmation.ts'
// Template name: actor/src/hooks/useNavigationConfirmation.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/hooks/useNavigationConfirmation.ts.hbs

import { useEffect } from 'react';
import { unstable_usePrompt as usePrompt } from 'react-router-dom';

export function useConfirmationBeforeChange(confirmEnabled: boolean, confirmMsg: string) {
  usePrompt({ message: confirmMsg, when: confirmEnabled });

  useEffect(() => {
    const handleBeforeUnload = (event: BeforeUnloadEvent) => {
      if (confirmEnabled) {
        event.returnValue = confirmMsg;

        if (event.stopPropagation) {
          event.stopPropagation();
          event.preventDefault();
        }
      }
    };

    window.addEventListener('beforeunload', handleBeforeUnload);

    return () => {
      window.removeEventListener('beforeunload', handleBeforeUnload);
    };
  }, [confirmMsg, confirmEnabled]);
}
