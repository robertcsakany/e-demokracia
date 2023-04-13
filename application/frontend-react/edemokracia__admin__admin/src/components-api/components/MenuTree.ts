//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/components/MenuTree.ts'
// Template name: actor/src/components-api/components/MenuTree.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/components-api/components/MenuTree.ts.hbs

export type MenuItem = {
  id: string;
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
