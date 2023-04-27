//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/ModeledTabs.tsx'
// Template name: actor/src/components/ModeledTabs.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/components/ModeledTabs.tsx.hbs

import type { ReactNode, SyntheticEvent } from 'react';
import { useState } from 'react';
import { Tabs, Tab, Box } from '@mui/material';
import { MdiIcon } from './MdiIcon';

export interface TabPanelProps {
  id: string;
  children?: ReactNode;
  index: number;
  value: number;
}

export function TabPanel(props: TabPanelProps) {
  const { id, children, value, index, ...other } = props;

  return (
    <div role="tabpanel" hidden={value !== index} id={id} aria-labelledby={`simple-tab-${index}`} {...other}>
      {value === index && <Box sx={{ p: 3 }}>{children}</Box>}
    </div>
  );
}

export interface ChildTabProps {
  id: string;
  name: string;
  label?: string;
  icon?: string;
}

export interface ModeledTabsProps {
  id: string;
  activeIndex: number;
  childTabs: ChildTabProps[];
  children: ReactNode;
}

export function ModeledTabs({ id, activeIndex, childTabs, children }: ModeledTabsProps) {
  const [value, setValue] = useState<number>(activeIndex);

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue);
  };

  return (
    <Box id={id} sx={{ width: '100%' }}>
      <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
        <Tabs value={value} onChange={handleChange} textColor="secondary" indicatorColor="secondary">
          {childTabs.map((c: any, index: number) => (
            <Tab
              id={`${c.id}-tab`}
              key={c.id}
              label={c.label}
              icon={c.icon ? <MdiIcon path={c.icon} /> : ''}
              iconPosition="start"
              disabled={false}
            />
          ))}
        </Tabs>
      </Box>
      {childTabs.map((c: any, index: number) => (
        <TabPanel id={`${c.id}-tab-panel`} key={c.id} value={value} index={index}>
          {Array.isArray(children) ? children[index] : ''}
        </TabPanel>
      ))}
    </Box>
  );
}
