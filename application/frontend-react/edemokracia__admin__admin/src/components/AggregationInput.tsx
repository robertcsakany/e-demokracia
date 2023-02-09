///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components/AggregationInput.tsx'
// Template name: actor/src/components/AggregationInput.tsx.hbs

import { ButtonBase, Grid, IconButton, InputAdornment, TextField } from '@mui/material';
import { useState } from 'react';
import type { ReactNode } from 'react';
import { exists } from '../utilities';
import { MdiIcon } from '../components';

interface AggregationInputProps {
  name?: string;
  id?: string;
  label?: string;
  value: any | undefined | null;
  error?: boolean | undefined;
  helperText?: string | undefined;
  disabled?: boolean | undefined;
  readonly?: boolean | undefined;
  labelList: string[];
  icon?: ReactNode;
  onCreate?: () => Promise<void> | undefined;
  onDelete?: () => Promise<void> | undefined;
  onEdit?: () => Promise<void> | undefined;
  onRemove?: () => Promise<void> | undefined;
  onSet?: () => Promise<void> | undefined;
  onUnset?: () => Promise<void> | undefined;
  onView?: () => Promise<void> | undefined;
}

interface ViewIconsProps {
  value: any | undefined | null;
  disabled: boolean;
  onView?: () => Promise<void> | undefined;
  onEdit?: () => Promise<void> | undefined;
  onCreate?: () => Promise<void> | undefined;
  onDelete?: () => Promise<void> | undefined;
}

interface EditIconsProps {
  value: any | undefined | null;
  disabled: boolean;
  onRemove?: () => Promise<void> | undefined;
  onSet?: () => Promise<void> | undefined;
  onUnset?: () => Promise<void> | undefined;
}

export const AggregationInput = ({
  name,
  id,
  label,
  value,
  error = false,
  helperText,
  disabled = false,
  readonly = true,
  labelList,
  icon,
  onCreate,
  onDelete,
  onEdit,
  onRemove,
  onSet,
  onUnset,
  onView,
}: AggregationInputProps) => {
  const [focused, setFocused] = useState(false);

  let icons: ReactNode;

  if (readonly) {
    icons = (
      <ViewIcons
        value={value}
        disabled={disabled}
        onCreate={onCreate}
        onView={onView}
        onDelete={onDelete}
        onEdit={onEdit}
      />
    );
  } else {
    icons = <EditIcons value={value} disabled={disabled} onRemove={onRemove} onSet={onSet} onUnset={onUnset} />;
  }

  return (
    <Grid container item direction="row" justifyContent="stretch" alignContent="stretch">
      <ButtonBase
        sx={{ padding: 0, flexGrow: 1 }}
        disabled={disabled || readonly}
        onFocusCapture={() => setFocused(true)}
        onBlur={() => setFocused(false)}
        onClick={onSet}
      >
        <TextField
          name={name}
          id={id}
          label={label}
          error={error}
          helperText={helperText}
          focused={focused}
          fullWidth
          value={labelList.filter((l) => !!l && l.length > 0).join(' - ')}
          className={!onSet || disabled || readonly ? 'Mui-readOnly' : undefined}
          sx={{
            ':hover': {
              cursor: 'pointer',
            },
            '.MuiFilledInput-input:hover': {
              cursor: 'pointer',
            },
          }}
          InputProps={{
            readOnly: true,
            startAdornment: <InputAdornment position="start">{icon}</InputAdornment>,
          }}
        />
      </ButtonBase>
      {icons}
    </Grid>
  );
};

const ViewIcons = ({ value, disabled, onCreate, onDelete, onView, onEdit }: ViewIconsProps) => {
  let icons: ReactNode;

  if (exists(value)) {
    icons = (
      <>
        {onView && (
          <IconButton disabled={disabled} onClick={onView}>
            <MdiIcon path="eye" />
          </IconButton>
        )}
        {onEdit && (
          <IconButton disabled={disabled} onClick={onEdit}>
            <MdiIcon path="pencil" />
          </IconButton>
        )}
        {onDelete && (
          <IconButton disabled={disabled} onClick={onDelete}>
            <MdiIcon path="delete" />
          </IconButton>
        )}
      </>
    );
  } else {
    icons = (
      <>
        {onCreate && (
          <IconButton disabled={disabled} onClick={onCreate}>
            <MdiIcon path="file_document_plus" />
          </IconButton>
        )}
      </>
    );
  }

  return <>{icons}</>;
};

const EditIcons = ({ value, disabled, onRemove, onUnset }: EditIconsProps) => {
  let icons: ReactNode;

  if (exists(value)) {
    icons = (
      <>
        {onRemove && (
          <IconButton disabled={disabled} onClick={onRemove}>
            <MdiIcon path="link_off" />
          </IconButton>
        )}
        {onUnset && (
          <IconButton disabled={disabled} onClick={onUnset}>
            <MdiIcon path="link_off" />
          </IconButton>
        )}
      </>
    );
  } else {
    icons = <></>;
  }

  return <>{icons}</>;
};
