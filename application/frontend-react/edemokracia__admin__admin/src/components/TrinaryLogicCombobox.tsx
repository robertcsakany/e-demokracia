///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components/TrinaryLogicCombobox.tsx'
// Template name: actor/src/components/TrinaryLogicCombobox.tsx.hbs

import { TextField, InputAdornment, MenuItem } from '@mui/material';
import type { ChangeEvent } from 'react';
import { TRINARY_LOGIC, TrinaryLogicProps } from '../components-api';
import { MdiIcon } from './MdiIcon';

export const TrinaryLogicCombobox = ({
  readOnly = false,
  value = null,
  id,
  label,
  name,
  error,
  helperText,
  onChange,
}: TrinaryLogicProps) => {
  const onChangeHandler = onChange
    ? (event: ChangeEvent<HTMLTextAreaElement | HTMLInputElement>) => {
        const index = Array.from(TRINARY_LOGIC.values()).indexOf(event.target.value);
        const keysArray = Array.from(TRINARY_LOGIC.keys());
        onChange(keysArray[index]);
      }
    : undefined;

  return (
    <TextField
      name={name}
      id={id}
      label={label}
      select
      value={TRINARY_LOGIC.get(value)}
      onChange={onChangeHandler}
      className={readOnly ? 'Mui-readOnly' : undefined}
      error={error}
      helperText={helperText}
      InputProps={{
        readOnly: readOnly,
        startAdornment: (
          <InputAdornment position="start">
            <MdiIcon path="format-list-bulleted" />
          </InputAdornment>
        ),
      }}
    >
      {Array.from(TRINARY_LOGIC.keys()).map((key) => (
        <MenuItem key={TRINARY_LOGIC.get(key)} value={TRINARY_LOGIC.get(key)}>
          {TRINARY_LOGIC.get(key)}
        </MenuItem>
      ))}
    </TextField>
  );
};
