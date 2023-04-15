//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/ApplicationSelector.tsx'
// Template name: actor/src/components/ApplicationSelector.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components/ApplicationSelector.tsx.hbs

import { useState } from 'react';
import type { MouseEvent } from 'react';
import { Typography, Button, Menu, MenuItem } from '@mui/material';
import { useTranslation } from 'react-i18next';
import { MdiIcon } from './MdiIcon';
import { generateAlternativeApplications, changeApplication } from '../utilities/application';

export function ApplicationSelector() {
  const { t } = useTranslation();
  const alternativeApplications: Record<string, string> = generateAlternativeApplications(t);
  const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null);
  const applicationSelectorOpen = Boolean(anchorEl);

  const handleClickListItem = (event: MouseEvent<any>) => {
    setAnchorEl(event.currentTarget);
  };

  const handleMenuItemClick = (key: string) => {
    changeApplication(key);
    setAnchorEl(null);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  return (
    <>
      <Button
        id="application-selector"
        variant="text"
        sx={{ width: '100%' }}
        onClick={handleClickListItem}
        endIcon={<MdiIcon path="chevron_down" />}
      >
        <Typography sx={{ fontWeight: 500 }}>{t('applications.Admin', { defaultValue: 'Admin' }) as string}</Typography>
      </Button>
      <Menu
        id="application-selector-menu"
        anchorEl={anchorEl}
        open={applicationSelectorOpen}
        onClose={handleClose}
        MenuListProps={{
          'aria-labelledby': 'lock-button',
          role: 'listbox',
        }}
      >
        <MenuItem disabled={true}>
          <Typography>
            {t('judo.applications.available_applications', { defaultValue: 'Available applications' }) as string}
          </Typography>
        </MenuItem>
        {Object.keys(alternativeApplications).map((key) => (
          <MenuItem id={key} key={key} onClick={() => handleMenuItemClick(key)}>
            <Typography>{alternativeApplications[key]}</Typography>
          </MenuItem>
        ))}
      </Menu>
    </>
  );
}
