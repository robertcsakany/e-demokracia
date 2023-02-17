///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/layout/Header.tsx'
// Template name: actor/src/layout/Header.tsx.hbs

import { Fragment } from 'react';
import { AppBar, Grid, IconButton, Toolbar, Button } from '@mui/material';
import { CustomBreadcrumb, useJudoNavigation, MdiIcon } from '../components';

export interface HeaderProps {
  onDrawerToggle: () => void;
}

export function Header(props: HeaderProps) {
  const { onDrawerToggle } = props;
  const { back, isBackDisabled } = useJudoNavigation();

  return (
    <Fragment>
      <AppBar position="sticky" elevation={0}>
        <Toolbar>
          <Grid item>
            <Button variant="text" color="secondary" onClick={() => back()} disabled={isBackDisabled}>
              <MdiIcon path="arrow_back" />
            </Button>
          </Grid>
          <Grid container direction="row">
            <CustomBreadcrumb />
          </Grid>
          <Grid container spacing={1} alignItems="center">
            <Grid sx={{ display: { sm: 'none', xs: 'block' } }} item>
              <IconButton aria-label="open drawer" onClick={onDrawerToggle} edge="start">
                <MdiIcon path="menu" />
              </IconButton>
            </Grid>
          </Grid>
        </Toolbar>
      </AppBar>
    </Fragment>
  );
}
