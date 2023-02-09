///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/layout/Navigator.tsx'
// Template name: actor/src/layout/Navigator.tsx.hbs

import { useCallback } from 'react';
import {
  Divider,
  Drawer,
  DrawerProps,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  ListSubheader,
  Icon,
} from '@mui/material';
import { useTranslation } from 'react-i18next';
import { useAuth } from 'react-oidc-context';
import { usePrincipal } from '../auth';
import { Hero, Logo, useJudoNavigation, MdiIcon } from '../components';
import type { MenuItem, HeroProps, LogoProps } from '../components-api';

export interface NavigatorProps {
  items: Array<MenuItem>;
  heroProps: HeroProps;
  logoProps: LogoProps;
}

function ActionItem(props: MenuItem) {
  const { t } = useTranslation();
  const { clearNavigate } = useJudoNavigation();
  const { label, to, icon } = props;

  return (
    <ListItemButton onClick={() => to && clearNavigate(to)}>
      {icon ? (
        <ListItemIcon>
          <MdiIcon path={icon} />
        </ListItemIcon>
      ) : null}
      <ListItemText primary={t(`menuTree.${label}`, { defaultValue: label })} />
    </ListItemButton>
  );
}

export function Navigator(props: DrawerProps & NavigatorProps) {
  const { items, heroProps, logoProps, ...other } = props;
  const { t } = useTranslation();
  const { removeUser, isAuthenticated } = useAuth();
  const doLogout = useCallback(() => {
    removeUser();
  }, [isAuthenticated]);
  const { principal } = usePrincipal();

  return (
    <Drawer variant="permanent" {...other}>
      <Logo {...logoProps} />
      <Hero {...heroProps} />
      <Divider variant="middle" />
      <List component="nav">
        {items.map((item) =>
          item.items && item.items.length ? (
            <List
              component="nav"
              key={item.label}
              subheader={
                <ListSubheader component="div" id="nested-list-subheader">
                  {t(`menuTree.${item.label}`, { defaultValue: item.label })}
                </ListSubheader>
              }
            >
              {item.items.map((subItem) => (
                <ActionItem key={subItem.label} {...subItem} />
              ))}
            </List>
          ) : (
            <ActionItem key={item.label} {...item} />
          ),
        )}
      </List>
      {items.length ? <Divider variant="middle" /> : null}
      <List>
        <ListItem disablePadding>
          <ListItemButton onClick={() => doLogout()}>
            <ListItemIcon>
              <MdiIcon path="logout" />
            </ListItemIcon>
            <ListItemText primary={t('judo.security.logout', { defaultValue: 'Logout' })} />
          </ListItemButton>
        </ListItem>
      </List>
    </Drawer>
  );
}
