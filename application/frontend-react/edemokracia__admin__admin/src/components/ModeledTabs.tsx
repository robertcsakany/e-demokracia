import type { ReactNode, SyntheticEvent } from 'react';
import { useState } from 'react';
import { Tabs, Tab, Box } from '@mui/material';
import { MdiIcon } from './MdiIcon';

export interface TabPanelProps {
  children?: ReactNode;
  index: number;
  value: number;
}

export function TabPanel(props: TabPanelProps) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`modeled-tabs-tab-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
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
  activeIndex: number;
  childTabs: ChildTabProps[];
  children: ReactNode;
}

export function ModeledTabs({ activeIndex, childTabs, children }: ModeledTabsProps) {
  const [value, setValue] = useState<number>(activeIndex);

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue);
  };

  return (
    <Box sx={{ width: '100%' }}>
      <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
        <Tabs value={value} onChange={handleChange} textColor="secondary" indicatorColor="secondary">
          {childTabs.map((c: any, index: number) => (
            <Tab
              key={c.id}
              label={c.label}
              icon={c.icon ? <MdiIcon path={c.icon} /> : ''}
              iconPosition="start"
              id={c.id}
              disabled={false}
            />
          ))}
        </Tabs>
      </Box>
      {childTabs.map((c: any, index: number) => (
        <TabPanel key={c.id} value={value} index={index}>
          {Array.isArray(children) ? children[index] : ''}
        </TabPanel>
      ))}
    </Box>
  );
}
