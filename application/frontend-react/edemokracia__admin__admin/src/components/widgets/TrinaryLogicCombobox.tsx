//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/widgets/TrinaryLogicCombobox.tsx'
// Template name: actor/src/components/widgets/TrinaryLogicCombobox.tsx
// Template file: actor/src/components/widgets/TrinaryLogicCombobox.tsx.hbs

import { TextField, InputAdornment, MenuItem } from '@mui/material';
import { useTranslation } from 'react-i18next';
import type { ChangeEvent } from 'react';
import { TRINARY_LOGIC, TrinaryLogicProps } from '../../components-api';
import { MdiIcon } from '../MdiIcon';

export const TrinaryLogicCombobox = ({
  autoFocus = false,
  readOnly = false,
  disabled = false,
  editMode = false,
  value = null,
  id,
  label,
  name,
  error,
  helperText,
  onChange,
}: TrinaryLogicProps) => {
  const { t } = useTranslation();
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
      autoFocus={autoFocus}
      label={label}
      select
      value={TRINARY_LOGIC.get(value)}
      className={!editMode ? 'JUDO-viewMode' : undefined}
      onChange={onChangeHandler}
      disabled={disabled || readOnly}
      error={error}
      helperText={helperText}
      InputProps={{
        startAdornment: (
          <InputAdornment position="start">
            <MdiIcon path="format-list-bulleted" />
          </InputAdornment>
        ),
      }}
    >
      <MenuItem className="trinary-logic-combobox-item" id={`${id}-true`} value={'Yes'}>
        {t('judo.component.TrinaryLogic.true', { defaultValue: 'Yes' }) as string}
      </MenuItem>
      <MenuItem className="trinary-logic-combobox-item" id={`${id}-false`} value={'No'}>
        {t('judo.component.TrinaryLogic.false', { defaultValue: 'No' }) as string}
      </MenuItem>
      <MenuItem className="trinary-logic-combobox-item" id={`${id}-undefined`} value={'Unknown'}>
        {t('judo.component.TrinaryLogic.unknown', { defaultValue: 'Unknown' }) as string}
      </MenuItem>
    </TextField>
  );
};
