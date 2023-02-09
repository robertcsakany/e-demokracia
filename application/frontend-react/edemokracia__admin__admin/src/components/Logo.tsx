///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components/Logo.tsx'
// Template name: actor/src/components/Logo.tsx.hbs

import { Box, Typography } from '@mui/material';
import type { LogoProps } from '../components-api';

export function Logo(props: LogoProps) {
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
        src={props.imgSrc}
        alt="logo"
        style={{
          width: '100%',
        }}
      />
      <Typography
        sx={{
          fontSize: 18,
          fontWeight: 'bold',
        }}
      >
        {props.subTitle}
      </Typography>
    </Box>
  );
}
