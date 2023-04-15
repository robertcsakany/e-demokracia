//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/widgets/AssociationButton.tsx'
// Template name: actor/src/components/widgets/AssociationButton.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components/widgets/AssociationButton.tsx.hbs

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
  owner: JudoIdentifiable<any>;
  fetchCall: (owner: JudoIdentifiable<any>) => Promise<JudoIdentifiable<T>>;
  navigateAction: (target: JudoIdentifiable<T>) => void;
  children?: ReactNode;
}

export function AssociationButton<T>({
  id,
  editMode,
  owner,
  fetchCall,
  navigateAction,
  children,
}: AssociationButtonProps<T>) {
  const { t } = useTranslation();
  const [data, setData] = useState<JudoIdentifiable<T> | undefined>();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const { navigate } = useJudoNavigation();

  useEffect(() => {
    (async () => {
      if (owner.__signedIdentifier) {
        try {
          setIsLoading(true);
          const res: JudoIdentifiable<T> | undefined = await fetchCall(owner);

          setData(res);
        } catch (e) {
          setData(undefined);
          console.error(e);
        } finally {
          setIsLoading(false);
        }
      } else {
        setData(undefined);
        setIsLoading(false);
      }
    })();
  }, [owner]);

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
