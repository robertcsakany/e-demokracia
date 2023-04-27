//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/layout/Layout.tsx'
// Template name: actor/src/layout/Layout.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/layout/Layout.tsx.hbs

import { Outlet } from 'react-router-dom';
import { useState } from 'react';
import { Box, CssBaseline, useMediaQuery } from '@mui/material';
import type { HeroProps, LogoProps } from '../components-api';
import { theme } from '../theme';
import { MenuItem } from '../components-api';
import { Navigator } from './Navigator';
import { Footer } from './Footer';
import { Header } from './Header';

export interface LayoutProps {
  items: Array<MenuItem>;
  drawerWidth: number;
  hero: HeroProps;
  logo: LogoProps;
}

export function Layout({ items, drawerWidth, hero, logo }: LayoutProps) {
  const [mobileOpen, setMobileOpen] = useState<boolean>(false);
  const isSmUp = useMediaQuery(theme.breakpoints.up('sm'));

  const handleDrawerToggle = () => {
    setMobileOpen(!mobileOpen);
  };

  return (
    <Box sx={{ display: 'flex', minHeight: '100vh' }}>
      <CssBaseline />
      <Box component="nav" sx={{ width: { sm: drawerWidth }, flexShrink: { sm: 0 } }}>
        {isSmUp ? null : (
          <Navigator
            logoProps={logo}
            heroProps={hero}
            items={items}
            PaperProps={{ style: { width: drawerWidth } }}
            variant="temporary"
            open={mobileOpen}
            onClose={handleDrawerToggle}
          />
        )}
        <Navigator
          logoProps={logo}
          heroProps={hero}
          items={items}
          PaperProps={{ style: { width: drawerWidth } }}
          sx={{ display: { sm: 'block', xs: 'none' } }}
        />
      </Box>
      <Box id="page-layout-container" sx={{ flex: 1, display: 'flex', flexDirection: 'column' }}>
        <Header onDrawerToggle={handleDrawerToggle} />
        <Outlet />
        <Box component="footer" sx={{ p: 2 }}>
          <Footer />
        </Box>
      </Box>
    </Box>
  );
}
