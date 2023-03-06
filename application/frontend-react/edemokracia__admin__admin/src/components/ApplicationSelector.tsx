import { useState } from 'react';
import type { MouseEvent } from 'react';
import { Typography, Button, Menu, MenuItem } from '@mui/material';
import { useTranslation } from 'react-i18next';
import { MdiIcon } from './MdiIcon';
import { generateAlternativeApplications, changeApplication } from '../utilities';

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
        variant="text"
        sx={{ width: '100%' }}
        onClick={handleClickListItem}
        endIcon={<MdiIcon path="chevron_down" />}
      >
        <Typography sx={{ fontWeight: 500 }}>{t('applications.Admin', { defaultValue: 'Admin' }) as string}</Typography>
      </Button>
      <Menu
        id="app-selector-menu"
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
          <MenuItem key={key} onClick={() => handleMenuItemClick(key)}>
            <Typography>{alternativeApplications[key]}</Typography>
          </MenuItem>
        ))}
      </Menu>
    </>
  );
}
