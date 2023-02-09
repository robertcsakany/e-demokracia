///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components-api/components/MenuTree.ts'
// Template name: actor/src/components-api/components/MenuTree.ts.hbs

export type MenuItem = {
  icon?: string;
  label: string;
  to?: string;
  items?: MenuItem[];
};

export interface MenuProps {
  items: MenuItem[];
  height?: number;
  maxWidth?: number;
  defaultExpanded?: string[];
}
