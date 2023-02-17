///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/components/Hero.tsx'
// Template name: actor/src/components/Hero.tsx.hbs

import { Box, Typography } from '@mui/material';
import type { HeroProps } from '../components-api';

export function Hero(props: HeroProps) {
  return (
    <Box sx={{ p: 2, display: 'flex', flexDirection: 'row', alignItems: 'center' }}>
      <img src={props.imgSrc} alt="hero" style={{ width: '4rem', marginRight: '.5rem' }} />
      <Box sx={{ p: 2, display: 'flex', flexDirection: 'column', alignItems: 'stretch' }}>
        {props.preferredUsername && <Typography sx={{ fontWeight: 'bold' }}>{props.preferredUsername}</Typography>}
        {props.email && <Typography sx={{ fontWeight: 'light' }}>{props.email}</Typography>}
      </Box>
    </Box>
  );
}
