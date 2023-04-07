import { ReactNode, useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import { JudoIdentifiable } from '@judo/data-api-common';
import { useJudoNavigation } from '../CustomBreadcrumb';

export interface AssociationBaseProps {
  id: string;
  editMode?: boolean;
  children?: ReactNode;
}

export interface AssociationButtonProps<T> extends AssociationBaseProps {
  fetchCall: () => Promise<JudoIdentifiable<T>>;
  navigateAction: (target: JudoIdentifiable<T>) => void;
  children?: ReactNode;
}

export function AssociationButton<T>({ id, editMode, fetchCall, navigateAction, children }: AssociationButtonProps<T>) {
  const { t } = useTranslation();
  const [data, setData] = useState<JudoIdentifiable<T> | undefined>();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const { navigate } = useJudoNavigation();

  useEffect(() => {
    (async () => {
      try {
        setIsLoading(true);
        const res: JudoIdentifiable<T> | undefined = await fetchCall();

        setData(res);
      } catch (e) {
        console.error(e);
      } finally {
        setIsLoading(false);
      }
    })();
  }, []);

  return (
    <Button
      id={id}
      variant="text"
      onClick={() => navigateAction(data!)}
      disabled={isLoading || editMode || !data?.__signedIdentifier}
    >
      {children}
    </Button>
  );
}

export interface CollectionAssociationButtonProps extends AssociationBaseProps {
  navigateAction: () => void;
  isLoading?: boolean;
}

export function CollectionAssociationButton<O>({
  id,
  editMode,
  isLoading,
  navigateAction,
  children,
}: CollectionAssociationButtonProps) {
  const { navigate } = useJudoNavigation();

  return (
    <Button id={id} variant="text" onClick={() => navigateAction()} disabled={isLoading || editMode}>
      {children}
    </Button>
  );
}
