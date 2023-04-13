//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/menu-items.tsx'
// Template name: actor/src/menu-items.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/menu-items.tsx.hbs

import type { MenuItem } from './components-api';

export const menuItems: MenuItem[] = [
  {
    id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminDashboardhomeNavigationItem',
    to: 'admin/admin/dashboardhome/view/:signedIdentifier',
    icon: 'home',
    label: 'Dashboard',
    items: [],
  },
  {
    id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminUsersNavigationItem',
    to: 'admin/admin/users/table',
    icon: 'account',
    label: 'Users',
    items: [],
  },
  {
    id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupBasicDataMenu',
    icon: 'toy-brick',
    label: 'Basic data',
    items: [
      {
        id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupBasicDataMenu',
        to: 'admin/admin/categories/table',
        icon: 'file-tree',
        label: 'Categories',
      },
      {
        id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupBasicDataMenu',
        to: 'admin/admin/counties/table',
        icon: 'map',
        label: 'Counties',
      },
    ],
  },
  {
    id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupIssuesAndDebates',
    icon: 'texture',
    label: 'Issues, Debates',
    items: [
      {
        id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupIssuesAndDebates',
        to: 'admin/admin/issues/table',
        icon: 'ticket-confirmation',
        label: 'Issues',
      },
      {
        id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupIssuesAndDebates',
        to: 'admin/admin/debates/table',
        icon: 'wechat',
        label: 'Debates',
      },
    ],
  },
  {
    id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminVoteDefinitionsNavigationItem',
    to: 'admin/admin/vote_definitions/table',
    icon: 'vote',
    label: 'Votes',
    items: [],
  },
];
