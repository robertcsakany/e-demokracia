//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/Logo.tsx'
// Template name: actor/src/components/Logo.tsx
// Template file: actor/src/components/Logo.tsx.hbs

import { Box, Typography } from '@mui/material';
import { useTranslation } from 'react-i18next';
import type { LogoProps } from '../components-api';

export function Logo(props: LogoProps) {
  const { t } = useTranslation();

  return (
    <Box
      sx={{
        p: 2,
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
      }}
    >
      <img
        id="application-logo"
        src={props.imgSrc}
        alt="logo"
        style={{
          width: '100%',
        }}
      />
      <div style={{ width: '100%', margin: '16px 0 0', textAlign: 'center' }}>
        <Typography id="application-name" sx={{ fontWeight: 'bold' }}>
          {t('applications.Admin', { defaultValue: 'Admin' }) as string}
        </Typography>
      </div>
    </Box>
  );
}
