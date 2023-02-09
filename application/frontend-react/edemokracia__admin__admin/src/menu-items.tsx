///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/menu-items.tsx'
// Template name: actor/src/menu-items.tsx.hbs

import type { MenuItem } from './components-api';

export const menuItems: MenuItem[] = [
  {
    to: 'admin/admin/dashboardhome/view/:signedIdentifier',
    icon: 'home',
    label: 'Dashboard',
    items: [],
  },
  {
    to: 'admin/admin/users/table',
    icon: 'account',
    label: 'Users',
    items: [],
  },
  {
    icon: 'toy-brick',
    label: 'Basic data',
    items: [
      {
        to: 'admin/admin/categories/table',
        icon: 'toy-brick',
        label: 'Categories',
      },
      {
        to: 'admin/admin/counties/table',
        icon: 'toy-brick',
        label: 'Counties',
      },
    ],
  },
  {
    icon: 'texture',
    label: 'Issues, Debates',
    items: [
      {
        to: 'admin/admin/issues/table',
        icon: 'texture',
        label: 'Issues',
      },
      {
        to: 'admin/admin/debates/table',
        icon: 'texture',
        label: 'Debates',
      },
    ],
  },
  {
    to: 'admin/admin/vote_definitions/table',
    icon: 'vote',
    label: 'Votes',
    items: [],
  },
];
