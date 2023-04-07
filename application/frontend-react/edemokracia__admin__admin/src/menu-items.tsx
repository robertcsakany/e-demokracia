///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/menu-items.tsx'
// Template name: actor/src/menu-items.tsx.hbs

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
        icon: 'toy-brick',
        label: 'Categories',
      },
      {
        id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupBasicDataMenu',
        to: 'admin/admin/counties/table',
        icon: 'toy-brick',
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
        icon: 'texture',
        label: 'Issues',
      },
      {
        id: 'NavigationItemedemokraciaAdminAdminEdemokraciaAdminAdminNavigationControllerEdemokraciaAdminAdminMenuItemGroupIssuesAndDebates',
        to: 'admin/admin/debates/table',
        icon: 'texture',
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
