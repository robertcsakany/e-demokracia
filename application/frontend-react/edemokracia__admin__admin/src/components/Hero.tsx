//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/Hero.tsx'
// Template name: actor/src/components/Hero.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/components/Hero.tsx.hbs

import { Box, Typography } from '@mui/material';
import type { HeroProps } from '../components-api';

export function Hero(props: HeroProps) {
  return (
    <Box id="application-hero" sx={{ p: 2, display: 'flex', flexDirection: 'row', alignItems: 'center' }}>
      <img id="application-hero-image" src={props.imgSrc} alt="hero" style={{ width: '4rem', marginRight: '.5rem' }} />
      <Box sx={{ p: 2, display: 'flex', flexDirection: 'column', alignItems: 'stretch' }}>
        {props.preferredUsername && (
          <Typography id="application-hero-preferred-username" sx={{ fontWeight: 'bold' }}>
            {props.preferredUsername}
          </Typography>
        )}
        {props.email && (
          <Typography id="application-hero-email" sx={{ fontWeight: 'light' }}>
            {props.email}
          </Typography>
        )}
      </Box>
    </Box>
  );
}
