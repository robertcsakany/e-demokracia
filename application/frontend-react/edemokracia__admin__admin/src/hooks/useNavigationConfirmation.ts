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
