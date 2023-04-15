//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/layout/Footer.tsx'
// Template name: actor/src/layout/Footer.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/layout/Footer.tsx.hbs

import { Link, Typography } from '@mui/material';

export function Footer() {
  return (
    <Typography id="application-footer" variant="body2" color="text.secondary" align="center">
      Edemokracia - {new Date().getFullYear()}.
    </Typography>
  );
}
