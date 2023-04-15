//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/PageHeader.tsx'
// Template name: actor/src/components/PageHeader.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components/PageHeader.tsx.hbs

import { AppBar, Toolbar, Grid, Typography, Divider, Container } from '@mui/material';
import { useEffect } from 'react';
import type { ReactNode } from 'react';
import { useJudoNavigation } from './CustomBreadcrumb';

interface PageHeaderProps {
  title: string;
  children: ReactNode;
}

export const PageHeader = ({ title, children }: PageHeaderProps) => {
  const { setTitle } = useJudoNavigation();

  useEffect(() => {
    setTitle(title);
  }, [title]);

  return (
    <>
      <AppBar component="div" position="sticky" elevation={0}>
        <Toolbar>
          <Container component="main" maxWidth="xl">
            <Grid container alignItems="center" justifyContent="space-between" spacing={1}>
              <Grid item>
                <Typography id="application-page-header-title" component="span" color="text.primary" variant="h5">
                  {title}
                </Typography>
              </Grid>
              <Grid item>
                <Grid container direction="row" alignItems="center" spacing={1}>
                  {children}
                </Grid>
              </Grid>
            </Grid>
          </Container>
        </Toolbar>
        <Divider />
      </AppBar>
    </>
  );
};
